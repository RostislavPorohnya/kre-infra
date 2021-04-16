#!/bin/bash
read -p "Docker image name: " image_name
read -p "Docker container name: " cont_name
read -p "User folder name: " user
docker build -t $image_name .
docker run --name $cont_name -v /home/$user/git_Infrastructure/Infrastructure/:/home/papka/ $image_name -f yaml -o /home/papka/Configs/config.yaml /home/papka/Templates/template.j2 /home/papka/Values/value.yaml
docker rm cont
