#!/bin/bash
kubectl set image deploy/webapp nginx=nginx:1.17.4
kubectl describe deploy/webapp | grep Image