#!/bin/sh
echo "docker exec -it code-server /bin/bash"
cudir="/home/coder"
docker run -it  --rm --name code-server -p 8915:8080 \
      -v "$HOME/.config:$cudir/.config" \
      -v "$HOME/.lc:$cudir/.lc" \
      -v "$PWD/projects:$cudir/projects" \
      -u "$(id -u):$(id -g)" \
      -e "DOCKER_USER=$USER" \
      codeserver

#codercom/code-server:latest
