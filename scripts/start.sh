#!/bin/bash

set -x

kubectl apply -f ./infra/mongo-secret.yaml
kubectl apply -f ./infra/mongo-configmap.yaml

sleep 5s

kubectl apply -f ./infra/mongo.yaml
kubectl apply -f ./infra/mongo-express.yaml


# minikube service mongodb-express-service