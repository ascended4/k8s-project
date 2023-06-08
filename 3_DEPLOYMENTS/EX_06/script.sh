#!/bin/bash
kubectl create deploy webapp --image=nginx:1.17.1 --port=80
kubectl describe deploy webapp | grep Port