#!/bin/bash
mkdir /tmp/nodes-ascended
kubectl get pods -o json > /tmp/nodes-ascended/ex_04_get_pods.json