#!/bin/bash
kubectl create service clusterip messaging-service --tcp=6379:6379
kubectl patch service messaging-service -p '{"spec": {"selector": {"tier" : "msg"}}}'
kubectl patch service messaging-service --type json -p='[{"op": "remove", "path": "/spec/selector/app"}]'