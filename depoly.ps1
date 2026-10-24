# ========================================================
# Windows Server 2022 Core - Domain Controller Deployment
# Environment: VirtualBox | Domain: corp.local | Host: DC01
# ========================================================

# 1. Check current IP configuration and network settings (optional verification)
Get-NetIPAddress

# 2. Install Active Directory Domain Services (AD-DS) role
Install-WindowsFeature AD-Domain-Services -IncludeManagementTools

# 3. Promote the server to a Domain Controller and create the new forest
Install-ADDSForest `
    -CreateDnsDelegation:$false `
    -DatabasePath "C:\Windows\NTDS" `
    -DomainMode "Win2022" `
    -DomainName "corp.local" `
    -DomainNetbiosName "CORP" `
    -ForestMode "Win2022" `
    -InstallDns:$true `
    -LogPath "C:\Windows\NTDS" `
    -NoRebootOnCompletion:$false `
    -SysvolPath "C:\Windows\SYSVOL" `
    -Force:$true

# Note: The server will automatically reboot after successful forest promotion.
