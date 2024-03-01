#Get-AzResourceGroup | Where-Object { $_.ResourceGroupName -eq 'default'} | Select ResourceGroupName, Location
New-AzResourceGroup -Name VmDemo -location 'eastus'
New-AzVM -ResourceGroupName VMDemo -location 'eastus' -Name vm1 -Image Ubuntu220
Enter-AzVM -name name -ResourceGroupName rgname -username uname -rdp 

you want to grab a specific property of a vm
get-AzVM -name name | Select ResourceGroupName
