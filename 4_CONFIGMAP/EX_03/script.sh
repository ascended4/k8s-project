#!/bin/bash
kubectl apply -f nginx-pod.yaml
kubectl wait --for=condition=Ready pod/nginx-pod
kubectl exec -it nginx-pod -- sh -c env | grep key