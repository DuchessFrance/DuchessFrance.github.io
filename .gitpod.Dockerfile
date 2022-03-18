FROM gitpod/workspace-full:latest

# Install Jekyll
USER gitpod
RUN bash -lc "gem install jekyll"

# Give back control
USER root