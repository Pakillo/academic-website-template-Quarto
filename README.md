# Template for academic website made with Quarto

A template for academic websites made with [Quarto](https://quarto.org) and hosted on GitHub.

This is all configured so you only need to edit the source files in Quarto (.qmd). The website is generated and hosted automatically by GitHub.

Example website: https://pakillo.github.io/academic-website-template-Quarto/

## Using this template

1. Click on green button "Use this template" -> "Create a new repository"

2. Choose a name for your repository

3. Important: check 'Include all branches' when creating the repository (because we will need the 'gh-pages' branch to host the website).

4. Once your repo is created, remember to update the links and info in _quarto.yml, index.qmd, etc.

5. With every new commit pushed to the 'main branch' the website will be updated automatically (using GitHub Actions). If that is not working, go to Settings -> GitHub Pages and check that it is configured as explained [here](https://quarto.org/docs/publishing/github-pages.html#source-branch). Otherwise the quarto rendering might be failing. Try runnning 'quarto render' locally in your computer for debugging.


### Tips

In the 'R' folder there are a couple of R functions to help you population the Publications page.

- `doi2md` will take a DOI (e.g. from a published paper) and produce the Markdown text ready to paste into `Publications.qmd`

- `scholar_pubs` will take a Google Scholar ID (e.g. mine is "LQQrHeEAAAAJ") and will generate a quarto file (named "publications.qmd" by default) with your full publication list as available in your Google Scholar profile. Note you could of course write similar functions to retrieve publications from your ORCID profile, Zotero database, etc.



