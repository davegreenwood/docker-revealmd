# Docker image for reveal_md

A smaller image than the original at:
[webpro/reveal-md](https://github.com/webpro/reveal-md)
based on alpine.

Refer to the original for more detailed documentation.


## Build

    docker build -t dgrnwd/revealmd:latest .


## Run

From a host directory containing Markdown slides:

    docker run --rm \
        -p 1948:1948 \
        -v "$(pwd)":/slides \
        dgrnwd/revealmd:latest


## Hotkeys

* S - show presenter notes
* O - show the deck overview

## Output

Save a static site:

    reveal-md slides.md --static _site

For pdf, open the browser with the pdf option, and use the print dialogue to save to pdf

    http://localhost:1948/?print-pdf
