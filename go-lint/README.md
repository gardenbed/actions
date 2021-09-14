# Go Lint Action

This action runs static code analysis for Go codes for errors, warnings, and linting issues.
This action uses [GolangCI-Lint](https://github.com/golangci/golangci-lint).

Default arguments for running `golangci-lint` command are `run --new --deadline=2m`.
You can change the default arguments using `with.args` key.

## Inputs

### `path`

The path of the directory containing `*.go` files.
The default path is `./...`.

### `timeout`

The timeout for total work. The default value is `2m` (two minutes).

### `new_changes`

If set to `true`, only new lines of codes (added or changed) will be checked.
The default value for this input is `true`.

For more information about this option,
please take a look at `golangci` [help](https://github.com/golangci/golangci-lint#command-line-options).

## Example Usages

```yaml
name: Example
on: [push]
jobs:
  lint:
    name: Linting
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Go Lint
        uses: gardenbed/actions/go-lint@main
```

```yaml
name: Example
on: [push]
jobs:
  lint:
    name: Linting
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Go Lint
        uses: gardenbed/actions/go-lint@main
        with:
          path: ./project
```

```yaml
name: Example
on: [push]
jobs:
  lint:
    name: Linting
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Go Lint
        uses: gardenbed/actions/go-lint@main
        with:
          args: run ./project
```
