#!/bin/bash
set -xv
kubectl apply -f ./nginx-1.16-deploy.yaml
kubectl set image deployment/nginx-deploy nginx-container=nginx:1.17 --record=true
kubectl rollout history deployment/nginx-deploy
kubectl get deploy nginx-deploy -o yaml > nginx-1.17-deploy.yaml
set +xv