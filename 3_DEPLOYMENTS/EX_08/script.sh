#!/bin/bash
kubectl rollout history deploy/webapp
kubectl rollout status deploy/webapp