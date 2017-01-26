FROM geerlingguy/docker-ubuntu1604-ansible:latest
MAINTAINER Jeff Geerling

# Copy provisioning playbook.
COPY provisioning /etc/ansible/provisioning

# Install dependent roles.
RUN ansible-galaxy install -r /etc/ansible/provisioning/requirements.yml

# Provision Solr inside Docker.
RUN ansible-playbook /etc/ansible/provisioning/main.yml
