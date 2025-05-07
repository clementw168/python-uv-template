#!/bin/bash

# run tests in unit_tests
uv run coverage run --source={{cookiecutter.project_name}} -m pytest tests/unit_tests #--ignore-errors
rm -rf coverage
uv run coverage html -d coverage/htmlcov
uv run coverage report | tee coverage/coverage.txt