# Simple Python Application on Kubernetes

Basic implementation of a python application using Kubernetes. 

## Code 
Build a simple python application. 

## Image
Build an image via Dockerfile. 

```code
$ docker-compose build python
```

Run image
```code
$ docker-compose up python
```

Compose the image and push to repo. 

```code
$ docker push jessemolina/python-simple
```

## Kubernetes

Create and apply Deployments and Service

```code
$ kubectl apply -f ./kubernetes/deployment.yaml 
$ kubectl apply -f ./kubernetes/service.yaml
```

## Minikube

If running on Minikube

```code
$ minikube tunnel
```
