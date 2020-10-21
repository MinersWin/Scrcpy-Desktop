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
    $script:MaxSize = $ComboBoxMaxSize.SelectedItem
    $script:Bitrate = $ComboBoxBitrate.SelectedItem
    $script:FPS = $ComboBoxMaxFPS.SelectedItem
    $script:WindowTitle = $TextBoxWindowTitle.Text
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

function Download-Scrcpy{
    $Gedownloaded = Test-Path .\scrcpy\
    if ($Gedownloaded){
        Write-Output "$(Get-Date) Scrcpy wurde bereits heruntergeladen"
    } else {
        if ($Internet){
            Write-Output "$(Get-Date) Scrcpy muss heruntergeladen werden"
        } else {
            Write-Output "$(Get-Date) Scrcpy ist nicht Installiert, jedoch besteht keine Internetverbindung. Das Programm wird beendet."
        }
    }

    Write-Host "Scrcpy Download wird vom TGF Mirror gestartet"
    $url = "https://cdn.thegeekfreaks.de/Download/scrcpy.zip"
    $output = ".\scrcpy.zip"
    $start_time = Get-Date
    (New-Object System.Net.WebClient).DownloadFile($url, $output)
    Write-Host "Download fertiggestellt"
    Write-Output "Downloadzeit: $((Get-Date).Subtract($start_time).Seconds) Sekunde(n)"
}

function Form_String{
    [string]$ConsoleString=""
    $ConsoleString += "--max-size $($MaxSize) --bit-rate $($Bitrate) --max-fps $($FPS) --rotation $($Orientation) --window-title $($WindowTitle)"
    if ($TextBoxCropScreen.Enabled){
        $ConsoleString += "--crop $CropScreen"
    }
    if ($Recording){
        if ($Display){
            $ConsoleString += "--no-display"
        }
        $ConsoleString += "--record $($Filepath)"
    }
    if ($IP -ne ""){
        $ConsoleString += "--serial $($IP)"
    }
    if ($TextBoxWindowX.Enabled){
        $ConsoleString += "--window-x $($WindowX) --window-y $($WindowY) --window-width $($WindowWidth) --window-height $($WindowHeight)"
    }
}

$TextBoxIP.Add_Click{(Download-Scrcpy)}
Debug-Function
#Call Form
$FormScrcpy.ShowDialog()