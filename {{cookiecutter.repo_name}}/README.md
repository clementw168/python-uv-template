# {{cookiecutter.project_name}}

{{cookiecutter.description}}

## Overview

This project is built using modern Python development practices and tools, with a focus on maintainability, scalability, and developer experience.

## Quick Start Guide

### Prerequisites

- Python 3.11 or higher
- UV package manager
- Git

### Initial Setup

1. **Clone this repository**:
   ```bash
   git clone https://github.com/<username>/{{cookiecutter.repo_name}}.git
   cd {{cookiecutter.repo_name}}
   ```

2. **Install UV**:
   For Linux/MacOS:
   ```bash
   curl -LsSf https://astral.sh/uv/install.sh | sh
   ```
   For other platforms, please refer to the [UV installation guide](https://docs.astral.sh/uv/getting-started/installation/).


3. **Set up Python environment**:
   ```bash
   # Install and pin Python version
   uv python install 3.11
   uv python pin 3.11

   # Create and activate virtual environment
   uv venv
   uv sync --all-extras
   ```

## Development Workflow

### Running a Python script

To run a Python script, you can use the following command:
```bash
uv run src/{{cookiecutter.project_name}}/hello_world.py
```
Feel free to take a tour on UV's [documentation](https://docs.astral.sh/uv/getting-started/features/#scripts) for more details.

### Package Management

UV is our package manager of choice, offering:
- Lightning-fast package installation
- Automatic dependency resolution
- Virtual environment management
- Python version management

**Adding new dependencies**:
```bash
uv add <package-name>
```

**Updating dependencies**:
```bash
uv sync --all-extras
```

**Troubleshooting UV**:

If UV is encountering dependencies issues, you can try to delete the `uv.lock`file, delete the `.venv` folder and try to run `uv sync --all-extras` again.

If you encounter issues with UV, please refer to the [documentation](https://docs.astral.sh/uv/).



### Project Structure

```
<repo_name>/
├── .github/
│   └── workflows/
├── scripts/
├── src/
│ └── <project_name>/
│   └── hello_world.py
├── tests/
| └── src/
|   └── <project_name>/
|     └── test_hello_world.py
├── .gitignore
├── .python-version
├── Dockerfile
├── Makefile
├── pyproject.toml
└── README.md
```

The structure follows the [recommended structure for packaging in Python](https://packaging.python.org/en/latest/tutorials/packaging-projects/).


### Development Tools

Note that all Python development tools are configured in the `pyproject.toml` file.

- **Code Formatting**: `uv run black .`
- **Type Checking**: `uv run mypy .`
- **Linting**: `uv run ruff check .`

These are pre-configured in the Makefile. Run all of them with
```bash
make check
```


### Testing

Testing is handled with `pytest`. [Unit tests](https://docs.pytest.org/en/stable/how-to/unittest.html) should be placed in the `tests/src/<project_name>/` folder. 

```bash
make test
# or
# uv run pytest
```

You can also get a full coverage report with
```bash
make test-coverage
```

This will generate a `coverage` folder which contains the HTML report and a text report. The HTML report can be opened in a browser to see the coverage details.

### Continuous Integration and Continuous Deployment (CI/CD)

CI/CD is handled with GitHub Actions. It allows you to test your code automatically and deploy it to a cloud service.

By default, this project includes GitHub Actions workflows for:
- Code quality checks
- Automated testing

Configuration can be found in `.github/workflows/`.

To avoid triggering the CI/CD by default on the `main` branch, the template uses the `main_` branch as a default branch. Change it to `main` if you want to trigger the CI/CD by default on the `main` branch.

### Local packaging

To build the package, run
```bash
make build
```

This will build the package inside a Docker container. The build package can be found in the `dist/` folder.


### Scripting

Bash scripts can be placed in the `scripts/` folder. Here is an example of a script:
```
scripts/script_demo.sh
```

You can also use the `Makefile` to create new `make` commands.

## Best Practices

1. **Code Style**
   - Follow [PEP 8 guidelines](https://pep8.org/)
   - Use type hints
   - Write docstrings for all public functions

2. **Git Workflow**
   - Create feature branches
   - Write meaningful commit messages
   - Keep PRs focused and small

3. **Testing**
   - Write unit tests for new features
   - Maintain test coverage
   - Use pytest fixtures effectively

## Troubleshooting

Common issues and their solutions:

1. **Virtual Environment Issues**
   ```bash
   # Recreate virtual environment
   rm uv.lock
   rm -rf .venv
   uv venv
   uv sync --all-extras
   ```

2. **Dependency Conflicts**
   ```bash
   # Update all dependencies
   uv sync --upgrade
   ```