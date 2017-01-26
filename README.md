# Docker Image - Apache Solr

The [official Solr repository](https://hub.docker.com/_/solr/) for Docker is well-maintained and helpful in many use cases, but I need a slightly more customized build for my projects. Therefore, this is a Docker container to build different versions of Solr that I need in production.

## How to Build

This image is built on Docker Hub automatically any time the upstream Docker image is rebuilt, and any time a commit is made or merged to the `master` branch. But if you need to build the image on your own locally, do the following:

  1. [Install Docker](https://docs.docker.com/engine/installation/).
  2. `cd` into this directory.
  3. Run `docker build -t docker-image-solr .`

## How to Use

  1. [Install Docker](https://docs.docker.com/engine/installation/).
  2. Pull this image from Docker Hub: `docker pull geerlingguy/docker-image-solr:latest` (or use the tag you built earlier, e.g. `docker-image-solr`).
  3. Run a container from the image: `docker run --detach --privileged --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro geerlingguy/docker-image-solr:latest /usr/lib/systemd/systemd`
    1. TODO: To persist Solr index data and manage configuration through the host, I mount a volume from the host with ``--volume=/some/folder/with/config/and/index:/var/solr:rw``.
  4. TODO.

## Overriding Configuration

You can override default configuration variables by adding a `config.yml` fil inside the `provisioning` folder alongside the `default.config.yml` file.

## License

MIT / BSD

## Author Information

This image was created in 2017 by [Jeff Geerling](https://www.jeffgeerling.com/), author of [Ansible for DevOps](https://www.ansiblefordevops.com/).
