# Install Nuget Package Manager
Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force -Scope CurrentUser

# Install azure cli tool i.e. az
Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'

# Install PowerBI Management Library
Install-Module -Name MicrosoftPowerBIMgmt -Force -AllowClobber -Scope CurrentUser

# Install azure cmdlet
Install-Module -Name Az -Repository PSGallery -Force -Scope CurrentUser
