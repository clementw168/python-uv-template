PROJECT_NAME={{cookiecutter.repo_name}}
PYTHON_VERSION=`cat .python-version 2>/dev/null || echo 3.11`

test-coverage:
	uv run coverage run --source={{cookiecutter.project_name}} -m pytest tests/unit_tests #--ignore-errors && \
	rm -rf coverage && \
	uv run coverage html -d coverage/htmlcov && \
	uv run coverage report | tee coverage/coverage.txt

check:
	ruff check .
	mypy .
	pyright

build:
	docker build --build-arg PYTHON_VERSION=$(PYTHON_VERSION) -t $(PROJECT_NAME) .
	docker run --rm -v `pwd`:/src $(PROJECT_NAME)


