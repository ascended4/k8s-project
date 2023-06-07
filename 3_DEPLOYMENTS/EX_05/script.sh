#!/bin/bash
kubectl delete deploy webapp
watch -n 0.1 kubectl get pods -l app=webapp