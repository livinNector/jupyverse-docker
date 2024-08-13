FROM docker.io/mambaorg/micromamba:alpine
WORKDIR /home/mambauser/
RUN micromamba create -n jupyverse
SHELL ["micromamba", "run", "-n","jupyverse", "/bin/bash", "-c"]
ENV SHELL=bash
RUN micromamba install -y -c conda-forge jupyverse fps-jupyterlab fps-auth
RUN pip install jupyter-collaboration
RUN micromamba install -y -c conda-forge numpy pandas ipywidgets matplotlib plotly dash gradio scikit-learn 
COPY entrypoint.sh /
ENTRYPOINT ["bash","/entrypoint.sh"]
