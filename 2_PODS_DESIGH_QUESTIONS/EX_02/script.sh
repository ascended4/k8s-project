#!/bin/bash
kubectl run nginx-pod-1 --image=nginx --labels=env=prod
kubectl run nginx-pod-2 --image=nginx --labels=env=prod
kubectl run nginx-pod-3 --image=nginx --labels=env=dev
kubectl run nginx-pod-4 --image=nginx --labels=env=dev
kubectl run nginx-pod-5 --image=nginx --labels=env=dev