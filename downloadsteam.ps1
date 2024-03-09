cd\
cd C:\Users\geoha\Downloads
$ProgressPreference = 'silentlycontinue'
invoke-webrequest 'https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe' -outfile 'steamsetup.exe'
C:\Users\geoha\Downloads\steamsetup.exe