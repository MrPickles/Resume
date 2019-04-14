# Resume (for GitHub Pages)

This branch has my compiled resume that gets hosted on GitHub pages. It's
independent of the `master` branch.

## Developer Guide

To limit size creep of this repository, we're going to _overwrite history_ for
any binary updates. Specifically, we will never keep old versions of
`resume.pdf`.

Make sure you're on the correct branch before messing with the version control
history.

```bash
git checkout gh-pages
```

### Updating the Resume

To make updates to just the resume, update the PDF normally and run `git commit
--amend` to overwrite the existing PDF commit.

```bash
git add resume.pdf
git commit --amend --no-edit
# or if you want to change the commit message
git commit --amend
```

### Wrapping Up

Since we rewrote history (thus diverging from the remote history), we'll always
have to force push changes.

```bash
git push -f origin gh-pages
```
