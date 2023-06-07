#!/bin/bash
kubectl label pod nginx-pod-1 env=uat --overwrite
kubectl get pods --show-labels -A