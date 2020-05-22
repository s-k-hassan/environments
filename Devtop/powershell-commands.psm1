function New-TestMachines {
    param(
        $Number = 5,
        $Template = 'ubuntu-server-template',
        $VMHost = (Get-VMHost | Get-Random)
    )
    for ($count = 1; $count -le $number; $count++) {
        New-VM -Name "test2-$count" -Template $Template -VMHost $VMHost
    }
}

function Get-VMIP {
    param (
        $VMname="*"
    )
    Get-VM $VMname | Select-Object Name,VMHost, @{N="IP Address";E={@($_.guest.IPAddress[0])}}
    
}