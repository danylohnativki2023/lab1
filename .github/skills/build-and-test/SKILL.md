# Skill: build-and-test

## Purpose
Create build/run scripts, a test function, and a unit test.

## Inputs
- Source code from the previous step.
- Testing framework: `pytest`.

## Expected Output
- `ci.sh` (Linux/macOS) and `ci.bat` (Windows) scripts created to configure the virtual environment (`venv`), install dependencies, and run code.
- A test file created (e.g., `tests/test_main.py` with a `BasicAddition` class).

## Validation
- Configuration scripts exist.
- Unit tests pass successfully during local execution.

## Error Scenario
If tests fail, the agent must analyze the error log and fix the test or source code.