#!/bin/sh

set -euo pipefail

source .env

cd website
rm -rf translated_docs

crowdin upload sources \
  --auto-update \
  --delete-obsolete \
  -b master \
  -T "$CROWDIN_DOCUSAURUS_API_KEY" \
  -i "$CROWDIN_DOCUSAURUS_PROJECT_ID"

crowdin download \
  -b master \
  -T "$CROWDIN_DOCUSAURUS_API_KEY" \
  -i "$CROWDIN_DOCUSAURUS_PROJECT_ID"