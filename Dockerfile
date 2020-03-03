FROM mcr.microsoft.com/windows/servercore:1607-amd64
RUN @powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin" -Y
RUN choco install tomcat -Y
RUN refreshenv
