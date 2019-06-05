Function Write-Log {
    [CmdletBinding()]
    Param(
    [Parameter(Mandatory=$False)]
    [ValidateSet("INFO","WARN","ERROR","FATAL","DEBUG")]
    [String]
    $Level = "INFO",

    [Parameter(Mandatory=$False)]
    [string]
    $environment,

    [Parameter(Mandatory=$False)]
    [string]
    $systemName,

    [Parameter(Mandatory=$False)]
    [string]
    $instanceName,

    [Parameter(Mandatory=$True)]
    [string]
    $Message,

    [Parameter(Mandatory=$False)]
    [string]
    $logfile
    )

    $properties = @{
        Level = $Level
        Message = $message
        Environment = $environment
        System = $systemName
        InstanceName = $instanceName
        Timestamp = (Get-Date).toString("yyyy/MM/dd HH:mm:ss")
        }
    $logObject = New-Object psobject -Property $properties;

    $Line = ConvertTo-Json $logObject -Compress
    If($logfile) {
        If(!(test-path $logfile))
        {
              New-Item -ItemType File -Force -Path $logfile
        }
        Add-Content $logfile -Value $Line -Force
    }
    Else {
        Write-Output $Line
    }
}

Export-ModuleMember -Function Write-Log
