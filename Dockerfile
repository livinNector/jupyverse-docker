FROM docker.io/mambaorg/micromamba:alpine
WORKDIR /home/mambauser/
RUN micromamba create -n jupyverse
SHELL ["micromamba", "run", "-n","jupyverse", "/bin/bash", "-c"]
ENV SHELL=bash
RUN micromamba install -c conda-forge jupyverse fps-jupyterlab fps-auth
RUN micromamba install -c conda-forge numpy pandas ipywidgets matplotlib plotly scikit-learn 
COPY entrypoint.sh /
ENTRYPOINT ["bash","/entrypoint.sh"]
