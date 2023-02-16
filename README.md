# User documentation for the Website System of the GREENS

End user documentation for the Website System of the GREENS. The documentation 
is published at [docs.gruene.ch](https://docs.gruene.ch).
It refers to Websites built with the 
[Les Verts](https://github.com/grueneschweiz/2018.gruene.ch) Theme.

The documentation is built with [docusaurus](https://v1.docusaurus.io/).

## How to contribute

The documentation is located in the [docs](/docs) folder. Docusaurus lives in 
[website](/website). See it's [README](website/README.md) for more information.

### Installation

- Install [docker](https://docs.docker.com/get-docker/) and the [compose 
  plugin](https://docs.docker.com/compose/install/).
- Add node modules `docker compose --profile dev run docusaurus yarn`
- Create a `.env` file with the content from lastpass. See also `.env.example`.

### Run locally

- Start the development server with `docker compose --profile dev up`.
- Syncronize localization with 
  [Crowdin](https://crowdin.com/project/docsgruenech):
  `docker compose --profile translate up crowdin`

### Build & Deploy

To build and deploy automatically in one shot, run `./deploy.sh`.

To build only locally, run

```bash
# synchronize localization with Crowdin
docker compose --profile build up crowdin

# build static files
docker compose --profile build run docusaurus yarn build

# generate pdfs
docker compose --profile build run pandoc
```

## Todo

- Automate deployment with GitHub Actions.