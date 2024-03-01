# Register the resource provider if it's not already registered
Register-AzResourceProvider -ProviderNamespace 'Microsoft.PolicyInsights'

# Get a reference to the resource group that is the scope of the assignment
New-AzResourceGroup -Name "azpolicytest" -Location "eastus"
$rg = Get-AzResourceGroup -Name "azpolicytest"

# Get a reference to the built-in policy definition to assign
$definition = Get-AzPolicyDefinition | Where-Object { $_.Properties.DisplayName -eq "Storage accounts should be limited by allowed SKUs" }

# Create the policy assignment with the built-in definition against your resource group
New-AzPolicyAssignment -Name "azstoragepolicytest" -DisplayName 'Storage accounts should be limited by allowed SKUs' -Scope $rg.ResourceId -PolicyDefinition $definition

# Test how it handles the creation of a storage accoun that violates the policy
New-AzResourceGroupDeployment `
    -Name "storagepolicydemo" `
    -ResourceGroupName "azpolicytest" `
    -TemplateFile "C:\Users\ggftt\OneDrive\Desktop\Azure Training\first-azure-policy\storagepolicytest01.json" 

# Test how it handles the creation of a storage account in compliance with the policy
New-AzResourceGroupDeployment `
    -Name "storagepolicydemo2" `
    -ResourceGroupName "azpolicytest" `
    -TemplateFile "C:\Users\ggftt\OneDrive\Desktop\Azure Training\first-storage-account\01-storage.json"