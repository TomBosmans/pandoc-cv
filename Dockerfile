FROM debian:latest

RUN apt-get update && apt-get install -y \
    pandoc \
    texlive \
    texlive-latex-extra \
    texlive-xetex \
    wkhtmltopdf \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["pandoc"]
