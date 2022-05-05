#!/bin/bash

# sample value for your variables
MYVARVALUE=$1

# read the yml template from a file and substitute the string
# {{MYVARNAME}} with the value of the MYVARVALUE variable
template=`cat "namespace.yml" | sed "s/{{MYVARNAME}}/$MYVARVALUE/g"`
echo "$template" | kubectl apply -f -

template=`cat "deployment.yaml" | sed "s/{{MYVARNAME}}/$MYVARVALUE/g"`

# apply the yml with the substituted value
echo "$template" | kubectl apply -f -
