#!/bin/bash
kubectl delete hpa/webapp-hpa
kubectl delete deploy/webapp