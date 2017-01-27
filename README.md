# Docker Image - Apache Solr

[![Build Status](https://travis-ci.org/geerlingguy/docker-image-solr.svg?branch=master)](https://travis-ci.org/geerlingguy/docker-image-solr) [![Docker Automated build](https://img.shields.io/docker/automated/geerlingguy/docker-image-solr.svg?maxAge=2592000)](https://hub.docker.com/r/geerlingguy/docker-image-solr/)

The [official Solr repository](https://hub.docker.com/_/solr/) for Docker is well-maintained and helpful in many use cases, but I need a slightly more customized build for my projects. Therefore, this is a Docker container to build different versions of Solr that I need in production.

## How to Build

This image is built on Docker Hub automatically any time the upstream Docker image is rebuilt, and any time a commit is made or merged to the `master` branch. But if you need to build the image on your own locally, do the following:

  1. [Install Docker](https://docs.docker.com/engine/installation/).
  2. `cd` into this directory.
  3. Run `docker build -t docker-image-solr .`

## How to Use (Basic Demo)

  1. [Install Docker](https://docs.docker.com/engine/installation/).
  2. `cd` into the `tests` directory.
  3. Run `docker-compose up -d`
  4. Visit [http://localhost:8983/](http://localhost:8983/) in a browser, and you should see the Apache Solr admin interface.
  5. Click on 'Core Admin'.
  6. You should see the `new_core` that you configured in the listing.
  7. Solr is ready to work with your application, using the `new_core`!

When you're finished testing, run `docker-compose stop` to stop Solr, and `docker-compose rm` to delete the Solr container (the local core data—config and index data—on your host will be preserved).

## How to Use (Real World)

Seeing a running Solr instance looks pretty... but means nothing in the real world. This container was created to solve the real-world problem of running multiple independent Solr cores, isolated one per Solr instance, on one or multiple Docker hosts.

And on top of that, the creation and maintenance of all the Solr containers should be fully automated. You should be able to build or rebuild all your Solr containers at the drop of a hat, while all the contents of each Solr index are preserved. That's why we're using Docker!

TODO.

## Overriding Configuration

You can override default `geerlingguy.java` and `geerlingguy.solr` Ansible role configuration variables by adding a `config.yml` fil inside the `provisioning` folder alongside the `default.config.yml` file.

## License

MIT / BSD

## Author Information

This image was created in 2017 by [Jeff Geerling](https://www.jeffgeerling.com/), author of [Ansible for DevOps](https://www.ansiblefordevops.com/).
