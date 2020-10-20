#MinersWin 2020
#20.10.2020
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

#Settings auslesen
$IP = $TextBoxIP.Text
$MaxSize = $ComboBoxMaxSize.Text
$Bitrate = $ComboBoxBitrate.SelectedItem
$FPS = $ComboBoxMaxFPS.SelectedItem
$WindowTitle = $TextBoxWindowTitle.SelectedItem

if ($TextBoxCropScreen.Enabled){
    $CropScreen = $TextBoxCropScreen.Text
}else{$CropScreen =$false}

if ($RadioButtonNaturalOrientation.Checked){[int]$Orientation=0}elseif($RadioButton90CounterClockwise.Checked){[int]$Orientation=1}elseif($RadioButton180Degree.Checked){[int]$Orientation=2}else{[int]$Orientation=3}


Write-Host "Debug:
IP: $($IP)
MaxSize: $($MaxSize)
Bitrate: $($Bitrate)
FPS: $($FPS)
WindowTitle: $($WindowTitle)
CropScreen: $($CropScreen)
Orientation: $($Orientation)
"

#Call Form
$FormScrcpy.ShowDialog()