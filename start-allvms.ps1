# Domaincontroller starten
Get-VM | where {($_.State -ne 'Running') -and ($_.Name -like "*-dc*")} | Start-VM

sleep 120

# alle anderen VMs starten
Get-VM | where {($_.State -ne 'Running')} | Start-VM
