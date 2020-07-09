#!/usr/bin/env bash

source ../.env

yarn run crowdin-upload
yarn run crowdin-download
