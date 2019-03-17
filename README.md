# Resume

This is the repository for my resume. I migrated it from Word to LaTeX in order
to keep it cleanly under version control.

## Developer Guide

The resume source needs to be compiled via [XeLaTeX][xelatex], since it uses
custom fonts. I host and compile the source via an
[Overleaf/ShareLaTeX][overleaf] project. It's far simpler than compiling
locally.

### Setting Up

1. Create an Overleaf project and mirror the contents of this repository.
   Alternatively, you can `Import from GitHub` to fetch the contents.
2. Configure the appropriate project settings. You only need to set two specific
   options:

   * The `Compiler` is `XeLaTeX`.
   * The `Main document` is `resume.tex`.

3. Compile the project to make sure there aren't any build issues.

### Updating the Resume

Unfortunately, syncing with GitHub is no longer free for Overleaf projects.
Feels bad man. It's not the end of the world though, since only one file will
likely change over time.

1. Clone this repository locally.

   ```bash
   git clone https://github.com/MrPickles/resume.git
   ```

2. Make your desired changes to the respository on Overleaf. Compile the PDF
   version of the resume online to make sure the result looks desireable.
3. Once you're ready to "commit" your changes, manually copy all your changes to
   the local repository.
4. Commit your changes in the local repository.

## Hosting the Compiled Resume

GitHub hosts this resume on https://andrew.cloud/resume via GitHub Pages. These
are the steps to manually updating the hosted resume:

1. Download the compiled PDF resume from Overleaf. The file should be named
   `resume.pdf`.
2. Switch to the `gh-pages` branch of the local respository.
3. Replace the existing version of `resume.pdf` in the local repository with the
   version downloaded in step 1.
4. Commit and push your changes.
5. Visit https://andrew.cloud/resume and verify that the updates came into
   effect.

[xelatex]: https://www.overleaf.com/learn/latex/XeLaTeX
[overleaf]: https://www.overleaf.com
