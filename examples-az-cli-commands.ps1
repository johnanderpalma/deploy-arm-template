#Login on azure subscription
az login

#Create a resource group
az group create --name azurebrains-rg -l northeurope

#Validate an arm-template on azure
az deployment group validate --resource-group azurebrains-rg --template-file azuredeploy.json --parameters azuredeploy.parameters.json

#Preview the changes that will happen on a resource group with the deployment
az deployment group what-if --resource-group azurebrains-rg -f .\azuredeploy.json -p .\azuredeploy.parameters.json

#Deploy the arm-template
az deployment group create --resource-group azurebrains-rg -f .\azuredeploy.json -p .\azuredeploy.parameters.json

#Logout
az logout