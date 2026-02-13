# Bigini Resume (Institutional)

LaTeX resume source and build for the institutional CV. Builds to **bigini_resume.pdf**.

## Requirements

- **pdflatex** (TeX Live or similar)
- **make**

## Build

```bash
make          # build PDF and stage changes for git
make pdf      # build PDF only (no staging)
make view     # build and open the PDF
make clean    # remove LaTeX auxiliary files
```

The default `make` runs `pdf` then `stage`, so the generated PDF and main sources are automatically staged for commit.

## Output

- **bigini_resume.pdf** — produced from `main.tex` using the `resume` class.

## Contents

- `main.tex` — main document (preamble and `\input` of the two pages)
- `first_page.tex` — page 1: header, profile, education, domains, certificates, languages
- `second_page.tex` — page 2: experience and rest
- `resume.cls` — resume document class
- `images/` — profile and other images (`profile.jpg` is used in the CV)
- `Makefile` — build and staging targets
