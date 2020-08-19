$Form1 = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Label]$Label1 = $null
[System.Windows.Forms.PictureBox]$PictureBox1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'scrcpy.resources.ps1')
$Label1 = (New-Object -TypeName System.Windows.Forms.Label)
$PictureBox1 = (New-Object -TypeName System.Windows.Forms.PictureBox)
([System.ComponentModel.ISupportInitialize]$PictureBox1).BeginInit()
$Form1.SuspendLayout()
#
#Label1
#
$Label1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]9))
$Label1.Name = [System.String]'Label1'
$Label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]173,[System.Int32]36))
$Label1.TabIndex = [System.Int32]0
$Label1.Text = [System.String]'Scrcpy GUI Client'
$Label1.UseCompatibleTextRendering = $true
#
#PictureBox1
#
$PictureBox1.Image = ([System.Drawing.Image]$resources.'PictureBox1.Image')
$PictureBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]183,[System.Int32]9))
$PictureBox1.Name = [System.String]'PictureBox1'
$PictureBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]343,[System.Int32]99))
$PictureBox1.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::StretchImage
$PictureBox1.TabIndex = [System.Int32]1
$PictureBox1.TabStop = $false
#
#Form1
#
$Form1.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]538,[System.Int32]573))
$Form1.Controls.Add($PictureBox1)
$Form1.Controls.Add($Label1)
$Form1.Text = [System.String]'Form1'
([System.ComponentModel.ISupportInitialize]$PictureBox1).EndInit()
$Form1.ResumeLayout($false)
Add-Member -InputObject $Form1 -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label1 -Value $Label1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name PictureBox1 -Value $PictureBox1 -MemberType NoteProperty
}
. InitializeComponent
