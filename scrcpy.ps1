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
if ($Gedownloaded){$ButtonDownload.ForeColor = "Green"; $ButtonDownload.Text = "Scrcpy Installiert"; $ButtonDownload.Enabled = $false}else{$ButtonDownload.ForeColor = "Red"; $ButtonDownload.Text="Scrcpy Installieren";$ButtonDownload.Enabled = $true}

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
function Read-Settings{
    $script:IP = $TextBoxIP.Text
    $script:MaxSize = $ComboBoxMaxSize.Text
    $script:Bitrate = $ComboBoxBitrate.Text
    $script:FPS = $ComboBoxMaxFPS.Text
    [string]$script:WindowTitle = $TextBoxWindowTitle.Text
    #CropScreen
    if ($TextBoxCropScreen.Enabled){
        $script:CropScreen = $TextBoxCropScreen.Text
    }else{
        $script:CropScreen =$false
    }
    #Orientation
    if ($RadioButtonNaturalOrientation.Checked){
        [int]$script:Orientation=0
    }elseif($RadioButton90CounterClockwise.Checked){
        [int]$script:Orientation=1
    }elseif($RadioButton180Degree.Checked){
        [int]$script:Orientation=2
    }else{
        [int]$script:Orientation=3
    }
    #record
    [bool]$script:Recording = $CheckBoxRecord.Checked
    [bool]$script:Display = $CheckBoxNoDisplay.Checked
    $script:Filepath = $TextBoxRecordFile.Text
    $script:WindowX = $TextBoxWindowX.Text
    $script:WindowY = $TextBoxWindowY.Text
    $script:WindowWidth = $TextBoxWindowWidth.Text
    $script:WindowHeight = $TextBoxWindowHeight.Text

}

$PictureBoxLogo.Add_Click{Debug}
function Debug{
    Read-Settings
    Write-Host "`n`n`nDebug:`nIP: $($IP)`nMaxSize: $($MaxSize)`nBitrate: $($Bitrate)`nFPS: $($FPS)`nWindowTitle: $($WindowTitle)`nCropScreen: $($CropScreen)`nOrientation: $($Orientation)`nRecording: $($Recording)`nShow Display: $($Display)`nFilepath: $($Filepath)`nWindowX: $($WindowX)`nWindowY: $($WindowY)`nWindowWidth: $($WindowWidth)`nWindowHeight: $($WindowHeight)"
}


#Download Scrcpy
while (!(test-connection 45.142.177.78 -Count 1 -Quiet)) {
    $Verbindungbesteht = $true
    break
}
if ($Verbindungbesteht){
    $Internet = $false
} else {
    $Internet = $true
}
if ($Internet){
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
    if ($Gedownloaded){

    }else{
        Write-Host "Scrcpy Download wird vom TGF Mirror gestartet"
        $url = "https://cdn.thegeekfreaks.de/Download/scrcpy.zip"
        $output = ".\scrcpy.zip"
        $start_time = Get-Date
        (New-Object System.Net.WebClient).DownloadFile($url, $output)
        Write-Host "Download fertiggestellt`nDownloadzeit: $((Get-Date).Subtract($start_time).Seconds) Sekunde(n)`nEntpacke Archiv ..."
        Expand-Archive -Path .\scrcpy.zip -DestinationPath .\scrcpy\
        Write-Host "Archiv erfolgreich entpackt, Lösche Temporäre Download Files ...."
        rm .\scrcpy.zip
        Write-Host "Done" -ForegroundColor Green
    }
    $Gedownloaded = Test-Path .\scrcpy\
    if ($Gedownloaded){$ButtonDownload.ForeColor = "Green"; $ButtonDownload.Text = "Scrcpy Installiert"; $ButtonDownload.Enabled = $false}else{$ButtonDownload.ForeColor = "Red"; $ButtonDownload.Text="Scrcpy Installieren";$ButtonDownload.Enabled = $true}
}

function Form_String{
    Read-Settings
    $script:ConsoleString=""
    $script:ConsoleString += "-m $($MaxSize) --bit-rate $($Bitrate) --max-fps $($FPS) --rotation $($Orientation) --window-title $($WindowTitle)"
    if ($TextBoxCropScreen.Enabled){
        $script:ConsoleString += " --crop $CropScreen"
    }
    if ($Recording){
        if ($Display){
            $script:ConsoleString += " --no-display"
        }
        $script:ConsoleString += " --record $($Filepath)"
    }
    if ($IP -ne ""){
        $script:ConsoleString += " --serial $($IP)"
    }
    if ($TextBoxWindowX.Enabled){
        $script:ConsoleString += " --window-x $($WindowX) --window-y $($WindowY) --window-width $($WindowWidth) --window-height $($WindowHeight)"
    }
    if ($CheckBoxBorderless.Checked){
        $script:ConsoleString += " --window-borderless"
    }
    if ($CheckBoxAlwaysonTop.Checked){
        $script:ConsoleString += " --always-on-top"
    }
    if ($CheckBoxFullscreen.Checked){
        $script:ConsoleString += " --fullscreen"
    }
    $LabelConnectionString.Text = $ConsoleString.ToString()
}

function Connect{
    Form_String
    Write-Host $ConsoleString
    #.\scrcpy\scrcpy.exe $ConsoleString
    Start-Process .\scrcpy\scrcpy.exe -ArgumentList $ConsoleString
    #start .\scrcpy.exe /c "$($ConsoleString)"
}

$ButtonDownload.Add_Click{(Test-Download)}
$ButtonExit.Add_Click{$FormScrcpy.Close()}
$ButtonConnect.Add_Click{Connect}
$LabelConnectionString.Add_Click{[System.Windows.Forms.MessageBox]::Show($ConsoleString,"TGF Scrcpy",1)}
Form_String
Debug
#Call Form
$FormScrcpy.ShowDialog()