$startvms = @(
    'firstvm'
    'secondvm'
    )

foreach ($vms in $startvms) {
    Get-VM | where {($_.State -eq 'Off') -and ($_.Name -like "*$vm*")} | Start-VM
}