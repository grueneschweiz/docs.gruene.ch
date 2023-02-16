#!/usr/bin/env bash

# halt on all errors
set -euo pipefail

# load environment variables
source .env

## stop everything first
docker compose --profile dev down
docker compose --profile build down
docker compose --profile translate down

# load newest translations first
docker compose --profile build up crowdin

# remove static files
rm -rf website/build

# build static files
docker compose --profile build run docusaurus yarn build

# generate pdfs
docker compose --profile build run pandoc

# sync files to server
rsync -vrz ./website/build/docs.gruene.ch/ "${SSH_USER}@${SSH_HOST}:${SSH_PATH}"
