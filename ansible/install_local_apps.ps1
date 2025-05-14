$installers = @( 
    @{ Name = "Chrome"; Path = "C:\Users\vehant\Downloads\ChromeSetup.exe"; Args = "/silent /install" }, 
    @{ Name = "7-Zip"; Path = "C:\Users\vehant\Downloads\7z2301-x64.exe"; Args = "/S" }, 
    @{ Name = "VLC"; Path = "C:\Users\vehant\Downloads\vlc-3.0.20-win64.exe"; Args = "/L=1033 /S" }, 
    @{ Name = "Adobe"; Path = "C:\Users\vehant\Downloads\AdbeRdr1012_en_US.exe"; Args = "/S" }, 
    @{ Name = "AnyDesk"; Path = "C:\Users\vehant\Downloads\AnyDesk.exe"; Args = "/S" }, 
    @{ Name = "FoxitReader"; Path = "C:\Users\vehant\Downloads\FoxitReader331_enu_Setup.exe"; Args = "/S" }, 
    @{ Name = "FreeFilesync"; Path = "C:\Users\vehant\Downloads\FreeFileSync_5.10_setup.exe"; Args = "/S" }, 
    @{ Name = "Libre Office"; Path = "C:\Users\vehant\Downloads\LibreOffice_5.1.3_Win_x86.msi"; Args = "/quiet" }, 
    @{ Name = "MasterPDF"; Path = "C:\Users\vehant\Downloads\MasterPDFEditor-setup-x64.msi"; Args = "/quiet" }, 
    @{ Name = "Teams"; Path = "C:\Users\vehant\Downloads\MSTeamsSetup.exe"; Args = "/S" }, 
    @{ Name = "OpenVPN"; Path = "C:\Users\vehant\Downloads\openvpn-install-2.4.8-I602-Win10.exe"; Args = "/S" }, 
    @{ Name = "Skype"; Path = "C:\Users\vehant\Downloads\Skype-8.68.0.96.exe"; Args = "/S" }, 
    @{ Name = "TeamViewer"; Path = "C:\Users\vehant\Downloads\TeamViewer_Setup_en-ioc.exe"; Args = "/S" }, 
    @{ Name = "Thunderbird"; Path = "C:\Users\vehant\Downloads\thunderbird-102-1-1.exe"; Args = "/S" }, 
    @{ Name = "VLC Old"; Path = "C:\Users\vehant\Downloads\vlc-2.1.5-win64.exe"; Args = "/S" }, 
    @{ Name = "WinRAR"; Path = "C:\Users\vehant\Downloads\winrar-x64-550.exe"; Args = "/S" }, 
    @{ Name = "WinSCP"; Path = "C:\Users\vehant\Downloads\winscp517setup.exe"; Args = "/S" } 
) 
 
foreach ($installer in $installers) { 
    $name = $installer.Name 
    $path = $installer.Path 
    $args = $installer.Args 
 
    if (Test-Path $path) { 
        Write-Host "`nInstalling $name from $path ..." -ForegroundColor Cyan 
        try { 
            Start-Process -FilePath $path -ArgumentList $args -Wait -NoNewWindow 
            Write-Host "Successfully installed $name" -ForegroundColor Green 
        } catch { 
            Write-Host "Failed to install $name: $_" -ForegroundColor Red 
        } 
    } else { 
        Write-Host "Installer not found for $name: $path" -ForegroundColor Yellow 
    } 
} 
