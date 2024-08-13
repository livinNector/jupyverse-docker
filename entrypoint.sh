eval "$(micromamba shell hook --shell bash)"
micromamba activate jupyverse 
jupyverse --set frontend.collaborative=true --set auth.mode=noauth