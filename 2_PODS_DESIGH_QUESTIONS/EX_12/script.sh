#!/bin/bash
kubectl label $(kubectl get pods --show-kind -o NAME | grep nginx-pod-) env-