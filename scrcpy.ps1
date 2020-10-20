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













#Call Form
$FormScrcpy.ShowDialog()