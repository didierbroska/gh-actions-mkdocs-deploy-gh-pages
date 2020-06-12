FROM python:3.8-slim

LABEL "maintainer" "Didier Bröska <didier.broska@gmail.com>
LABEL "repository" "https://github.com/didierbroska/gh-actions-mkdocs-deploy-gh-pages"
LABEL "homepage" "https://github.com/didierbroska/gh-actions-mkpocs-deploy-gh-pages"

RUN pip install --upgrade --no-cache-dir mkdocs

WORKDIR /app
COPY LICENSE
COPY mkdocs-build.sh

RUN chmod +x mkdocs-build.sh
ENTRYPOINT ["/app/mkdocs-build.sh"]
