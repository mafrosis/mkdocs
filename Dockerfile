# https://github.com/squidfunk/mkdocs-material/blob/master/Dockerfile
FROM python:3.8

ARG DRAWIO_VERSION=13.6.2

RUN apt-get update && \
	apt-get install --no-install-recommends -y \
		libgtk-3-0 libnotify4 libnss3 libappindicator3-1 libsecret-1-0 libxtst6 xdg-utils \
		libasound2 libdrm2 libgbm1 libx11-xcb1 libxcb-dri3-0 xauth xvfb

# include draw.io binary
RUN curl -L -o /tmp/drawio.deb https://github.com/jgraph/drawio-desktop/releases/download/v${DRAWIO_VERSION}/draw.io-amd64-${DRAWIO_VERSION}.deb && \
	dpkg -i /tmp/drawio.deb && \
    rm /tmp/drawio.deb && \
	chmod +4755 /opt/draw.io/chrome-sandbox

WORKDIR /tmp

COPY mkdocs-material/material material
COPY mkdocs-material/MANIFEST.in MANIFEST.in
COPY mkdocs-material/package.json package.json
COPY mkdocs-material/README.md README.md
COPY mkdocs-material/requirements.txt requirements.txt
COPY mkdocs-material/setup.py setup.py
COPY plugins.txt plugins.txt

RUN apt-get install --no-install-recommends -y \
		git curl build-essential && \
	pip install --no-cache-dir . && \
	pip install --no-cache-dir -r plugins.txt

WORKDIR /docs
EXPOSE 8000

ENTRYPOINT ["/bin/sh", "-c", "/usr/bin/xvfb-run -a mkdocs $@", ""]
CMD ["serve", "--dev-addr=0.0.0.0:8000"]
