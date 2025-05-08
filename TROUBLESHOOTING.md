# 🛠️ Troubleshooting Guide

Welcome to the troubleshooting guide for the Python UV Project Template!  
This document addresses some of the most common issues you may encounter when initializing your project repository, especially when working with Git and GitHub.

If you run into an error not listed here, feel free to [open an issue](https://github.com/clementw168/python-uv-template/issues) or consult the [official GitHub documentation](https://docs.github.com/en/get-started/quickstart).

---

## 🔑 Permission denied (publickey). fatal: Could not read from remote repository.

**What it means:**  
Your SSH key is either not configured, not added to your SSH agent, or does not match the one associated with your GitHub account.

**How to fix:**
- Ensure your SSH key is added to your SSH agent and registered with GitHub ([instructions](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)).
- Alternatively, you can switch your remote to HTTPS authentication:

```bash
git config --local user.name <your_username>
git config --local user.email <your_email>
git remote set-url origin https://<your_username>@github.com/<your_username>/<repo_name>.git
```

---

## 🏷️ error: src refspec master does not match any / error: failed to push some refs to 'github.com:...'

**What it means:**  
This usually happens when you try to push to a branch (`master`) that doesn't exist. By default, GitHub now names the default branch `main`.

**How to fix:**

```bash
git push -u origin main
```
Make sure your local branch is called `main` (not `master`).

---

## ❓ remote: Repository not found. fatal: repository 'https://github.com/<your_username>/<repo_name>.git/' not found

**What it means:**      
Git cannot find the repository at the specified URL. This is usually because:
- The repository hasn’t been created on GitHub yet.
- The remote URL is incorrect (for example, a typo or wrong username/repo).

**How to fix:**  
1. Double-check that your repository exists on GitHub.  
2. Confirm the URL is correct.
3. Update your remote URL if needed:

```bash
git remote set-url origin https://github.com/<your_username>/<repo_name>.git
```

---

## 💡 Still Stuck?
- Double-check the GitHub documentation: [Adding a remote](https://docs.github.com/en/get-started/git-basics/managing-remote-repositories).
- Try searching your error message in [GitHub Discussions](https://github.com/orgs/community/discussions) or [Stack Overflow](https://stackoverflow.com/).
- [Open an issue](https://github.com/clementw168/python-uv-template/issues) with details and we’ll try to help!
