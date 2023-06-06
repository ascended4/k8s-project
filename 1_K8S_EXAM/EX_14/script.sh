#!/bin/bash
kubectl apply -f nginx-resolver.yaml -f nginx-resolver-service.yaml -f busybox-pod.yaml --force
# There is no curl in busybox:1.28 image
# Installing it via kubectl exec is not worth it
kubectl exec busybox -- nslookup nginx-resolver-service > ./nginx-ascended.svc
# We cannot access pod via DNS with pod name
kubectl exec busybox -- nslookup nginx-resolver > ./nginx-ascended.pod