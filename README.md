# INFRA for TODO LIST

This repo is the place where infra as code is kept for the project to do list.

# How to use

## Login to Azure

- az login --use-device-code

## Configure provider

Colonne "SubscriptionId" avec :
- az account list -o table

## Init the setup

- terraform init

## Apply infrastructure

- terraform apply

## Update your kubectl

- az aks get-credentials -g "rg-BDardelet2024_cours-projet" -n "k8s-benoit" --overwrite-existing
kubectl config get-contexts
kubectl auth can-i get pods -A

##  Notes

Ingress Nginx and Cert chart are already installed to facilitate the use of the cluster
