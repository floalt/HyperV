# Domaincontroller starten
Get-VM | where {($_.State -eq 'Off') -and ($_.Name -like "*-dc*")} | Start-VM

sleep 120

# alle anderen VMs starten
Get-VM | where {($_.State -eq 'Off')} | Start-VM
