# eureka-server

## Build with maven 
mvn clean install

## Docker command

docker build -t eureka-server:v1 .

## Run with Docker

docker run eureka-server:v1


## Run with Kubernetes  I am using google cloud so please use your porject 


docker tag eureka-server:v1 gcr.io/appsutility-141503/eureka-server:v1

gcloud docker -- push gcr.io/appsutility-141503/eureka-server:v1

# If you want run and validate
kubectl run eureka-server --image gcr.io/appsutility-141503/eureka-server:v1  


#Deploy spring boot using Kubernet deployment file

kubectl create -f eureka-server-service.yaml	






