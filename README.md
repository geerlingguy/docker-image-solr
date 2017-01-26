# Docker Image - Apache Solr

The [official Solr repository](https://hub.docker.com/_/solr/) for Docker is well-maintained and helpful in many use cases, but I need a slightly more customized build for my projects. Therefore, this is a Docker container to build different versions of Solr that I need in production.

## How to Build

This image is built on Docker Hub automatically any time the upstream Docker image is rebuilt, and any time a commit is made or merged to the `master` branch. But if you need to build the image on your own locally, do the following:

  1. [Install Docker](https://docs.docker.com/engine/installation/).
  2. `cd` into this directory.
  3. Run `docker build -t docker-image-solr .`

## How to Use (Basic Demo)

  1. [Install Docker](https://docs.docker.com/engine/installation/).
  2. Pull this image from Docker Hub: `docker pull geerlingguy/docker-image-solr:latest` (or use the tag you built earlier, e.g. `docker-image-solr`).
  3. Run a container from the image: `docker run --detach --privileged --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro --volume=/path/to/new_core:/var/solr/data/new_core:rw -p 8983:8983 geerlingguy/docker-image-solr:latest /sbin/init`
    1. Note that the `new_core` should contain a `conf` directory with your Solr core's `schema.xml`, `solrconfig.xml`, and other configuration, and a `data` directory where the index will be stored. You can also exclude the `--volume` definition for the `new_core` if you don't need any persistent data.
  4. Visit [http://localhost:8983/](http://localhost:8983/) in a browser, and you should see the Apache Solr admin interface.
  5. Click on 'Core Admin'.
  6. Click 'Add Core' with the defaults that appear (assuming you are using the directory `new_core`).
  7. Solr is ready to work with your application, using the `new_core`!

## How to Use (Real World)

TODO.

## Overriding Configuration

You can override default configuration variables by adding a `config.yml` fil inside the `provisioning` folder alongside the `default.config.yml` file.

## License

MIT / BSD

## Author Information

This image was created in 2017 by [Jeff Geerling](https://www.jeffgeerling.com/), author of [Ansible for DevOps](https://www.ansiblefordevops.com/).
