# Python Project Template with UV

A modern, opinionated template for Python projects using UV as the package manager. This template provides a solid foundation for building Python applications with best practices and modern tooling.

## Features

- 🚀 UV-based dependency management for lightning-fast package installation
- 📦 Modern project structure following Python best practices for packaging
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
   - `project_name`: Your Python package name (by default, the repo name with underscores instead of hyphens)
   - `description`: Project description
   - `author`: Your name
   - `author_email`: Your email address

4. **Initialize Git repository**:
   Create your repository on Github ([Link](https://github.com/new)) with the same name as the repo_name. The initialized repository should be empty to avoid conflicts.

   Then, in the terminal, navigate to the project directory and initialize the git repository:
   ```bash
   cd <repo_name>
   git init
   git add .
   git commit -m "Initial commit"
   git remote add origin git@github.com:your-username/<repo_name>.git
   git push -u origin main
   ```

   If you are using HTTPS, you can replace the SSH authentication method by using HTTPS:
   ```bash
   git config --local user.name <your_username>
   git config --local user.email <your_email>
   git remote set-url origin https://<your_username>@github.com/<your_username>/<repo_name>.git
   ```

   If it worked, you should be able to see your repository on Github!

Trouble shooting:
- `Permission denied (publickey). fatal: Could not read from remote repository.`

  Solution:
  This is likely due to the SSH key not being correctly configured. It can mean that the SSH key is not added to the SSH agent or the SSH key does not correspond to the Github account.

  You can replace the SSH authentication method by using HTTPS:
  ```bash
  git config --local user.name <your_username>
  git config --local user.email <your_email>
  git remote set-url origin https://<your_username>@github.com/<your_username>/<repo_name>.git
  ```

- `error: src refspec master does not match any
error: failed to push some refs to 'github.com:clementw168/test-repo.git'`

  Solution:
  This is likely due to the branch name being incorrect. By default Github uses `main` as the default branch name.

  ```bash
  git push -u origin main
  ```

- `remote: Repository not found.
fatal: repository 'https://github.com/<your_username>/<repo_name>.git/' not found`

  Solution:
  This is likely due to the repository not being found. It can mean that the repository is not created on Github or the URL is incorrect.

  Make sure you have created the repository on Github and the URL is correct.

  ```bash
  git remote set-url origin https://github.com/<your_username>/<repo_name>.git
  ```

## Project Structure

```
<repo_name>/
├── src/
│ └── <project_name>/
│   └── hello_world.py
├── tests/
| └── src/
|   └── <project_name>/
|     └── test_hello_world.py
├── pyproject.toml
├── README.md
└── .gitignore
```

## Development

More details can be found in the created project's README.md file.


### Installing dependencies

The first time you run the project, you need to install the dependencies:

```bash
uv sync --all-extras
```

You can add dependencies to the project by running:

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
