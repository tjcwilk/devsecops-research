aws cloudformation create-stack --stack-name devsecops-environment --template-body file://environment.json --parameters ParameterKey=KeyName,ParameterValue=toby_NDRResearchKey
