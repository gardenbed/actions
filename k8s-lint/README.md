# Linting Action

This action runs linters for Kubernetes YAML resource files and reports any issues.
This action uses the following tools:

  - [kubeval](https://github.com/instrumenta/kubeval/)
  - [kube-score](https://github.com/zegl/kube-score)

## Inputs

### `path`

The path to a directory or file that contains shell script(s).

### `enable_kubeval`

Whether or not to run kubeval on YAML files.
The default value for this input is `true`.

Kubeval is a tool for validating a Kubernetes YAML or JSON configuration file.
It does so using schemas generated from the Kubernetes OpenAPI specification, and therefore can validate schemas for multiple versions of Kubernetes.

### `enable_kubescore`

Whether or not to run kube-score on YAML files.
The default value for this input is `true`.

Kube-score analyzes YAML manifests and scores them against in-built checks.
These checks are selected based on security recommendations and best practices, such as:

  - Running containers as a non-root user.
  - Specifying health checks for pods.
  - Defining resource requests and limits.

The result of a check can be *OK*, *WARNING*, or *CRITICAL*.

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
      - name: Linting Resources
        uses: gardenbed/actions/k8s-lint@main
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
      - name: Linting Resources
        uses: gardenbed/actions/k8s-lint@main
        with:
          path: ./kubernetes
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
      - name: Linting Resources
        uses: gardenbed/actions/k8s-lint@main
        with:
          enable_kubeval: 'false'
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
      - name: Linting Resources
        uses: gardenbed/actions/k8s-lint@main
        with:
          enable_kubescore: 'false'
```
