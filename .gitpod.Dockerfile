ARG GITPOD_IMAGE=gitpod/workspace-base:latest
FROM ${GITPOD_IMAGE}

# Install Jekyll
RUN gem install jekyll bundler