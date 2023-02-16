# User documentation for the Website System of the GREENS

We use this repository to document the usage of the Website System of the 
GREENS. The documentation is published at 
[docs.gruene.ch](https://docs.gruene.ch).
It referes to Websites built with the 
[Les Verts](https://github.com/grueneschweiz/2018.gruene.ch) Theme.

## How to contribute

- We use [docusaurus](https://v1.docusaurus.io/). 
- Start the development server with `docker-compose up -d`.
- The documentation is located in the `docs` folder.
- Docusaurus lives in `website`. See it's [README](website/README.md) for more 
  information.
- Localization is done with [Crowdin](https://crowdin.com/project/docsgruenech).
  Run `cd website && ./translate.sh` to synchronize the translations. The `.env`
  can be found in LastPass.
- Run `cd website && ./deploy.sh` to build and deploy the documentation. 
  Make sure you've got [pandoc](https://pandoc.org/) installed.

## Todo

- Automate deployment with GitHub Actions.