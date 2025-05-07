ARG PYTHON_VERSION=3.11
FROM python:${PYTHON_VERSION}-slim-buster

RUN apt-get update && \
    apt-get -y install git gcc g++ && \
    apt-get clean

WORKDIR /src

COPY ./{{cookiecutter.project_name}} ./{{cookiecutter.project_name}}
COPY ./tests ./tests
COPY .python-version .python-version
COPY pyproject.toml pyproject.toml
COPY uv.lock uv.lock
COPY README.md README.md


# Install UV and the project dependencies
RUN pip3 install uv && \
    uv venv && \
    uv sync --all-extras && \
    echo "Installation completed successfully."


CMD ./tests/coverage_test.sh