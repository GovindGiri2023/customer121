#!/bin/bash
MYNAMESPACEVALUE=$1

template=`cat "namespace.yml" | sed "s/{{MYNAMESPACE}}/$MYNAMESPACEVALUE/g"`
echo "$template" | kubectl apply -f -

PORTVALUE=$3
template=`cat "deployment.yaml" | sed "s/{{MYNAMESPACE}}/$MYNAMESPACEVALUE/g;s/{{PORT}}/$PORTVALUE/g"`
echo "$template" | kubectl apply -f -

DOMAINVALUE=$2 
template=`cat "cafe-ingress.yaml" | sed "s/{{MYNAMESPACE}}/$MYNAMESPACEVALUE/g;s/{{DOMAIN}}/$DOMAINVALUE/g"`
echo "$template" | kubectl apply -f -
