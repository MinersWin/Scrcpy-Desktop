$Form1 = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Label]$Label1 = $null
[System.Windows.Forms.PictureBox]$PictureBoxLogo = $null
[System.Windows.Forms.Label]$Label2 = $null
[System.Windows.Forms.TextBox]$TextBox1 = $null
[System.Windows.Forms.Label]$Label3 = $null
[System.Windows.Forms.TextBox]$TextBox2 = $null
[System.Windows.Forms.Label]$Label4 = $null
[System.Windows.Forms.TextBox]$TextBox3 = $null
[System.Windows.Forms.Label]$Label5 = $null
[System.Windows.Forms.TextBox]$TextBox4 = $null
[System.Windows.Forms.Panel]$Panel1 = $null
[System.Windows.Forms.Panel]$Panel5 = $null
[System.Windows.Forms.TextBox]$TextBox11 = $null
[System.Windows.Forms.Label]$Label10 = $null
[System.Windows.Forms.TextBox]$TextBox10 = $null
[System.Windows.Forms.Label]$Label9 = $null
[System.Windows.Forms.TextBox]$TextBox9 = $null
[System.Windows.Forms.Label]$Label8 = $null
[System.Windows.Forms.TextBox]$TextBox8 = $null
[System.Windows.Forms.Label]$Label7 = $null
[System.Windows.Forms.CheckBox]$CheckBox4 = $null
[System.Windows.Forms.TextBox]$TextBox7 = $null
[System.Windows.Forms.Label]$Label6 = $null
[System.Windows.Forms.Panel]$Panel4 = $null
[System.Windows.Forms.CheckBox]$CheckBox3 = $null
[System.Windows.Forms.TextBox]$TextBox6 = $null
[System.Windows.Forms.CheckBox]$CheckBox2 = $null
[System.Windows.Forms.Panel]$Panel3 = $null
[System.Windows.Forms.RadioButton]$RadioButton4 = $null
[System.Windows.Forms.RadioButton]$RadioButton3 = $null
[System.Windows.Forms.RadioButton]$RadioButton2 = $null
[System.Windows.Forms.RadioButton]$RadioButton1 = $null
[System.Windows.Forms.Panel]$Panel2 = $null
[System.Windows.Forms.TextBox]$TextBox5 = $null
[System.Windows.Forms.CheckBox]$CheckBox1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'scrcpy.resources.ps1')
$Label1 = (New-Object -TypeName System.Windows.Forms.Label)
$PictureBoxLogo = (New-Object -TypeName System.Windows.Forms.PictureBox)
$Label2 = (New-Object -TypeName System.Windows.Forms.Label)
$TextBox1 = (New-Object -TypeName System.Windows.Forms.TextBox)
$Label3 = (New-Object -TypeName System.Windows.Forms.Label)
$TextBox2 = (New-Object -TypeName System.Windows.Forms.TextBox)
$Label4 = (New-Object -TypeName System.Windows.Forms.Label)
$TextBox3 = (New-Object -TypeName System.Windows.Forms.TextBox)
$Label5 = (New-Object -TypeName System.Windows.Forms.Label)
$TextBox4 = (New-Object -TypeName System.Windows.Forms.TextBox)
$Panel1 = (New-Object -TypeName System.Windows.Forms.Panel)
$Panel5 = (New-Object -TypeName System.Windows.Forms.Panel)
$TextBox11 = (New-Object -TypeName System.Windows.Forms.TextBox)
$Label10 = (New-Object -TypeName System.Windows.Forms.Label)
$TextBox10 = (New-Object -TypeName System.Windows.Forms.TextBox)
$Label9 = (New-Object -TypeName System.Windows.Forms.Label)
$TextBox9 = (New-Object -TypeName System.Windows.Forms.TextBox)
$Label8 = (New-Object -TypeName System.Windows.Forms.Label)
$TextBox8 = (New-Object -TypeName System.Windows.Forms.TextBox)
$Label7 = (New-Object -TypeName System.Windows.Forms.Label)
$CheckBox4 = (New-Object -TypeName System.Windows.Forms.CheckBox)
$TextBox7 = (New-Object -TypeName System.Windows.Forms.TextBox)
$Label6 = (New-Object -TypeName System.Windows.Forms.Label)
$Panel4 = (New-Object -TypeName System.Windows.Forms.Panel)
$CheckBox3 = (New-Object -TypeName System.Windows.Forms.CheckBox)
$TextBox6 = (New-Object -TypeName System.Windows.Forms.TextBox)
$CheckBox2 = (New-Object -TypeName System.Windows.Forms.CheckBox)
$Panel3 = (New-Object -TypeName System.Windows.Forms.Panel)
$RadioButton4 = (New-Object -TypeName System.Windows.Forms.RadioButton)
$RadioButton3 = (New-Object -TypeName System.Windows.Forms.RadioButton)
$RadioButton2 = (New-Object -TypeName System.Windows.Forms.RadioButton)
$RadioButton1 = (New-Object -TypeName System.Windows.Forms.RadioButton)
$Panel2 = (New-Object -TypeName System.Windows.Forms.Panel)
$TextBox5 = (New-Object -TypeName System.Windows.Forms.TextBox)
$CheckBox1 = (New-Object -TypeName System.Windows.Forms.CheckBox)
([System.ComponentModel.ISupportInitialize]$PictureBoxLogo).BeginInit()
$Panel1.SuspendLayout()
$Panel5.SuspendLayout()
$Panel4.SuspendLayout()
$Panel3.SuspendLayout()
$Panel2.SuspendLayout()
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
#PictureBoxLogo
#
$PictureBoxLogo.Image = ([System.Drawing.Image]$resources.'PictureBoxLogo.Image')
$PictureBoxLogo.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]183,[System.Int32]9))
$PictureBoxLogo.Name = [System.String]'PictureBoxLogo'
$PictureBoxLogo.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]343,[System.Int32]99))
$PictureBoxLogo.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::StretchImage
$PictureBoxLogo.TabIndex = [System.Int32]1
$PictureBoxLogo.TabStop = $false
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
$TextBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]173,[System.Int32]21))
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
$TextBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]173,[System.Int32]21))
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
$TextBox3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]173,[System.Int32]21))
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
$TextBox4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]173,[System.Int32]21))
$TextBox4.TabIndex = [System.Int32]9
$TextBox4.Text = [System.String]'15'
#
#Panel1
#
$Panel1.AutoScroll = $true
$Panel1.Controls.Add($Panel5)
$Panel1.Controls.Add($TextBox7)
$Panel1.Controls.Add($Label6)
$Panel1.Controls.Add($Panel4)
$Panel1.Controls.Add($Panel3)
$Panel1.Controls.Add($Panel2)
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
$Panel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]514,[System.Int32]447))
$Panel1.TabIndex = [System.Int32]10
#
#Panel5
#
$Panel5.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$Panel5.Controls.Add($TextBox11)
$Panel5.Controls.Add($Label10)
$Panel5.Controls.Add($TextBox10)
$Panel5.Controls.Add($Label9)
$Panel5.Controls.Add($TextBox9)
$Panel5.Controls.Add($Label8)
$Panel5.Controls.Add($TextBox8)
$Panel5.Controls.Add($Label7)
$Panel5.Controls.Add($CheckBox4)
$Panel5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]275))
$Panel5.Name = [System.String]'Panel5'
$Panel5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]186,[System.Int32]248))
$Panel5.TabIndex = [System.Int32]16
#
#TextBox11
#
$TextBox11.Enabled = $false
$TextBox11.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]215))
$TextBox11.Name = [System.String]'TextBox11'
$TextBox11.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]166,[System.Int32]21))
$TextBox11.TabIndex = [System.Int32]8
$TextBox11.Text = [System.String]'600'
#
#Label10
#
$Label10.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]189))
$Label10.Name = [System.String]'Label10'
$Label10.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$Label10.TabIndex = [System.Int32]7
$Label10.Text = [System.String]'window-height'
$Label10.UseCompatibleTextRendering = $true
#
#TextBox10
#
$TextBox10.Enabled = $false
$TextBox10.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]162))
$TextBox10.Name = [System.String]'TextBox10'
$TextBox10.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]169,[System.Int32]21))
$TextBox10.TabIndex = [System.Int32]6
$TextBox10.Text = [System.String]'800'
#
#Label9
#
$Label9.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]136))
$Label9.Name = [System.String]'Label9'
$Label9.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$Label9.TabIndex = [System.Int32]5
$Label9.Text = [System.String]'window-width'
$Label9.UseCompatibleTextRendering = $true
#
#TextBox9
#
$TextBox9.Enabled = $false
$TextBox9.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]109))
$TextBox9.Name = [System.String]'TextBox9'
$TextBox9.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]166,[System.Int32]21))
$TextBox9.TabIndex = [System.Int32]4
$TextBox9.Text = [System.String]'100'
#
#Label8
#
$Label8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]83))
$Label8.Name = [System.String]'Label8'
$Label8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$Label8.TabIndex = [System.Int32]3
$Label8.Text = [System.String]'window-y'
$Label8.UseCompatibleTextRendering = $true
#
#TextBox8
#
$TextBox8.Enabled = $false
$TextBox8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]56))
$TextBox8.Name = [System.String]'TextBox8'
$TextBox8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]166,[System.Int32]21))
$TextBox8.TabIndex = [System.Int32]2
$TextBox8.Text = [System.String]'100'
#
#Label7
#
$Label7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]30))
$Label7.Name = [System.String]'Label7'
$Label7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$Label7.TabIndex = [System.Int32]1
$Label7.Text = [System.String]'window-x'
$Label7.UseCompatibleTextRendering = $true
#
#CheckBox4
#
$CheckBox4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$CheckBox4.Name = [System.String]'CheckBox4'
$CheckBox4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]166,[System.Int32]24))
$CheckBox4.TabIndex = [System.Int32]0
$CheckBox4.Text = [System.String]'Position and Size'
$CheckBox4.UseCompatibleTextRendering = $true
$CheckBox4.UseVisualStyleBackColor = $true
#
#TextBox7
#
$TextBox7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]245))
$TextBox7.Name = [System.String]'TextBox7'
$TextBox7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]173,[System.Int32]21))
$TextBox7.TabIndex = [System.Int32]15
$TextBox7.Text = [System.String]'My Device'
#
#Label6
#
$Label6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]219))
$Label6.Name = [System.String]'Label6'
$Label6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$Label6.TabIndex = [System.Int32]14
$Label6.Text = [System.String]'Window Title'
$Label6.UseCompatibleTextRendering = $true
#
#Panel4
#
$Panel4.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$Panel4.Controls.Add($CheckBox3)
$Panel4.Controls.Add($TextBox6)
$Panel4.Controls.Add($CheckBox2)
$Panel4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]195,[System.Int32]222))
$Panel4.Name = [System.String]'Panel4'
$Panel4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]69))
$Panel4.TabIndex = [System.Int32]13
#
#CheckBox3
#
$CheckBox3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]95,[System.Int32]3))
$CheckBox3.Name = [System.String]'CheckBox3'
$CheckBox3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]104,[System.Int32]24))
$CheckBox3.TabIndex = [System.Int32]2
$CheckBox3.Text = [System.String]'No Display'
$CheckBox3.UseCompatibleTextRendering = $true
$CheckBox3.UseVisualStyleBackColor = $true
#
#TextBox6
#
$TextBox6.Enabled = $false
$TextBox6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]33))
$TextBox6.Name = [System.String]'TextBox6'
$TextBox6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]192,[System.Int32]21))
$TextBox6.TabIndex = [System.Int32]1
$TextBox6.Text = [System.String]'file.mp4'
#
#CheckBox2
#
$CheckBox2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$CheckBox2.Name = [System.String]'CheckBox2'
$CheckBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]77,[System.Int32]24))
$CheckBox2.TabIndex = [System.Int32]0
$CheckBox2.Text = [System.String]'Record'
$CheckBox2.UseCompatibleTextRendering = $true
$CheckBox2.UseVisualStyleBackColor = $true
#
#Panel3
#
$Panel3.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$Panel3.Controls.Add($RadioButton4)
$Panel3.Controls.Add($RadioButton3)
$Panel3.Controls.Add($RadioButton2)
$Panel3.Controls.Add($RadioButton1)
$Panel3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]195,[System.Int32]86))
$Panel3.Name = [System.String]'Panel3'
$Panel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]130))
$Panel3.TabIndex = [System.Int32]12
#
#RadioButton4
#
$RadioButton4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]93))
$RadioButton4.Name = [System.String]'RadioButton4'
$RadioButton4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]192,[System.Int32]26))
$RadioButton4.TabIndex = [System.Int32]3
$RadioButton4.TabStop = $true
$RadioButton4.Text = [System.String]'90° clockwise'
$RadioButton4.UseCompatibleTextRendering = $true
$RadioButton4.UseVisualStyleBackColor = $true
#
#RadioButton3
#
$RadioButton3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]63))
$RadioButton3.Name = [System.String]'RadioButton3'
$RadioButton3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]192,[System.Int32]24))
$RadioButton3.TabIndex = [System.Int32]2
$RadioButton3.TabStop = $true
$RadioButton3.Text = [System.String]'180°'
$RadioButton3.UseCompatibleTextRendering = $true
$RadioButton3.UseVisualStyleBackColor = $true
#
#RadioButton2
#
$RadioButton2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]33))
$RadioButton2.Name = [System.String]'RadioButton2'
$RadioButton2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]192,[System.Int32]24))
$RadioButton2.TabIndex = [System.Int32]1
$RadioButton2.TabStop = $true
$RadioButton2.Text = [System.String]'90° counterclockwise'
$RadioButton2.UseCompatibleTextRendering = $true
$RadioButton2.UseVisualStyleBackColor = $true
#
#RadioButton1
#
$RadioButton1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$RadioButton1.Name = [System.String]'RadioButton1'
$RadioButton1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]192,[System.Int32]24))
$RadioButton1.TabIndex = [System.Int32]0
$RadioButton1.TabStop = $true
$RadioButton1.Text = [System.String]'natureal Orientation'
$RadioButton1.UseCompatibleTextRendering = $true
$RadioButton1.UseVisualStyleBackColor = $true
#
#Panel2
#
$Panel2.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$Panel2.Controls.Add($TextBox5)
$Panel2.Controls.Add($CheckBox1)
$Panel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]195,[System.Int32]10))
$Panel2.Name = [System.String]'Panel2'
$Panel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]73))
$Panel2.TabIndex = [System.Int32]11
#
#TextBox5
#
$TextBox5.Enabled = $false
$TextBox5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]-1,[System.Int32]33))
$TextBox5.Name = [System.String]'TextBox5'
$TextBox5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]196,[System.Int32]21))
$TextBox5.TabIndex = [System.Int32]11
$TextBox5.Text = [System.String]'1224:1440:0:0'
#
#CheckBox1
#
$CheckBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$CheckBox1.Name = [System.String]'CheckBox1'
$CheckBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]104,[System.Int32]24))
$CheckBox1.TabIndex = [System.Int32]10
$CheckBox1.Text = [System.String]'Crop Screen'
$CheckBox1.UseCompatibleTextRendering = $true
$CheckBox1.UseVisualStyleBackColor = $true
#
#Form1
#
$Form1.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]538,[System.Int32]573))
$Form1.Controls.Add($Panel1)
$Form1.Controls.Add($PictureBoxLogo)
$Form1.Controls.Add($Label1)
$Form1.Cursor = [System.Windows.Forms.Cursors]::Cross
$Form1.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::Fixed3D
$Form1.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$Form1.KeyPreview = $true
$Form1.Text = [System.String]'TGF Scrcpy Client'
([System.ComponentModel.ISupportInitialize]$PictureBoxLogo).EndInit()
$Panel1.ResumeLayout($false)
$Panel1.PerformLayout()
$Panel5.ResumeLayout($false)
$Panel5.PerformLayout()
$Panel4.ResumeLayout($false)
$Panel4.PerformLayout()
$Panel3.ResumeLayout($false)
$Panel2.ResumeLayout($false)
$Panel2.PerformLayout()
$Form1.ResumeLayout($false)
Add-Member -InputObject $Form1 -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label1 -Value $Label1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name PictureBoxLogo -Value $PictureBoxLogo -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label2 -Value $Label2 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TextBox1 -Value $TextBox1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label3 -Value $Label3 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TextBox2 -Value $TextBox2 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label4 -Value $Label4 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TextBox3 -Value $TextBox3 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label5 -Value $Label5 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TextBox4 -Value $TextBox4 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Panel1 -Value $Panel1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Panel5 -Value $Panel5 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TextBox11 -Value $TextBox11 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label10 -Value $Label10 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TextBox10 -Value $TextBox10 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label9 -Value $Label9 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TextBox9 -Value $TextBox9 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label8 -Value $Label8 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TextBox8 -Value $TextBox8 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label7 -Value $Label7 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name CheckBox4 -Value $CheckBox4 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TextBox7 -Value $TextBox7 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label6 -Value $Label6 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Panel4 -Value $Panel4 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name CheckBox3 -Value $CheckBox3 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TextBox6 -Value $TextBox6 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name CheckBox2 -Value $CheckBox2 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Panel3 -Value $Panel3 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name RadioButton4 -Value $RadioButton4 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name RadioButton3 -Value $RadioButton3 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name RadioButton2 -Value $RadioButton2 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name RadioButton1 -Value $RadioButton1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Panel2 -Value $Panel2 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TextBox5 -Value $TextBox5 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name CheckBox1 -Value $CheckBox1 -MemberType NoteProperty
}
. InitializeComponent
