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

1. **Clone the repository**:
   ```bash
   git clone <repository-url>
   cd {{cookiecutter.repo_name}}
   ```

2. **Set up Python environment**:
   ```bash
   # Install and pin Python version
   uv python install 3.11
   uv python pin 3.11

   # Create and activate virtual environment
   uv venv
   uv sync --all-extras
   source .venv/bin/activate  # On Windows: .venv\Scripts\activate
   ```

## Development Workflow

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
uv sync
```

### Project Structure


{{cookiecutter.repo_name}}/
├── src/
│   └── {{cookiecutter.project_name}}/
│       ├── __init__.py
│       └── main.py
├── tests/
│   └── test_main.py
├── pyproject.toml
├── README.md
└── .gitignore

### Development Tools

- **Code Formatting**: `uv run black .`
- **Type Checking**: `uv run mypy .`
- **Linting**: `uv run ruff check .`
- **Testing**: `uv run pytest`

## Deployment

### Local Development

1. **Run the application**:
   ```bash
   uv run python -m {{cookiecutter.project_name}}
   ```

2. **Run tests**:
   ```bash
   uv run pytest
   ```

## Continuous Integration

This project includes GitHub Actions workflows for:
- Automated testing
- Code quality checks
- Package building
- Deployment automation

Configuration can be found in `.github/workflows/`.



## Best Practices

1. **Code Style**
   - Follow PEP 8 guidelines
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
   rm -rf .venv
   uv venv
   uv sync --all-extras
   ```

2. **Dependency Conflicts**
   ```bash
   # Update all dependencies
   uv sync --upgrade
   ```