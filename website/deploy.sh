#!/usr/bin/env bash

# halt on all errors
set -euo pipefail

# load environment variables
source ../.env

# load newest translations first
bash translate.sh

# build static files
yarn build

# generate pdfs
echo 'generating english pdf'
perl -0777 -pe 's/---(\n.*)*title:\s*([^\n]*)(\n.*)*\n---/\n\n# \2/' \
    ../docs/*.md \
    | sed 's/(assets\//(..\/docs\/assets\//' \
    | pandoc --toc -V lang=en \
        -s -o build/docs.gruene.ch/docs/en/1-1-introduction/manual.pdf
echo 'success'

echo 'generating german pdf'
perl -0777 -pe 's/---(\n.*)*title:\s*([^\n]*)(\n.*)*\n---/\n\n# \2/' \
    translated_docs/de/*.md \
    | sed 's/(assets\//(..\/docs\/assets\//' \
    | pandoc --toc -V lang=de \
        -s -o build/docs.gruene.ch/docs/de/1-1-introduction/manual.pdf
echo 'success'

echo 'generating french pdf'
perl -0777 -pe 's/---(\n.*)*title:\s*([^\n]*)(\n.*)*\n---/\n\n# \2/' \
    translated_docs/fr/*.md \
    | sed 's/(assets\//(..\/docs\/assets\//' \
    | pandoc --toc -V lang=fr \
        -s -o build/docs.gruene.ch/docs/fr/1-1-introduction/manual.pdf
echo 'success'

# sync files to server
rsync -vrz ./build/docs.gruene.ch/ "${SSH_USER}@${SSH_HOST}:${SSH_PATH}"
