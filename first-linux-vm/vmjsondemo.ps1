New-AzResourceGroup -Name "json-introduction-01" -Location "eastus"

New-AzResourceGroupDeployment `
    -Name "VmDemoJson1" `
    -ResourceGroupName "json-introduction-01" `
    -TemplateFile "C:\Users\ggftt\OneDrive\Desktop\Azure Training\first-linux-vm\vmjsondemo.json"


Remove-AzResourceGroup -Name json-introduction-01

