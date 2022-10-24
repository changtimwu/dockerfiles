FROM codercom/code-server
USER root
RUN apt update
RUN apt install -y python3 python3-pip pylint3 golang
#The Python extension will automatically install the Pylance and Jupyter extensions to give you the best experience when working 
RUN pip install numpy pillow
RUN code-server \
    --install-extension ms-python.python \
    --install-extension  ms-toolsai.jupyter \
    --install-extension ms-toolsai.jupyter-renderers \
    --install-extension paiqo.databricks-vscode \
    --install-extension golang.go 
 

