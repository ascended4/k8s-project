#!/bin/bash
kubectl set image deploy/webapp nginx=nginx:1.100
kubectl get pods -l app=webapp
kubectl rollout undo deploy/webapp
kubectl get pods -l app=webapp
kubectl rollout history deploy/webapp --revision=2
kubectl set image deploy/webapp nginx=nginx:latest
kubectl rollout history deploy/webapp
kubectl get pods -l app=webapp
kubectl describe deploy/webapp