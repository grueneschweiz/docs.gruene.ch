#!/usr/bin/env bash

set -euo pipefail

source ../.env

crowdin upload sources \
  --auto-update \
  -b master \
  -T "$CROWDIN_DOCUSAURUS_API_KEY" \
  -i "$CROWDIN_DOCUSAURUS_PROJECT_ID"

crowdin download \
  -b master \
  -T "$CROWDIN_DOCUSAURUS_API_KEY" \
  -i "$CROWDIN_DOCUSAURUS_PROJECT_ID"