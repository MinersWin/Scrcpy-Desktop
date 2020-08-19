$Form1 = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Label]$Label1 = $null
[System.Windows.Forms.PictureBox]$PictureBox1 = $null
[System.Windows.Forms.Label]$Label2 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'scrcpy.resources.ps1')
$Label1 = (New-Object -TypeName System.Windows.Forms.Label)
$PictureBox1 = (New-Object -TypeName System.Windows.Forms.PictureBox)
$Label2 = (New-Object -TypeName System.Windows.Forms.Label)
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
#Label2
#
$Label2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]151))
$Label2.Name = [System.String]'Label2'
$Label2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$Label2.TabIndex = [System.Int32]2
$Label2.Text = [System.String]'Label2'
$Label2.UseCompatibleTextRendering = $true
#
#Form1
#
$Form1.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]538,[System.Int32]573))
$Form1.Controls.Add($Label2)
$Form1.Controls.Add($PictureBox1)
$Form1.Controls.Add($Label1)
$Form1.Cursor = [System.Windows.Forms.Cursors]::Cross
$Form1.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$Form1.Text = [System.String]'TGF Scrcpy Client'
([System.ComponentModel.ISupportInitialize]$PictureBox1).EndInit()
$Form1.ResumeLayout($false)
Add-Member -InputObject $Form1 -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label1 -Value $Label1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name PictureBox1 -Value $PictureBox1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label2 -Value $Label2 -MemberType NoteProperty
}
. InitializeComponent
