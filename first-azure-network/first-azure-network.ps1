Connect-AzAccount

New-AzResourceGroup -name "jsonvnettest" -Location "eastus"

New-AzResourceGroupDeployment `
    -Name "armnetworktest" `
    -ResourceGroupName "jsonvnettest" `
    -TemplateFile ".\first-azure-network\first-azure-network.json"