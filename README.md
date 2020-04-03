# podsync Docker for armhf (raspberry pi)

### Pre-built Docker Image

https://hub.docker.com/r/johnnybui/podsync-armhf

`docker pull johnnybui/podsync-armhf`

### Build Image (skip if you don't want to modify the image)

`docker build -t <your-tag> .`

### Run Podsync

- Create your `config.toml` file from example from https://github.com/mxpv/podsync

- Change path to your `config.toml` and 'data' folder in `docker-compose.yml`

- Run `id $(whoami)` to find your user id and modify in `docker-compose.yml` if needed

- Run `docker-compose up -d`
