$templatefile = 'C:\Azure\ubiquiti_deploy\deploy\azuredeploy.json'
$parameterfile = 'C:\Azure\ubiquiti_deploy\deploy\azuredeployparameters.json'

Connect-AzureRmAccount

New-AzureRmResourceGroup -Location 'East Us 2' -Name ComaCorpUnifi

New-AzureRmResourceGroupDeployment -Name Unifideploy -ResourceGroupName ComaCorpUnifi -TemplateFile $templatefile -TemplateParameterFile $parameterfile 