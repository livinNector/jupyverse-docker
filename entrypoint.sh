eval "$(micromamba shell hook --shell bash)"
micromamba activate jupyverse 
cd ~
jupyverse --set frontend.collaborative=true --set auth.mode=noauth