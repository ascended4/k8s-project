#!/bin/bash
kubectl get pods -l env=dev
kubectl get pods -l env=prod | tail -n +2