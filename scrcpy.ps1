#MinersWin 2020
#21.10.2020
#https://miners.win
#Tutorial: https://youtube.com/minerswin
#YouTube: https://youtube.com/TheGeekFreaks
#Forum: https://forum.thegeekfreaks.de
#Website: https://thegeekfreaks.de
#Dev: https://miners.win

Add-Type -AssemblyName System.Windows.Forms

. (Join-Path $PSScriptRoot 'scrcpy.designer.ps1')

$TextBoxWindowTitle.Text = "Scrcpy"
$Gedownloaded = Test-Path .\scrcpy\
if ($Gedownloaded) {
    $ButtonDownload.ForeColor = "Green"
    $ButtonDownload.Text = "Scrcpy Installiert"
    $ButtonDownload.Enabled = $false
} else {
    $ButtonDownload.ForeColor = "Red"
    $ButtonDownload.Text = "Scrcpy Installieren"
    $ButtonDownload.Enabled = $true
}

##Initial Settings
$RadioButtonNaturalOrientation.Checked = $true
#Deactivate Unneeded Objects
$TextBoxCropScreen.Enabled = $false

$ButtonCropScreen.Add_Click{
    if ($TextBoxCropScreen.Enabled){
        $TextBoxCropScreen.Enabled = $false
    } else {
        $TextBoxCropScreen.Enabled = $true
    }
}

