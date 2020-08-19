$Label2_Click = {
}
Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'scrcpy.designer.ps1')
$Form1.ShowDialog()