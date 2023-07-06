FROM mcr.microsoft.com/powershell:lts-ubuntu-22.04	

RUN apt-get update \
    && apt-get -y install --no-install-recommends git \
    && apt-get autoremove -y \
    && apt-get clean -y \ 
    && rm -rf /var/lib/apt/lists/*

RUN pwsh -c 'Install-Module -Name Az.Accounts -Scope AllUsers -Repository PSGallery -Force'

RUN pwsh -c 'Install-Module -Name AzAPICall -RequiredVersion 1.1.72 -Scope AllUsers -Repository PSGallery -Force'
