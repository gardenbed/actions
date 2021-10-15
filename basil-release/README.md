# Basil Build

This action is used for publishing GitHub releases created by Basil CLI.

## Inputs

### `artifacts`

A space-separated list of artifacts for uploading to the release.
This is an optional input parameter.

## Outputs

### `release_tag`

The Git tag for the published release.

### `release_url`

The GitHub page URL for the published release.

## Example Usages

```yaml
name: Example
on:
  push:
    branches: [main]
jobs:
  release:
    name: Release
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Basil Release
        uses: gardenbed/actions/basil-release@main
```
