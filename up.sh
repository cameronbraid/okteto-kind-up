#!/bin/bash

GO111MODULE="on" go get sigs.k8s.io/kind@v0.7.0

kind create cluster --name okteto

kubectl apply -f resources.yaml

time okteto up