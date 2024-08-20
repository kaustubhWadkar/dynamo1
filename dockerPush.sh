#the below script for tag and push docker images to ECR repository 

#!/bin/bash

read -p " Please give your image id: " imageid
read -p " please provide reponame: " repoName
read -p " please provide tag: " tag

docker tag $imageid 312253715348.dkr.ecr.us-east-1.amazonaws.com/$repoName:$tag
docker push 312253715348.dkr.ecr.us-east-1.amazonaws.com/$repoName:$tag

echo " image saved in ECR repo "
