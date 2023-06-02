#!/bin/bash
# NOT WORKING
# There is a problem with auto generate selector with app=messaging-service
kubectl create service clusterip messaging-service --tcp=6379:6379
kubectl patch service messaging-service -p '{"spec": {"selector": {"tier" : "msg"}}}'