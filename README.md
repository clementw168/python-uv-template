# Python Project Template with UV

A modern, opinionated template for Python projects using UV as the package manager. This template provides a solid foundation for building Python applications with best practices and modern tooling.

## Features

- 🚀 UV-based dependency management for lightning-fast package installation
- 📦 Modern project structure following Python best practices
- 🛠️ Pre-configured development tools and workflows
- 📚 Comprehensive documentation and examples
- 🔧 Easy project initialization with cookiecutter

## Quick Start

### Prerequisites

- Python 3.11 or higher
- Git
- A GitHub account (for repository creation)

### Creating a New Project

1. **Install cookiecutter**:
  [`cookiecutter`](https://cookiecutter.readthedocs.io/en/latest/) is a tool that allows you to create projects from templates.
   ```bash
   pip install cookiecutter
   ```

2. **Generate your project**:
   ```bash
   cookiecutter https://github.com/clementw168/python-uv-template
   ```

3. **Follow the prompts**:
   - `repo_name`: Your repository name
   - `project_name`: Your Python package name (follow PEP-8 naming conventions)
   - `description`: Project description
   - `author`: Your name
   - `author_email`: Your email address

4. **Initialize Git repository**:
   ```bash
   cd your-project-name
   git init
   git remote add origin git@github.com:your-username/your-project.git
   git add .
   git commit -m "Initial commit"
   git push -u origin master
   ```

## Project Structure

your-project/
├── src/
│ └── your_package/
│ └── main.py
├── tests/
│ └── test_main.py
├── pyproject.toml
├── README.md
└── .gitignore

## Development

More details can be found in the created project's README.md file.


### Installing dependencies

```bash
uv add <package_name>
```

### Running scripts

```bash
uv run <script_name>
```


### Running Tests

```bash
pytest
```

### Code Quality

- Format code: `uv run black .`
- Check types: `uv run mypy .`
- Lint code: `uv run ruff check .`

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Support

For questions and support, please open an issue in the GitHub repository.

## Acknowledgments

- [UV](https://github.com/astral-sh/uv) for the blazing-fast Python package manager
- [Cookiecutter](https://cookiecutter.readthedocs.io/) for the project templating
