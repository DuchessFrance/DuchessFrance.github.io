ARG GITPOD_IMAGE=gitpod/workspace-base:latest
FROM ${GITPOD_IMAGE}

## Install Ruby and pre-requisites

RUN sudo apt-get install ruby-full build-essential zlib1g-dev

# Install Jekyll
#USER gitpod
#RUN bash -lc "gem install jekyll"

# Give back control
#USER root
