#!/bin/sh

# halt on all errors
set -euo pipefail

echo 'generating english pdf'
perl -0777 -pe 's/---(\n.*)*title:\s*([^\n]*)(\n.*)*\n---/\n\n# \2/' \
    docs/*.md \
    | sed 's/(assets\//(docs\/assets\//' \
    | pandoc --toc -V lang=en \
        -s -o website/build/docs.gruene.ch/docs/en/1-1-introduction/manual.pdf
echo 'success'

echo 'generating german pdf'
perl -0777 -pe 's/---(\n.*)*title:\s*([^\n]*)(\n.*)*\n---/\n\n# \2/' \
    website/translated_docs/de/*.md \
    | sed 's/(assets\//(docs\/assets\//' \
    | pandoc --toc -V lang=de \
        -s -o website/build/docs.gruene.ch/docs/de/1-1-introduction/manual.pdf
echo 'success'

echo 'generating french pdf'
perl -0777 -pe 's/---(\n.*)*title:\s*([^\n]*)(\n.*)*\n---/\n\n# \2/' \
    website/translated_docs/fr/*.md \
    | sed 's/(assets\//(docs\/assets\//' \
    | pandoc --toc -V lang=fr \
        -s -o website/build/docs.gruene.ch/docs/fr/1-1-introduction/manual.pdf
echo 'success'