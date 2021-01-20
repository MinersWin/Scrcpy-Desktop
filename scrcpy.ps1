#MinersWin 2021
#20.01.2021
#https://miners.win
#Tutorial: https://youtube.com/minerswin
#YouTube: https://youtube.com/TheGeekFreaks
#Forum: https://forum.thegeekfreaks.de
#Website: https://thegeekfreaks.de
#Dev: https://miners.win
#Special Thanks to Joly0!

$scrcpypath = ".\scrcpy\scrcpy.exe"
$adbpath = ".\scrcpy\adb.exe"

Add-Type -AssemblyName System.Windows.Forms

. (Join-Path $PSScriptRoot 'scrcpy.designer.ps1')

$SupportClick = [System.Windows.Forms.MessageBox]::Show("Do you want to support us?`nA few browser tabs will open, you don't have to do anything.","Scrcpy Desktop Client by TGF",'YesNoCancel','Information')
if ($SupportClick -ne "NO"){
    explorer "https://youtu.be/ftVBV-XmAP4"
    explorer "https://amzn.to/3dX3I7x"
    explorer "https://youtu.be/78DBNzVExPw"
    explorer "https://paypal.me/minerswin"
}

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
    if ($IP -ne $null) {
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
    if ($CheckBoxStayAwake.Checked){
        $ConsoleArguments += "--stay-awake"
    }

    $LabelConnectionString.Text = "$ConsoleArguments"
    return $ConsoleArguments
}

function Connect {
    Start-Process -FilePath .\scrcpy\adb.exe -ArgumentList "disconnect"
    Start-Process -FilePath .\scrcpy\adb.exe -ArgumentList "kill-server"
    Start-Sleep 3
	if ($TextBoxIP.Text -eq "") {
        [System.Windows.Forms.MessageBox]::Show("Please Connect your Phone with your PC, make shure ADB is aktivated, Allow your PC if MessageBox Pops Up","Connect your Smartphone with your PC",1)
        $ScrcpyArguments = Get-ScrcpyConsoleArguments
		Write-Host "$ScrcpyArguments"
		Start-Process -FilePath $scrcpypath -ArgumentList $ScrcpyArguments
    }else{
        [System.Windows.Forms.MessageBox]::Show("Please Connect your Phone with your PC, make shure ADB is aktivated, Allow your PC if MessageBox Pops Up","Connect your Smartphone with your PC",1)
		$ScrcpyArguments = Get-ScrcpyConsoleArguments
		Write-Host "$ScrcpyArguments"
		Start $adbpath devices
		.\scrcpy\adb.exe tcpip 5555
        .\scrcpy\adb.exe connect (-join"$TextBoxIP.Text" + ":5555")
        Start-Sleep 3
		.\scrcpy\adb.exe connect $TextBoxIP.Text
		[System.Windows.Forms.MessageBox]::Show("You can now safely Dissconnect your Smartphone from your PC","Connect your Smartphone with your PC",1)
		Start-Process -FilePath '.\scrcpy\scrcpy.exe' -ArgumentList $ScrcpyArguments
	}
}

$ButtonDownload.Add_Click{(Test-Download)}
$ButtonExit.Add_Click{
	Start-Process -FilePath .\scrcpy\adb.exe -ArgumentList "disconnect"
	Start-Process -FilePath .\scrcpy\adb.exe -ArgumentList "kill-server"
	$FormScrcpy.Close()
}
$ButtonConnect.Add_Click{Connect}
$LabelConnectionString.Add_Click{[System.Windows.Forms.MessageBox]::Show("$ScrcpyArguments","TGF Scrcpy",1)}
Debug
#Call Form
$FormScrcpy.ShowDialog()

