# Ruby Lint Action

This action runs static code analysis for Ruby codes for errors, warnings, and styling issues.
This action uses [RuboCop](https://rubocop.org).

## Inputs

### `path`

The path of the directory containing `*.rb` files.
The default path is `.`.

## Example Usages

```yaml
name: Example
on: [push]
jobs:
  lint:
    name: Lint
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Ruby Lint
        uses: gardenbed/actions/ruby-lint@main
```

```yaml
name: Example
on: [push]
jobs:
  lint:
    name: Lint
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Ruby Lint
        uses: gardenbed/actions/ruby-lint@main
        with:
          path: ./project
```

```yaml
name: Example
on: [push]
jobs:
  lint:
    name: Lint
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Ruby Lint
        uses: gardenbed/actions/ruby-lint@main
        with:
          args: --auto-correct
```
