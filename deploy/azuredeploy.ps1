Connect-AzureRmAccount

Select-AzureRmSubscription -SubscriptionId 03b5540a-3a3d-45b4-a3b8-d1432ffee710

$templateUri = 'https://raw.githubusercontent.com/TheComaCorpse/unifi_ubuntu_arm_template/master/deploy/azuredeploy.json'
$parameterUri = 'https://raw.githubusercontent.com/TheComaCorpse/unifi_ubuntu_arm_template/master/deploy/azuredeployparameters.json'



New-AzureRmResourceGroup -Location 'East Us 2' -Name ComaCorpUnifi

New-AzureRmResourceGroupDeployment -Name vmDeploy -ResourceGroupName ComaCorpUnifi `
                                   -TemplateUri $templateUri `
                                   -TemplateParameterUri $parameterUri `
                                   -verbose `
                                   #-DeploymentDebugLogLevel All 

Get-AzureRmResourceGroupDeploymentOperation -DeploymentName vmDeploy -ResourceGroupName ComaCorpUnifi



#Get-AzureRmResourceGroupDeploymentOperation  -ResourceGroupName ComaCorpUnifi | Where-Object ProvisioningState -eq Failed | out-file C:\users\Alexa\xDev\git\unifi_ubuntu_arm_template\deploy\debug.txt -append

#(Get-AzureRmResourceGroupDeploymentOperation -ResourceGroupName ComaCorpUnifi -DeploymentName vmDeploy).Properties.request | Convertto-Json |  out-file C:\users\Alexa\xDev\git\unifi_ubuntu_arm_template\deploy\debugjson.txt -append 

#(Get-AzureRmResourceGroupDeploymentOperation -ResourceGroupName ComaCorpUnifi -DeploymentName vmDeploy).Properties.response | Convertto-Json |  out-file C:\users\Alexa\xDev\git\unifi_ubuntu_arm_template\deploy\debugjson.txt -append 

#(Get-azureRmResourceGroupDeploymentOperation -ResourceGroupName ComaCorpUnifi -DeploymentName vmDeploy).Properties | Where-Object ProvisioningState -eq Failed | out-file C:\users\Alexa\xDev\git\unifi_ubuntu_arm_template\deploy\debug.txt -append





