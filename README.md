<!--
DO NOT EDIT. This README is generated by readme generator.
Generated using cmd './github-cicd-experiments readme update'
and config file which can be found here
./cmd/github-cicd-experiments/internal/assets/readme.yml
Generated at: 2021-08-23 08:27:12.257860844 +0000 UTC
-->

# GitHub CI/CD Experiments

> # :loudspeaker: Attention!
> Code, scripts, configurations and examples in this repository are experimental so use it on your own risk!

Experiments of GitHub actions, workflows and other automation features.
Purpose of this repo is experiment with different automation features to
have examples for optimized workflows.

# Table of Contents

- [GitHub provided automations](#github-provided-automations)
- [About this repo](#about-this-repo)
  - [why this repo](#why-this-repo)
  - [Contributing](#contributing)

# GitHub provided automations

Following automations require minimal configuration and are provided by GitHub.
Some automatioons may be available only for public repos or some only for private.

<details>
<summary>Github Issues</summary>

**Description**

> Configure issue templates for your repo and automate issue realated tasks.
> E.g run workflows when some condition in issues is met. add comments, labels etc.


**Resources**

- [github-issue-templates]
- [.github/workflows/github-issue-open.yml](.github/workflows/github-issue-open.yml)
- https://github.com/mkungla/github-cicd-experiments/issues/new/choose
- https://github.com/actions/github-script
- https://github.com/features/issues/
- https://docs.github.com/en/issues
</details>

[![Open issues](https://img.shields.io/github/issues/mkungla/github-cicd-experiments)](https://github.com/mkungla/github-cicd-experiments/issues)

<details>
<summary>Pull Requests</summary>

**Description**

> Configure pull request templates and automations for your repo


**Resources**

- [github-issue-templates]
- [.github/workflows/github-pr-open.yml](.github/workflows/github-pr-open.yml)
</details>

<details>
<summary>Various Repo Community Guidelines and configs</summary>

**Description**

> Configure things like Contributing Guidelines
> Add funding links and Security Policy to your repo
> Contributor Covenant Code of Conduct etc.


**Resources**

- [contributing-gl]
- [coc]
- [repo-funding]
- [CODEOWNERS](.github/CODEOWNERS)
- [Security Policy](.github/SECURITY.md)
</details>

[![LICENSE](https://img.shields.io/github/license/mkungla/github-cicd-experiments)](https://github.com/mkungla/github-cicd-experiments/blob/main/LICENSE)

<details>
<summary>GitHub Pages</summary>

**Description**

> GitHub Pages configuration

</details>

<details>
<summary>Press `.` on any repo</summary>

**Description**

> Press the `.` key on any repo or swap .com with .dev on any GitHub repo to be taken directly into a fully fledged VS Code environment.


**Resources**

- [github.com/github/dev][repo-github-dev]
</details>

<details>
<summary>Repo based action scripts</summary>

**Description**

> Create repo local action scripts.
> Example how readme file of this repo is udpated.


**Resources**

- [.github/actions-scripts/commit.js](.github/actions-scripts/commit.js)
- [.github/workflows/readme-update.yml](.github/workflows/readme-update.yml)
</details>

[![Update README](https://github.com/mkungla/github-cicd-experiments/actions/workflows/readme-update.yml/badge.svg)](https://github.com/mkungla/github-cicd-experiments/actions/workflows/readme-update.yml)

<details>
<summary>CodeQL Analysis</summary>

**Description**

> CodeQL is the analysis engine used by developers to automate security checks, and by
> security researchers to perform variant analysis.


**Resources**

- [.github/workflows/github-codeql-analysis.yml](.github/workflows/github-codeql-analysis.yml)
</details>

[![CodeQL](https://github.com/mkungla/github-cicd-experiments/actions/workflows/github-codeql-analysis.yml/badge.svg?branch=main)][github-codeql-analysis]

# About this repo

## why this repo

This repo is for experimenting different automations you can setup in GitHub.
At this point there is no other purpose for this repo however it may provide
common temlpates in the future.

e.g.
- Showcase best practices
- Have optimized workflows which run fast!


## Contributing

Everybody are welcome to contribute and add experiments or show cases to this repo.
Read [Contributing Guidelines][contributing-gl] and [Contributor Covenant Code of Conduct][coc] before submiting a pr.


<!-- LINKS -->
[repo-github-dev]: https://github.com/github/dev "github.com/github/dev"
[git-repo]: https://github.com/mkungla/github-cicd-experiments "GitHub CI/CD Experiments repository"
[repo-funding]: .github/FUNDING.yml "Repo funding config"
[coc]: .github/CODE_OF_CONDUCT.md "Contributor Covenant Code of Conduct"
[contributing-gl]: .github/CONTRIBUTING.md "Contributing Guidelines"
[github-issue-templates]: .github/ISSUE_TEMPLATE "Issue templates directory"
[github-pr-templates]: .github/PULL_REQUEST_TEMPLATE "Pull Request templates directory"
[github-codeql-analysis]: https://github.com/mkungla/github-cicd-experiments/actions/workflows/github-codeql-analysis.yml
