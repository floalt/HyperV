$startvms = @(
    'firstvm'
    'secondvm'
    )

foreach ($vm in $startvms) {
    Get-VM | where {($_.State -ne 'Running') -and ($_.Name -like "*$vm*")} | Start-VM
}
