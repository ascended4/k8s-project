#!/bin/bash
kubectl label $(kubectl get node --show-kind -o NAME | grep agent-0) nodeName=nginxnode