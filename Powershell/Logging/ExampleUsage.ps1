Import-Module $PSScriptRoot\JsonLogging.psm1

Write-Log -Level INFO -Environment $environment -SystemName $systemName -InstanceName $instanceName -LogFile $logFile -Message "Everything worked ok!"
