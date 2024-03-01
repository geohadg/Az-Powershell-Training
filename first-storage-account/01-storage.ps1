$rg = 'json-introduction-01'

#New-AzResourceGroup -Name $rg -Location "eastus" -Force

New-AzResourceGroupDeployment `
    -Name "storagedemo" `
    -ResourceGroupName $rg `
    -TemplateFile "C:\Users\ggftt\OneDrive\Desktop\Azure Training\first-storage-account\01-storage.json" 

