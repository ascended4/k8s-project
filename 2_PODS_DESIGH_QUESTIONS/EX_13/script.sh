#!/bin/bash
kubectl label $(kubectl get pods --show-kind -o NAME | grep nginx-pod-) app=nginx
kubectl get pods -l app=nginx --show-labels