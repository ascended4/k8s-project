#!/bin/bash
kubectl create deploy webapp --image=nginx --dry-run=client -o yaml > webapp.yaml
kubectl apply -f webapp.yaml
kubectl scale deployment webapp --replicas=5