#!/bin/bash
port_opts="-p 8888:8888"
asroot_opts="-u root:root"
vol_opts="-v ${PWD}/modelzoo:/root/modelzoo"
vol_opts+=" -v ${PWD}/openvino_notebooks:/root/notebooks"
vol_opts+=" -v $(realpath ../open_model_zoo):/root/open_model_zoo"

cam_opts=" --device=/dev/video0"
#echo "open http://<this site>:8888/  with password 12345678"
#echo "please run jupyter notebook password"
docker run -it $asroot_opts $port_opts $vol_opts $cam_opts --rm  openvino_juypter_nncf 
