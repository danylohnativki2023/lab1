# Skill: github-actions

## Purpose
Create a CI workflow file `.github/workflows/ci.yml` with a testing matrix for different OS.

## Inputs
- `ci.sh` and `ci.bat` scripts.

## Expected Output
- `ci.yml` created with a single job using a matrix for `ubuntu-latest`, `windows-latest`, and `macos-latest`.
- The workflow checks out the code, runs the corresponding `ci.bat` (for Windows) or `ci.sh` (for Linux/macOS) script, and executes `pytest`.
- The workflow does not contain exposed secrets or tokens.

## Validation
- Valid YAML syntax.
- OS matrix configured correctly.

## Error Scenario
YAML syntax error or incorrect script execution commands.