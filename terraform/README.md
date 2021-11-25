# Terraform

This is the action for [HashiCorp](https://www.hashicorp.com) [Terraform](https://www.terraform.io).

## Inputs

### `path`

The path to the Terraform project.

## Example Usages

```yaml
name: Example
on: [push]
jobs:
  terraform:
    name: Terraform
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Validate
        uses: gardenbed/actions/terraform@main
        with:
          args: validate
```

```yaml
name: Example
on: [push]
jobs:
  terraform:
    name: Terraform
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Validate
        uses: gardenbed/actions/terraform@main
        with:
          path: ./project
          args: validate
```
