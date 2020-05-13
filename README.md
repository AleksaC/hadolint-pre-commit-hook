# hadolint-pre-commit
[pre-commit](https://pre-commit.com/) hook for linting dockerfiles using [hadolint](https://github.com/hadolint/hadolint/)

Currently only works on Linux and supports hadolint v1.17.6.

## Getting started
Example `.pre-commit-config.yaml` with rules `DL3025` and `DL3018` excluded.
```yaml
repos:
  - repo: /home/aleksa/Desktop/hadolint-pre-commit
    rev: master
    hooks:
      - id: hadolint
        args: [--ignore, DL3025, --ignore, DL3018]
```
