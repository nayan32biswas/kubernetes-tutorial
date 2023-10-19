# Kubernetes Examples

## Configuration

### Start server

- `minikube start`
- `kubectl apply -f infra/`
- `kubectl get all` Make sure everything running.
- `minikube service mongodb-express-service` Assign external IP address

### Start Kubernetes Dashboard

- `minikube dashboard` Enable dashboard.
- `kubectl apply -f kubernetes-dashboard.yaml`
- `kubectl get ingress -n kubernetes-dashboard` Get `IP_ADDRESS` address of running ingress.
- `sudo vi /etc/hosts` Add `<IP_ADDRESS> localhost-dashboard.com` in the end of the file.
- http://localhost-dashboard.com

**User:** `admin` **Pass:** `pass`

### Delete configuration

- `kubectl delete -f infra/`

## Basic command

### Minikube

- `minikube start`
- `minikube stop`
- `minikube addons enable ingress` Add default nginx-ingress. You can enable other implementation.

### kubectl get

- `kubectl get all`
- `kubectl get all | grep <mongodb>` Get all configuration with a single command.
- `kubectl get pod`
- `kubectl get deployment`
- `kubectl get service`
- `kubectl get secret`
- `kubectl get configmap`
- `kubectl get ns`
- `kubectl get ingress`

### kubectl delete

- `kubectl delete pod`
- `kubectl delete deployment`
- `kubectl delete service`
- `kubectl delete secret`
- `kubectl delete configmap`
- `kubectl delete ns`
- `kubectl delete ingress`

### Secret

- `kubectl apply -f ./infra/mongo-secret.yaml` Create secret.
- `kubectl get secret` To see created secret.
- `kubectl apply -f ./infra/mongo-configmap.yaml` Create secret.
- `kubectl get configmap` To see created configmap.

### Deployment and Service

- `kubectl apply -f ./infra/mongo.yaml`
- `kubectl apply -f ./infra/mongo-express.yaml`
- `kubectl describe service mongodb-service` Get details of the create service. Note Endpoints IP.
- `kubectl get pod -o wide` Cross check if of the created pod and Endpoints IP of service.

### Namespace

- `kubectl create namespace custom-namespace`
- `kubectl delete namespace custom-namespace`
- `kubectl config set-context --current --namespace=custom-namespace` Set as default namespace.
- `kubectl get pod -n kube-public` get all pods within the namespace. this command also possible for deployment, service, etc.
