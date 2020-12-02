$startvms = @(
    'firstvm'
    'secondvm'
    )

foreach ($vms in $startvms) {
    Get-VM | where {($_.State -ne 'Running') -and ($_.Name -like "*$vm*")} | Start-VM
}
