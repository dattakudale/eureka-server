# eureka-server app

## Build with maven 
mvn clean install

## Docker command

docker build -t eureka-server:v1 .

## Run with Docker

docker run eureka-server:v1


## Run with Kubernetes  using google cloud and use your porject.


docker tag eureka-server:v1 gcr.io/appsutility-141503/eureka-server:v1

gcloud docker -- push gcr.io/appsutility-141503/eureka-server:v1

## If you want run and validate
kubectl run eureka-server --image gcr.io/appsutility-141503/eureka-server:v1  


## Deploy spring boot using Kubernetes deployment file

kubectl create -f eureka-server-service.yaml	


## Update deployment with v2 

kubectl set image deployment/eureka-server eureka-server=gcr.io/appsutility-141503/eureka-server:v2


## Create multiple instances ( Replicas )   , below will create 3 instances of eureka-server 

kubectl scale deployment eureka-server --replicas=3


