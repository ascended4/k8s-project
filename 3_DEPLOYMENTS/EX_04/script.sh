#!/bin/bash
kubectl get pods,rs -l app=webapp -o yaml > export.yaml