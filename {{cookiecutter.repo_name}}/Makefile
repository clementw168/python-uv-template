PROJECT_NAME={{cookiecutter.repo_name}}
PYTHON_VERSION=`cat .python-version 2>/dev/null || echo 3.11`

check:
	uv run ruff check .
	uv run mypy .
	uv run pyright


test:
	uv run pytest


test-coverage:
	uv run coverage run --source=src/{{cookiecutter.project_name}} -m pytest tests/ && \
	rm -rf coverage && \
	uv run coverage html -d coverage/htmlcov && \
	uv run coverage report | tee coverage/coverage.txt


build:
	docker build --build-arg PYTHON_VERSION=$(PYTHON_VERSION) -t $(PROJECT_NAME) .
	docker run --rm -v `pwd`:/src $(PROJECT_NAME)


