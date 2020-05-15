# hadolint-pre-commit
[pre-commit](https://pre-commit.com/) hook for linting dockerfiles using [hadolint](https://github.com/hadolint/hadolint/)

Currently uses hadolint v1.17.6. To use another version look for it in the past
revisions, or fork this repo and change it yourself.

Since it's downloading the hadolint binary the hook may be slow on the first run,
or after cleaning the pre-commit cache.

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
