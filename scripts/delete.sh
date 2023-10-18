#!/bin/bash

set -x

kubectl delete -f ./infra/mongo-express.yaml
kubectl delete -f ./infra/mongo.yaml
sleep 5s
kubectl delete -f ./infra/mongo-configmap.yaml
kubectl delete -f ./infra/mongo-secret.yaml
