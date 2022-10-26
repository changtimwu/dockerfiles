#!/bin/sh

docker run -it --rm --name code-server -p 8915:8080 \
      -v "$HOME/.config:/home/coder/.config" \
        -v "$PWD:/home/coder/projects" \
          -u "$(id -u):$(id -g)" \
            -e "DOCKER_USER=$USER" \
              codeserver

#codercom/code-server:latest
