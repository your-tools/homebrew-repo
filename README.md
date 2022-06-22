[Homebrew](https://brew.sh) tap for the [your-tools](https://github.com/your-tools) projects

# Usage

Run:

```
brew install your-tools/homebrew-repo/<name>
```

Where `<name>` is the name of the formula you want to install.

You can find the whole list in the [Formula directory](https://github.com/your-tools/homebrew-repo/tree/master/Formula).

# For maintainers

## Releasing a new version

Run:

```
cd Formula/

# Don't forget the '=' sign after the '--url' option
brew bump-formula-pr --url=https://github.com/your-tools/<name>/archive/v<version>.tar.gz <name>
```

Then approve and merge the generated pull request.
