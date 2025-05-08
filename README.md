# 🐍 Python UV Project Template

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Powered by UV](https://img.shields.io/badge/Powered%20by-UV-%2300C2D7)](https://github.com/astral-sh/uv)
[![Python](https://img.shields.io/badge/python-3.11%2B-blue)](https://www.python.org/downloads/)
[![GitHub Template](https://img.shields.io/badge/template-available-brightgreen?logo=github)](https://github.com/clementw168/python-uv-template/generate)
[![CodeQL](https://github.com/clementw168/python-uv-template/actions/workflows/codeql.yml/badge.svg)](https://github.com/clementw168/python-uv-template/actions)
[![Open Issues](https://img.shields.io/github/issues/clementw168/python-uv-template)](https://github.com/clementw168/python-uv-template/issues)
[![Cookiecutter](https://img.shields.io/badge/built%20with-cookiecutter-ff69b4.svg)](https://cookiecutter.readthedocs.io/en/latest/)


A **modern, opinionated Cookiecutter template** for Python projects, featuring [UV](https://github.com/astral-sh/uv) as the package manager. Get up and running with best practices, lightning-fast dependency management, and a developer experience that scales from prototype to production.

---

## 🚦 Why Use This Template?

- **Fast**: UV handles Python versions, virtualenvs, and dependencies at blazing speed.
- **Best Practices**: Structuring, testing, linting, and type-checking are built in from the start.
- **Ready for Automation**: GitHub Actions CI configured out of the box.
- **Easy Onboarding**: Start new projects in seconds with [Cookiecutter](https://cookiecutter.readthedocs.io/en/latest/).
- **Comprehensive Docs**: Every generated repo contains extensive, actionable documentation so your team can focus on building, not setup.

---

## ✨ Features

- **🚀 UV-based dependency & environment management**
- **🗂️ Modern Python packaging layout**
- **🧪 Pytest-based testing with coverage**
- **🛠️ Black, Ruff, and MyPy for code quality**
- **🤖 GitHub Actions for CI (lint, type-check, test, security scan)**
- **🐳 Dockerfile and Makefile for repeatable builds**
- **📚 Beautiful, thorough README in every project**
- **⚡ Zero cruft, batteries included**

---

## 🏁 Quick Start

### 1. Install Cookiecutter

```bash
pip install cookiecutter
```

### 2. Generate a new project

```bash
cookiecutter https://github.com/clementw168/python-uv-template
```
Follow the prompts to name your project and fill in metadata. 
For multiple authors, you can add other authors in the generated `pyproject.toml` file later.

### 3. Initialize Git repository

Create a [new repository](https://github.com/new) on GitHub (empty, no README or .gitignore), then:

```bash
cd <repo_name>
git init
git add .
git commit -m "Initial commit"
git remote add origin git@github.com:<your_username>/<repo_name>.git
git push -u origin main
```

*Or use HTTPS if you prefer:*

```bash
cd <repo_name>
git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/<your_username>/<repo_name>.git
git push -u origin main
```

## 🚑 Troubleshooting

Having trouble setting up your repository or pushing to GitHub?  
Check out our [TROUBLESHOOTING.md](TROUBLESHOOTING.md) for solutions to common Git and setup errors.


## 🏗️ Generated Project Structure

```
<repo_name>/
├── src/                  # Python package source code
├── tests/                # Tests, mirroring package structure
├── scripts/              # Bash helper scripts
├── .github/workflows/    # GitHub Actions CI
├── Dockerfile            # For containerized builds
├── Makefile              # Common dev tasks
├── pyproject.toml        # Unified Python project config
├── README.md             # Usage and development guide
└── .gitignore
```
…and more! See the generated `README.md` for complete usage and workflow details.

## 🧑‍💻 Developer Experience
- One command setup: `uv sync --all-extras`
- Dev tools ready: Format, lint, type-check, and test with `make check` or individual commands.
- CI/CD: Ship with confidence using pre-built GitHub Actions.
- Extendable: Add pre-commit, deployment, or more with minimal friction.


## 🤲 Contributing
Pull requests and issues are welcome! Please open an issue if you want to suggest improvements or report problems with the template.

## 📝 License

MIT License. See [LICENSE](LICENSE) for details.

## 📧 Support

For questions, please open an [issue](https://github.com/clementw168/python-uv-template/issues).


## 🔮 Future Improvements

We’re always looking to make this template better! Planned features and enhancements include:

- **Workflows**
  - Add a CI/CD workflow for deployment to PyPI
  - Automated versioning and changelog generation
  - GitHub release creation
  - Matrix testing for multiple Python versions
  - Dependabot configuration for automated dependency updates

- **Environment Configuration**
  - Pre-commit hooks for linting and type checking

Have an idea or want to contribute? [Open an issue](https://github.com/clementw168/python-uv-template/issues) or submit a pull request!

## 🙏 Thanks & Acknowledgments

- [UV](https://github.com/astral-sh/uv)
- [Cookiecutter](https://cookiecutter.readthedocs.io/)
- [Pytest](https://docs.pytest.org/)
- [Black](https://github.com/psf/black)
- [Ruff](https://github.com/astral-sh/ruff)
- [Mypy](https://github.com/python/mypy)

---

> For **full project workflow and day-to-day commands**,
> check the [`README.md`]({{cookiecutter.repo_name}}/README.md) inside every generated project.

---
