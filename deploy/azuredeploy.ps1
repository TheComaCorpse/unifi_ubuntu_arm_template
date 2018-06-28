Connect-AzureRmAccount

Select-AzureRmSubscription -SubscriptionId 03b5540a-3a3d-45b4-a3b8-d1432ffee710

$templatefile = 'C:\Azure\ubiquiti_deploy\deploy\azuredeploy.json'
$parameterfile = 'C:\Azure\ubiquiti_deploy\deploy\azuredeployparameters.json'



New-AzureRmResourceGroup -Location 'East Us 2' -Name ComaCorpUnifi

New-AzureRmResourceGroupDeployment -Name Unifideploy -ResourceGroupName ComaCorpUnifi `
                                   -TemplateFile $templatefile `
                                   -TemplateParameterFile $parameterfile `
                                   -verbose `
                                   -DeploymentDebugLogLevel All