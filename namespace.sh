#!/bin/bash
MYVARVALUE=$1

template=`cat "namespace.yml" | sed "s/{{MYVARNAME}}/$MYVARVALUE/g"`
echo "$template" | kubectl apply -f -

template=`cat "deployment.yaml" | sed "s/{{MYVARNAME}}/$MYVARVALUE/g"`
echo "$template" | kubectl apply -f -
