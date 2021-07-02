# alle VMs (außer Domaincontroller) herunterfahren
Get-VM | where {($_.State -eq 'Running')} | Stop-VM

#sleep 120

# Domaincontroller herunterfahren
Get-VM | where {($_.State -eq 'Running') -and ($_.Name -like "*-dc*")} | Stop-VM
