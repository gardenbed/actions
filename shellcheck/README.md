# ShellCheck Action

This action runs linting for shell scripts and finds possible issues and errors.
This action uses [ShellCheck](https://github.com/koalaman/shellcheck).

## Inputs

### `path`

The path to a directory or file that contains shell script(s).

## Example Usages

```yaml
name: Example
on: [push]
jobs:
  lint:
    name: Lint Scripts
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: ShellCheck
        uses: gardenbed/actions/shellcheck@main
```

```yaml
name: Example
on: [push]
jobs:
  lint:
    name: Lint Scripts
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: ShellCheck
        uses: gardenbed/actions/shellcheck@main
        with:
          path: ./scripts
```
