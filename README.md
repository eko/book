# Book

This is a template for start writing a book using [Pandoc](https://pandoc.org/) and Markdown style.

## How to use

Just write your chapters markdown files in the `chapters/` directory and add them in `index.md` at the root directory once they are ready to be compiled.

Books metadata have to be filled into `metadata.md` file, like this:

```
---
title:  'This is the title'
subtitle: "This is the subtitle"
author:
- Author One
- Author Two
description: |
    This is a long
    description.

    It consists of two paragraphs
...
```

## Compilation

To compile, simply run:

```bash
$ make
```

This will generate your book file in the following formats:
* .html
* .pdf
* .docx
* .rtf
* .odt
* .epub

To re-build, you have to clean the previously built files. To do that, use:

```bash
$ make clean
```
