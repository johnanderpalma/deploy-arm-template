#Login on azure subscription
Connect-AzAccount

#Create a resource group
New-AzResourceGroup -Name azurebrains-rg -Location "North Europe"

#Validate an arm-template on azure
Test-AzResourceGroupDeployment  -ResourceGroupName "azurebrains-rg" -TemplateFile .\azuredeploy.json -TemplateParameterFile .\azuredeploy.parameters.json

#Deploy the arm-template
New-AzResourceGroupDeployment -ResourceGroupName "azurebrains-rg" -TemplateFile .\azuredeploy.json -TemplateParameterFile .\azuredeploy.parameters.json

#Logout
Disconnect-AzAccount