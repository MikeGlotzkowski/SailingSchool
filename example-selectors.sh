#!/bin/bash

kubectl run kuard-dev-1234 --image=gcr.io/kuar-demo/kuard-amd64:1 --replicas=1 --labels="app=alpaca,env=dev,ver=1.0.0"

kubectl run kuard-dev-1235 --image=gcr.io/kuar-demo/kuard-amd64:1 --replicas=1 --labels="app=alpaca,env=dev,ver=2.0.0"

kubectl run kuard-qa --image=gcr.io/kuar-demo/kuard-amd64:1 --replicas=2 --labels="app=alpaca,env=qa,ver=1.0.0"

kubectl run kuard-prd --image=gcr.io/kuar-demo/kuard-amd64:1 --replicas=5 --labels="app=alpaca,env=prd,ver=1.0.0"

kubectl get deployments --selector="ver=1.0.0"

kubectl delete deployments --selector="app=alpaca"