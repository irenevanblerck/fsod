#!/bin/bash

docker run --gpus all -d --name gpu-jupyter \
	--volume /notebooks:/home \
	--volume /data:/data \
	--volume /config/jupyterhub_config.py:/gpu-jupyter/jupyterhub_config.py \
	--volume /config/userlist:/gpu-jupyter/userlist \
	-p8000:8000 gpu-jupyter
