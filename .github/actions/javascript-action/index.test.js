import process from 'process'
import cp from 'child_process'
import path from 'path'
import { fileURLToPath } from 'url'

import wait from './src/wait.js'

const __dirname = path.dirname(fileURLToPath(import.meta.url))

test('throws invalid number', async () => {
  await expect(wait('foo')).rejects.toThrow('milliseconds not a number');
});

test('wait 500 ms', async () => {
  const start = new Date()
  await wait(500)
  const end = new Date()
  var delta = Math.abs(end - start)
  expect(delta).toBeGreaterThanOrEqual(500)
});

// shows how the runner will run a javascript action with env / stdout protocol
test('test runs', () => {
  process.env['INPUT_MILLISECONDS'] = 500
  const ip = path.join(__dirname, 'index.js')
  console.log(cp.execSync(`node ${ip}`, {env: process.env}).toString())
})