default: build-image

PROJECT_NAME={{cookiecutter.repo_name}}
PYTHON_VERSION=`cat .python-version 2>/dev/null || echo 3.11`
TEST_DOCKER_IMAGE={{cookiecutter.repo_name}}-test

run-test:
	docker build --build-arg PYTHON_VERSION=$(PYTHON_VERSION) -t $(TEST_DOCKER_IMAGE) -f docker/build-package/Dockerfile .
	mkdir -p coverage
	docker run --rm \
		-v `pwd`/coverage:/src/coverage $(TEST_DOCKER_IMAGE)

check:
	ruff check .
	mypy .
	pyright
