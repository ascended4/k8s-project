#!/bin/bash
kubectl rollout undo deploy/webapp
kubectl describe deploy/webapp | grep Image