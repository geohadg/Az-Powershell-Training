$vmParams = @{
    ResourceGroupName = 'json-introduction-01'
    Name = 'autovmtest'
    Location = 'eastus'
    PublicIpAddressName = 'tutorialPublicIp'
    Credential = Get-Credential -Message "Enter Username and Password"
    OpenPorts = 3389, 22
    Size = 'Standard_D2s_v3'
}
#creates vm resources under variable
$newVM = New-AzVM @vmParams

$newVM | Get-AzNetworkInterface | Select-AzContext
