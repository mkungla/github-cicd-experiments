#!/bin/bash

# Why bash? Just for fun!
# [-o] prevent errors in a pipeline from being masked.
# [-u] fail if found references to any variable which was not previously defined
set -euo pipefail


################################################################################
# INIT
################################################################################
GHCICD_PATH_SRC=$(dirname "$(realpath "${BASH_SOURCE[0]}")")

shell="$(ps c -p "$PPID" -o 'ucomm=' 2>/dev/null || true)"
shell="${shell##-}"
shell="${shell%% *}"
shell="$(basename "${shell:-$SHELL}")"

if [ $shell != "bash" ]; then
  echo "only bash is supported"
  exit 1
fi

# shellcheck disable=SC1091
source "$GHCICD_PATH_SRC/config.sh"
for src in "$GHCICD_PATH_LIB"/*; do
  case "$src" in
    *.sh)
    # shellcheck disable=SC1090
    source "$src"
    ;;
  esac
done

main() {
  local cmd=${1/:/-}
  local cmdfile="$GHCICD_PATH_CMD/$cmd.sh"
  if [[ $cmd == "help" ]]; then
      ghcicd_help
      ghcicd_exit 0
  fi

  for cmd_path in "$GHCICD_PATH_CMD"/*; do
    # shellcheck disable=SC1090
    source "$cmd_path"
  done

  if ghcicd_file_exists "$cmdfile"; then
    local subbase="${2-""}"
    if [[ $subbase == "help" ]]; then
      ghcicd_help_header
      ghcicd_"${1}"_help
      ghcicd_help_footer
      ghcicd_exit 0
    fi

    if [[ -n "$subbase" ]]; then
      ghcicd_"${1}"_"${subbase}" "${@:3}"
    else
      ghcicd_"${1}"_main "${@:2}"
    fi
  else
    ghcicd_log_err "command ($1) not found"
    ghcicd_log_info "use: ghcicd.sh --help"
  fi
  ghcicd_exit 1
}

################################################################################
# Parse arguments and flags
################################################################################
ARGS=()
while [ "$#" -gt 0 ]; do
  case "$1" in
    -v | --verbose)
      export GHCICD_VERBOSE=1
      shift 1;;
    -h | --help)
      ghcicd_help
      ghcicd_exit 0;;
    -*)
      ghcicd_log_err "unknown option: $1";
      ghcicd_exit 1;;
    *)
    ARGS+=("$1")
    shift 1;;
  esac
done
if [ ${#ARGS[@]} -eq 0 ]; then
  ARGS+=("help")
fi

main "${ARGS[@]}"
