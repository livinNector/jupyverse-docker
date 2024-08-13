FROM docker.io/mambaorg/micromamba:alpine
WORKDIR /home/mambauser/
COPY setup.sh /
COPY entrypoint.sh /
RUN /bin/bash /setup.sh
ENTRYPOINT bash /entrypoint.sh
