#!/bin/bash

# Get ouput variable from the environment stack
json=`aws cloudformation describe-stacks --stack-name devsecops-environment`

# Pull out the VPC
vpcid=`echo $json | jq -r '.Stacks[0].Outputs[0].OutputValue'`
echo $vpcid

# Pull out the subnet
subnetid=`echo $json | jq -r '.Stacks[0].Outputs[1].OutputValue'`
echo $subnetid

# Launch the application stack with these values
aws cloudformation create-stack --stack-name devsecops-flaskr --template-body file://application.json --parameters ParameterKey=KeyName,ParameterValue=toby_NDRResearchKey ParameterKey=VPC,ParameterValue=${vpcid} ParameterKey=Subnet,ParameterValue=${subnetid}



