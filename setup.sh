eval "$(micromamba shell hook --shell bash)"
micromamba create -n jupyverse
micromamba activate jupyverse
micromamba install -c conda-forge jupyverse fps-jupyterlab fps-auth
python -m ensurepip --upgrade
pip install jupyter-collaboration