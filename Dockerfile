ARG BASE_CONTAINER=almondsh/almond:0.10.0
FROM $BASE_CONTAINER

LABEL maintainer="Radhwane Chebaane <radcheb@gmail.com>"

USER root
RUN apt update && apt install -y git && rm -rf /var/lib/apt/lists/*

COPY --chown=$NB_USER:$NB_GID notebooks notebooks
RUN rm -r work
