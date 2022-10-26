FROM codercom/code-server
RUN sudo apt update
RUN sudo apt install -y python3 python3-pip pylint3 golang
#The Python extension will automatically install the Pylance and Jupyter extensions to give you the best experience when working 
RUN pip install numpy pillow
RUN code-server \
    --install-extension ms-python.python \
    --install-extension  ms-toolsai.jupyter \
    --install-extension ms-toolsai.jupyter-renderers \
    --install-extension paiqo.databricks-vscode \
    --install-extension golang.go
RUN sudo apt install -y bash-completion
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash 
SHELL ["/bin/bash", "-c"]
#RUN export NVM_DIR="$HOME/.nvm" && . "$NVM_DIR/nvm.sh" && nvm install --lts
RUN . ~/.nvm/nvm.sh  && nvm install --lts
RUN . ~/.nvm/nvm.sh && npm install -g vsc-leetcode-cli
RUN . ~/.nvm/nvm.sh && leetcode version && leetcode plugin -e leetcode.cn company 
ADD LeetCode.vscode-leetcode-0.18.1.vsix /tmp/
RUN code-server --install-extension /tmp/LeetCode.vscode-leetcode-0.18.1.vsix
