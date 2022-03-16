ARG GITPOD_IMAGE=gitpod/workspace-base:latest
FROM ${GITPOD_IMAGE}

# Install Jekyll
RUN sudo gem install jekyll bundler

#FROM gitpod/workspace-full:latest

# Install Jekyll
#USER gitpod
#RUN bash -lc "gem install jekyll"

# Give back control
#USER root