# Resume (for GitHub Pages)

This branch has my compiled resume that gets hosted on GitHub pages. It's
independent of the `master` branch.

## Developer Guide

To limit size creep of this repository, we're going to _overwrite history_ for
any binary updates. Specifically, we will never keep old versions of
`resume.pdf`.

Always make sure you're on the correct branch before messing with the version
control history.

```bash
git checkout gh-pages
```

There are two types of edits we can make to this branch:

* updating the binary (resume), or
* updating source code that should be kept under version control.

Never mix the two in the same commit. The sections below describe how to make
commits while keeping the binary commit at `HEAD` and keeping only one PDF in
version control history.

### Updating the Resume

To make updates to just the resume, update the PDF normally and run `git commit
--amend` to overwrite the existing PDF commit.

```bash
git add resume.pdf
# omit "--no-edit" if you want to change the commit message
git commit --amend --no-edit
```

### Updating Source Code

To make any edits that we'd like to preserve in history, we need to add a new
commit before `HEAD`, and recommit `HEAD`. (The assumption here is that the
latest commit will always be the commit that adds the PDF.) To do this cleanly,
we need to do an interactive rebase.

1. Start an interactive rebase that starts right before the latest commit. The
   following command should open up your text editor.

   ```bash
   git rebase -i HEAD~2
   ```

2. Find the line showing the second-to-last commit. Change the `pick` into
   `edit` in that line, and close the editor.

3. Make your desired changes and `commit` your changes. (You don't need to
   amend, contrary to what the interactive rebase instructions say.)

4. Finish the rebase by re-applying the remaining history.

   ```bash
   git rebase --continue
   ```

### Wrapping Up

Since we rewrote history (thus diverging from the remote history), we'll always
have to force push changes.

```bash
git push -f origin gh-pages
```
