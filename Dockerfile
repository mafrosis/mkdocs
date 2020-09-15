# https://github.com/squidfunk/mkdocs-material/blob/master/Dockerfile
FROM python:3.8

WORKDIR /tmp

COPY mkdocs-material/material material
COPY mkdocs-material/MANIFEST.in MANIFEST.in
COPY mkdocs-material/package.json package.json
COPY mkdocs-material/README.md README.md
COPY mkdocs-material/requirements.txt requirements.txt
COPY mkdocs-material/setup.py setup.py
COPY plugins.txt plugins.txt

RUN apt-get update && \
	apt-get install -y git curl build-essential && \
	pip install --no-cache-dir . && \
	pip install --no-cache-dir -r plugins.txt

WORKDIR /docs
EXPOSE 8000

ENTRYPOINT ["mkdocs"]
CMD ["serve", "--dev-addr=0.0.0.0:8000"]
