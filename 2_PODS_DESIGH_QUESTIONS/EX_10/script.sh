#!/bin/bash
kubectl get pods -l env=dev --show-labels
kubectl get pods -l env=prod --show-labels | tail -n +2