$ButtonPositionandSize.Add_Click{
    if ($TextBoxWindowX.Enabled){
        $TextBoxWindowX.Enabled = $false
        $TextBoxWindowY.Enabled = $false
        $TextBoxWindowHeight.Enabled = $false
        $TextBoxWindowWidth.Enabled = $false
    } else {
        $TextBoxWindowX.Enabled = $true
        $TextBoxWindowY.Enabled = $true
        $TextBoxWindowHeight.Enabled = $true
        $TextBoxWindowWidth.Enabled = $true
    }
}
##############################################################################
###########################Settings auslesen##################################
##############################################################################
function Read-Settings {
    [pscustomobject]@{
        'IP'           = $TextBoxIP.Text
        'MaxSize'      = $ComboBoxMaxSize.Text
        'Bitrate'      = $ComboBoxBitrate.Text
        'FPS'          = $ComboBoxMaxFPS.Text
        'WindowTitle'  = $TextBoxWindowTitle.Text
        'CropScreen'   = if ($TextBoxCropScreen.Enabled) { $TextBoxCropScreen.Text } else { '' }
        'Recording'    = $CheckBoxRecord.Checked
        'Display'      = $CheckBoxNoDisplay.Checked
        'Filepath'     = $TextBoxRecordFile.Text
        'WindowX'      = $TextBoxWindowX.Text
        'WindowY'  `   = $TextBoxWindowY.Text
        'WindowWidth'  = $TextBoxWindowWidth.Text
        'WindowHeight' = $TextBoxWindowHeight.Text
        'Orientation'  = if ($RadioButtonNaturalOrientation.Checked) {
            0
        } elseif ($RadioButton90CounterClockwise.Checked) {
            1
        } elseif ($RadioButton180Degree.Checked) {
            2
        } else {
            3
        }
    }
}

$PictureBoxLogo.Add_Click{Debug}
function Debug{
    Write-Host "Debug:"
    Read-Settings | Out-Host
}

#Download Scrcpy
$Internet = Test-Connection 45.142.177.78 -Count 1 -Quiet

if ($Internet) {
    "$(Get-Date) Internetverbindung: Online"
} else {
    "$(Get-Date) Internetverbindung: Offline"
}

function Test-Download{
    $Gedownloaded = Test-Path .\scrcpy\
    if ($Gedownloaded){
        Write-Output "$(Get-Date) Scrcpy wurde bereits heruntergeladen"
        $ButtonDownload.ForeColor = Green
    } else {
        if ($Internet){
            Write-Output "$(Get-Date) Scrcpy muss heruntergeladen werden"
            Download-Scrcpy
        } else {
            Write-Output "$(Get-Date) Scrcpy ist nicht Installiert, jedoch besteht keine Internetverbindung. Das Programm wird beendet."
            $FormScrcpy.Close()
        }
    }
}
function Download-Scrcpy{
    if (-not $Gedownloaded) {
        Write-Host "Scrcpy Download wird vom TGF Mirror gestartet"
        $url = "https://cdn.thegeekfreaks.de/Download/scrcpy.zip"
        $output = Join-Path -Path "$PWD" -ChildPath "scrcpy.zip"
        $start_time = Get-Date
        (New-Object System.Net.WebClient).DownloadFile($url, $output)
        Write-Host "Download fertiggestellt`nDownloadzeit: $((Get-Date).Subtract($start_time).Seconds) Sekunde(n)`nEntpacke Archiv ..."
        Expand-Archive -Path $output -DestinationPath .\scrcpy\
        Write-Host "Archiv erfolgreich entpackt, Lösche Temporäre Download Files ...."
        rm $output
        Write-Host "Done" -ForegroundColor Green
    }
    $Gedownloaded = Test-Path .\scrcpy\
    if ($Gedownloaded) {
        $ButtonDownload.ForeColor = "Green"
        $ButtonDownload.Text = "Scrcpy Installiert"
        $ButtonDownload.Enabled = $false
    } else {
        $ButtonDownload.ForeColor = "Red"
        $ButtonDownload.Text="Scrcpy Installieren"
        $ButtonDownload.Enabled = $true
    }
}

function Get-ScrcpyConsoleArguments {
    <#
        Gets the console arguments for scrcpy
    #>
    $settings = Read-Settings

    [array]$ConsoleArguments = @(
        "-m $($settings.MaxSize)",
        "--bit-rate $($settings.Bitrate)",
        "--max-fps $($settings.FPS)",
        "--rotation $($settings.Orientation)",
        "--window-title $($settings.WindowTitle)"
    )

    if ($TextBoxCropScreen.Enabled) {
        $ConsoleArguments += "--crop $($Settings.CropScreen)"
    }
    if ($Recording) {
        if ($Display) {
            $ConsoleArguments += "--no-display"
        }
        $ConsoleArguments += "--record $($settings.Filepath)"
    }
    if ($IP -ne "") {
        $ConsoleArguments += "--serial $($settings.IP)"
    }
    if ($TextBoxWindowX.Enabled) {
        $ConsoleArguments += "--window-x $($settings.WindowX) --window-y $($settings.WindowY) --window-width $($settings.WindowWidth) --window-height $($settings.WindowHeight)"
    }
    if ($CheckBoxBorderless.Checked) {
        $ConsoleArguments += "--window-borderless"
    }
    if ($CheckBoxAlwaysonTop.Checked) {
        $ConsoleArguments += "--always-on-top"
    }
    if ($CheckBoxFullscreen.Checked) {
        $ConsoleArguments += "--fullscreen"
    }

    $LabelConnectionString.Text = "$ConsoleArguments"
    return $ConsoleArguments
}

function Connect {
	if ($TextBoxIP.Text -eq "") {
        $ScrcpyArguments = Get-ScrcpyConsoleArguments
		Write-Host "$ScrcpyArguments"
		Start-Process -FilePath '.\scrcpy\scrcpy.exe' -ArgumentList $ScrcpyArguments
    }else{
		$ScrcpyArguments = Get-ScrcpyConsoleArguments
		Write-Host "$ScrcpyArguments"
		.\scrcpy\adb.exe devices
		[System.Windows.Forms.MessageBox]::Show("Accept Connection if your Device asks for it","Connect your Smartphone with your PC",1)
		.\scrcpy\adb.exe tcpip 5555
		.\scrcpy\adb.exe connect (-join"$TextBoxIP.Text" + ":5555")
		.\scrcpy\adb.exe connect $TextBoxIP.Text
		[System.Windows.Forms.MessageBox]::Show("Disconnect your Smartphone from your PC")
		Start-Process -FilePath '.\scrcpy\scrcpy.exe' -ArgumentList $ScrcpyArguments
	}
}

$ButtonDownload.Add_Click{(Test-Download)}
$ButtonExit.Add_Click{
	.\scrcpy\adb.exe disconnect
	.\scrcpy\adb.exe kill-server
	$FormScrcpy.Close()
}
$ButtonConnect.Add_Click{Connect}
$LabelConnectionString.Add_Click{[System.Windows.Forms.MessageBox]::Show("$ScrcpyArguments","TGF Scrcpy",1)}
Debug
#Call Form
$FormScrcpy.ShowDialog()

