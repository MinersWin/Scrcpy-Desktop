$Form1 = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Label]$Label1 = $null
[System.Windows.Forms.PictureBox]$PictureBox1 = $null
[System.Windows.Forms.Label]$Label2 = $null
[System.Windows.Forms.TextBox]$TextBox1 = $null
[System.Windows.Forms.Label]$Label3 = $null
[System.Windows.Forms.TextBox]$TextBox2 = $null
[System.Windows.Forms.Label]$Label4 = $null
[System.Windows.Forms.TextBox]$TextBox3 = $null
[System.Windows.Forms.Label]$Label5 = $null
[System.Windows.Forms.TextBox]$TextBox4 = $null
[System.Windows.Forms.Panel]$Panel1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'scrcpy.resources.ps1')
$Label1 = (New-Object -TypeName System.Windows.Forms.Label)
$PictureBox1 = (New-Object -TypeName System.Windows.Forms.PictureBox)
$Label2 = (New-Object -TypeName System.Windows.Forms.Label)
$TextBox1 = (New-Object -TypeName System.Windows.Forms.TextBox)
$Label3 = (New-Object -TypeName System.Windows.Forms.Label)
$TextBox2 = (New-Object -TypeName System.Windows.Forms.TextBox)
$Label4 = (New-Object -TypeName System.Windows.Forms.Label)
$TextBox3 = (New-Object -TypeName System.Windows.Forms.TextBox)
$Label5 = (New-Object -TypeName System.Windows.Forms.Label)
$TextBox4 = (New-Object -TypeName System.Windows.Forms.TextBox)
$Panel1 = (New-Object -TypeName System.Windows.Forms.Panel)
([System.ComponentModel.ISupportInitialize]$PictureBox1).BeginInit()
$Panel1.SuspendLayout()
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
$Label2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]7))
$Label2.Name = [System.String]'Label2'
$Label2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$Label2.TabIndex = [System.Int32]2
$Label2.Text = [System.String]'IP:'
$Label2.UseCompatibleTextRendering = $true
$Label2.add_Click($Label2_Click)
#
#TextBox1
#
$TextBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]33))
$TextBox1.Name = [System.String]'TextBox1'
$TextBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]173,[System.Int32]24))
$TextBox1.TabIndex = [System.Int32]3
$TextBox1.Text = [System.String]'127.0.0.1'
#
#Label3
#
$Label3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]60))
$Label3.Name = [System.String]'Label3'
$Label3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$Label3.TabIndex = [System.Int32]4
$Label3.Text = [System.String]'Max Size:'
$Label3.UseCompatibleTextRendering = $true
#
#TextBox2
#
$TextBox2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]86))
$TextBox2.Name = [System.String]'TextBox2'
$TextBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]173,[System.Int32]24))
$TextBox2.TabIndex = [System.Int32]5
$TextBox2.Text = [System.String]'1080'
#
#Label4
#
$Label4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]113))
$Label4.Name = [System.String]'Label4'
$Label4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$Label4.TabIndex = [System.Int32]6
$Label4.Text = [System.String]'Bitrate'
$Label4.UseCompatibleTextRendering = $true
#
#TextBox3
#
$TextBox3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]139))
$TextBox3.Name = [System.String]'TextBox3'
$TextBox3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]173,[System.Int32]24))
$TextBox3.TabIndex = [System.Int32]7
$TextBox3.Text = [System.String]'2M'
#
#Label5
#
$Label5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]166))
$Label5.Name = [System.String]'Label5'
$Label5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$Label5.TabIndex = [System.Int32]8
$Label5.Text = [System.String]'max FPS'
$Label5.UseCompatibleTextRendering = $true
#
#TextBox4
#
$TextBox4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]192))
$TextBox4.Name = [System.String]'TextBox4'
$TextBox4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]173,[System.Int32]24))
$TextBox4.TabIndex = [System.Int32]9
$TextBox4.Text = [System.String]'15'
#
#Panel1
#
$Panel1.AutoScroll = $true
$Panel1.Controls.Add($TextBox1)
$Panel1.Controls.Add($TextBox4)
$Panel1.Controls.Add($Label2)
$Panel1.Controls.Add($Label5)
$Panel1.Controls.Add($Label3)
$Panel1.Controls.Add($TextBox3)
$Panel1.Controls.Add($TextBox2)
$Panel1.Controls.Add($Label4)
$Panel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]114))
$Panel1.Name = [System.String]'Panel1'
$Panel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]514,[System.Int32]439))
$Panel1.TabIndex = [System.Int32]10
#
#Form1
#
$Form1.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]538,[System.Int32]573))
$Form1.Controls.Add($Panel1)
$Form1.Controls.Add($PictureBox1)
$Form1.Controls.Add($Label1)
$Form1.Cursor = [System.Windows.Forms.Cursors]::Cross
$Form1.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$Form1.Text = [System.String]'TGF Scrcpy Client'
([System.ComponentModel.ISupportInitialize]$PictureBox1).EndInit()
$Panel1.ResumeLayout($false)
$Panel1.PerformLayout()
$Form1.ResumeLayout($false)
Add-Member -InputObject $Form1 -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label1 -Value $Label1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name PictureBox1 -Value $PictureBox1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label2 -Value $Label2 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TextBox1 -Value $TextBox1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label3 -Value $Label3 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TextBox2 -Value $TextBox2 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label4 -Value $Label4 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TextBox3 -Value $TextBox3 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label5 -Value $Label5 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TextBox4 -Value $TextBox4 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Panel1 -Value $Panel1 -MemberType NoteProperty
}
. InitializeComponent
