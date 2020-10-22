$FormScrcpy = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Label]$LabelMain = $null
[System.Windows.Forms.PictureBox]$PictureBoxLogo = $null
[System.Windows.Forms.Label]$LabelIP = $null
[System.Windows.Forms.TextBox]$TextBoxIP = $null
[System.Windows.Forms.Label]$LabelMaxSize = $null
[System.Windows.Forms.Label]$LabelBitrate = $null
[System.Windows.Forms.Label]$LabelMaxFPS = $null
[System.Windows.Forms.Panel]$PanelMain = $null
[System.Windows.Forms.Button]$ButtonDownload = $null
[System.Windows.Forms.Button]$ButtonExit = $null
[System.Windows.Forms.Panel]$PanelSettings = $null
[System.Windows.Forms.ComboBox]$ComboBoxBitrate = $null
[System.Windows.Forms.ComboBox]$ComboBoxMaxSize = $null
[System.Windows.Forms.ComboBox]$ComboBoxMaxFPS = $null
[System.Windows.Forms.TextBox]$TextBoxWindowTitle = $null
[System.Windows.Forms.Label]$LabelWindowTitle = $null
[System.Windows.Forms.Button]$ButtonConnect = $null
[System.Windows.Forms.Panel]$PanelPositionAndSize = $null
[System.Windows.Forms.CheckBox]$CheckBoxFullscreen = $null
[System.Windows.Forms.CheckBox]$CheckBoxAlwaysonTop = $null
[System.Windows.Forms.CheckBox]$CheckBoxBorderless = $null
[System.Windows.Forms.Button]$ButtonPositionandSize = $null
[System.Windows.Forms.TextBox]$TextBoxWindowHeight = $null
[System.Windows.Forms.Label]$LabelWindowHeight = $null
[System.Windows.Forms.TextBox]$TextBoxWindowWidth = $null
[System.Windows.Forms.Label]$LabelWindowWidth = $null
[System.Windows.Forms.TextBox]$TextBoxWindowY = $null
[System.Windows.Forms.Label]$LabelWindowY = $null
[System.Windows.Forms.TextBox]$TextBoxWindowX = $null
[System.Windows.Forms.Label]$LabelWindowX = $null
[System.Windows.Forms.Panel]$PanelRecord = $null
[System.Windows.Forms.CheckBox]$CheckBoxNoDisplay = $null
[System.Windows.Forms.TextBox]$TextBoxRecordFile = $null
[System.Windows.Forms.CheckBox]$CheckBoxRecord = $null
[System.Windows.Forms.Panel]$PanelOrientation = $null
[System.Windows.Forms.RadioButton]$RadioButton90Clockwise = $null
[System.Windows.Forms.RadioButton]$RadioButton180Degree = $null
[System.Windows.Forms.RadioButton]$RadioButton90CounterClockwise = $null
[System.Windows.Forms.RadioButton]$RadioButtonNaturalOrientation = $null
[System.Windows.Forms.Panel]$PanelCropScreen = $null
[System.Windows.Forms.Button]$ButtonCropScreen = $null
[System.Windows.Forms.TextBox]$TextBoxCropScreen = $null
[System.Windows.Forms.Label]$LabelConnectionString = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'scrcpy.resources.ps1')
$LabelMain = (New-Object -TypeName System.Windows.Forms.Label)
$PictureBoxLogo = (New-Object -TypeName System.Windows.Forms.PictureBox)
$LabelIP = (New-Object -TypeName System.Windows.Forms.Label)
$TextBoxIP = (New-Object -TypeName System.Windows.Forms.TextBox)
$LabelMaxSize = (New-Object -TypeName System.Windows.Forms.Label)
$LabelBitrate = (New-Object -TypeName System.Windows.Forms.Label)
$LabelMaxFPS = (New-Object -TypeName System.Windows.Forms.Label)
$PanelMain = (New-Object -TypeName System.Windows.Forms.Panel)
$ButtonConnect = (New-Object -TypeName System.Windows.Forms.Button)
$ButtonExit = (New-Object -TypeName System.Windows.Forms.Button)
$PanelSettings = (New-Object -TypeName System.Windows.Forms.Panel)
$ComboBoxBitrate = (New-Object -TypeName System.Windows.Forms.ComboBox)
$ComboBoxMaxSize = (New-Object -TypeName System.Windows.Forms.ComboBox)
$ComboBoxMaxFPS = (New-Object -TypeName System.Windows.Forms.ComboBox)
$TextBoxWindowTitle = (New-Object -TypeName System.Windows.Forms.TextBox)
$LabelWindowTitle = (New-Object -TypeName System.Windows.Forms.Label)
$PanelPositionAndSize = (New-Object -TypeName System.Windows.Forms.Panel)
$ButtonPositionandSize = (New-Object -TypeName System.Windows.Forms.Button)
$TextBoxWindowHeight = (New-Object -TypeName System.Windows.Forms.TextBox)
$LabelWindowHeight = (New-Object -TypeName System.Windows.Forms.Label)
$TextBoxWindowWidth = (New-Object -TypeName System.Windows.Forms.TextBox)
$LabelWindowWidth = (New-Object -TypeName System.Windows.Forms.Label)
$TextBoxWindowY = (New-Object -TypeName System.Windows.Forms.TextBox)
$LabelWindowY = (New-Object -TypeName System.Windows.Forms.Label)
$TextBoxWindowX = (New-Object -TypeName System.Windows.Forms.TextBox)
$LabelWindowX = (New-Object -TypeName System.Windows.Forms.Label)
$PanelRecord = (New-Object -TypeName System.Windows.Forms.Panel)
$CheckBoxNoDisplay = (New-Object -TypeName System.Windows.Forms.CheckBox)
$TextBoxRecordFile = (New-Object -TypeName System.Windows.Forms.TextBox)
$CheckBoxRecord = (New-Object -TypeName System.Windows.Forms.CheckBox)
$PanelOrientation = (New-Object -TypeName System.Windows.Forms.Panel)
$RadioButton90Clockwise = (New-Object -TypeName System.Windows.Forms.RadioButton)
$RadioButton180Degree = (New-Object -TypeName System.Windows.Forms.RadioButton)
$RadioButton90CounterClockwise = (New-Object -TypeName System.Windows.Forms.RadioButton)
$RadioButtonNaturalOrientation = (New-Object -TypeName System.Windows.Forms.RadioButton)
$PanelCropScreen = (New-Object -TypeName System.Windows.Forms.Panel)
$ButtonCropScreen = (New-Object -TypeName System.Windows.Forms.Button)
$TextBoxCropScreen = (New-Object -TypeName System.Windows.Forms.TextBox)
$LabelConnectionString = (New-Object -TypeName System.Windows.Forms.Label)
$CheckBoxBorderless = (New-Object -TypeName System.Windows.Forms.CheckBox)
$CheckBoxAlwaysonTop = (New-Object -TypeName System.Windows.Forms.CheckBox)
$CheckBoxFullscreen = (New-Object -TypeName System.Windows.Forms.CheckBox)
$ButtonDownload = (New-Object -TypeName System.Windows.Forms.Button)
([System.ComponentModel.ISupportInitialize]$PictureBoxLogo).BeginInit()
$PanelMain.SuspendLayout()
$PanelSettings.SuspendLayout()
$PanelPositionAndSize.SuspendLayout()
$PanelRecord.SuspendLayout()
$PanelOrientation.SuspendLayout()
$PanelCropScreen.SuspendLayout()
$FormScrcpy.SuspendLayout()
#
#LabelMain
#
$LabelMain.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$LabelMain.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]2,[System.Int32]9))
$LabelMain.Name = [System.String]'LabelMain'
$LabelMain.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]173,[System.Int32]36))
$LabelMain.TabIndex = [System.Int32]0
$LabelMain.Text = [System.String]'Scrcpy GUI Client'
$LabelMain.UseCompatibleTextRendering = $true
#
#PictureBoxLogo
#
$PictureBoxLogo.Image = ([System.Drawing.Image]$resources.'PictureBoxLogo.Image')
$PictureBoxLogo.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]296,[System.Int32]12))
$PictureBoxLogo.Name = [System.String]'PictureBoxLogo'
$PictureBoxLogo.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]305,[System.Int32]96))
$PictureBoxLogo.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::StretchImage
$PictureBoxLogo.TabIndex = [System.Int32]1
$PictureBoxLogo.TabStop = $false
#
#LabelIP
#
$LabelIP.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]7))
$LabelIP.Name = [System.String]'LabelIP'
$LabelIP.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$LabelIP.TabIndex = [System.Int32]2
$LabelIP.Text = [System.String]'IP:'
$LabelIP.UseCompatibleTextRendering = $true
$LabelIP.add_Click($Label2_Click)
#
#TextBoxIP
#
$TextBoxIP.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]33))
$TextBoxIP.Name = [System.String]'TextBoxIP'
$TextBoxIP.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]173,[System.Int32]24))
$TextBoxIP.TabIndex = [System.Int32]3
$TextBoxIP.Text = [System.String]'127.0.0.1'
#
#LabelMaxSize
#
$LabelMaxSize.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]60))
$LabelMaxSize.Name = [System.String]'LabelMaxSize'
$LabelMaxSize.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$LabelMaxSize.TabIndex = [System.Int32]4
$LabelMaxSize.Text = [System.String]'Max Size:'
$LabelMaxSize.UseCompatibleTextRendering = $true
#
#LabelBitrate
#
$LabelBitrate.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]113))
$LabelBitrate.Name = [System.String]'LabelBitrate'
$LabelBitrate.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$LabelBitrate.TabIndex = [System.Int32]6
$LabelBitrate.Text = [System.String]'Bitrate'
$LabelBitrate.UseCompatibleTextRendering = $true
#
#LabelMaxFPS
#
$LabelMaxFPS.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]166))
$LabelMaxFPS.Name = [System.String]'LabelMaxFPS'
$LabelMaxFPS.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$LabelMaxFPS.TabIndex = [System.Int32]8
$LabelMaxFPS.Text = [System.String]'max FPS'
$LabelMaxFPS.UseCompatibleTextRendering = $true
#
#PanelMain
#
$PanelMain.AutoScroll = $true
$PanelMain.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$PanelMain.Controls.Add($ButtonDownload)
$PanelMain.Controls.Add($ButtonExit)
$PanelMain.Controls.Add($PanelSettings)
$PanelMain.Controls.Add($ButtonConnect)
$PanelMain.Controls.Add($PanelPositionAndSize)
$PanelMain.Controls.Add($PanelRecord)
$PanelMain.Controls.Add($PanelOrientation)
$PanelMain.Controls.Add($PanelCropScreen)
$PanelMain.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]114))
$PanelMain.Name = [System.String]'PanelMain'
$PanelMain.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]603,[System.Int32]406))
$PanelMain.TabIndex = [System.Int32]10
$PanelMain.add_Paint($Panel1_Paint)
#
#ButtonConnect
#
$ButtonConnect.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]507,[System.Int32]376))
$ButtonConnect.Name = [System.String]'ButtonConnect'
$ButtonConnect.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$ButtonConnect.TabIndex = [System.Int32]19
$ButtonConnect.Text = [System.String]'Connect'
$ButtonConnect.UseCompatibleTextRendering = $true
$ButtonConnect.UseVisualStyleBackColor = $true
#
#ButtonExit
#
$ButtonExit.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]426,[System.Int32]376))
$ButtonExit.Name = [System.String]'ButtonExit'
$ButtonExit.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$ButtonExit.TabIndex = [System.Int32]18
$ButtonExit.Text = [System.String]'Exit'
$ButtonExit.UseCompatibleTextRendering = $true
$ButtonExit.UseVisualStyleBackColor = $true
#
#PanelSettings
#
$PanelSettings.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$PanelSettings.Controls.Add($ComboBoxBitrate)
$PanelSettings.Controls.Add($ComboBoxMaxSize)
$PanelSettings.Controls.Add($ComboBoxMaxFPS)
$PanelSettings.Controls.Add($LabelIP)
$PanelSettings.Controls.Add($LabelBitrate)
$PanelSettings.Controls.Add($TextBoxWindowTitle)
$PanelSettings.Controls.Add($LabelWindowTitle)
$PanelSettings.Controls.Add($LabelMaxSize)
$PanelSettings.Controls.Add($LabelMaxFPS)
$PanelSettings.Controls.Add($TextBoxIP)
$PanelSettings.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$PanelSettings.Name = [System.String]'PanelSettings'
$PanelSettings.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]186,[System.Int32]278))
$PanelSettings.TabIndex = [System.Int32]17
#
#ComboBoxBitrate
#
$ComboBoxBitrate.AutoCompleteCustomSource.AddRange([System.String[]]@([System.String]'1M',[System.String]'1,5M',[System.String]'2M',[System.String]'2,5M',[System.String]'3M',[System.String]'5M',[System.String]'6M',[System.String]'7M',[System.String]'8M',[System.String]'9M',[System.String]'10M',[System.String]'11M',[System.String]'12M'))
$ComboBoxBitrate.AutoCompleteMode = [System.Windows.Forms.AutoCompleteMode]::SuggestAppend
$ComboBoxBitrate.AutoCompleteSource = [System.Windows.Forms.AutoCompleteSource]::CustomSource
$ComboBoxBitrate.FormattingEnabled = $true
$ComboBoxBitrate.Items.AddRange([System.Object[]]@([System.String]'1M',[System.String]'1,5M',[System.String]'2M',[System.String]'2,5M',[System.String]'3M',[System.String]'5M',[System.String]'6M',[System.String]'7M',[System.String]'8M',[System.String]'9M',[System.String]'10M',[System.String]'11M',[System.String]'12M'))
$ComboBoxBitrate.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]137))
$ComboBoxBitrate.Name = [System.String]'ComboBoxBitrate'
$ComboBoxBitrate.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]173,[System.Int32]25))
$ComboBoxBitrate.TabIndex = [System.Int32]18
$ComboBoxBitrate.Text = [System.String]'2M'
#
#ComboBoxMaxSize
#
$ComboBoxMaxSize.AutoCompleteCustomSource.AddRange([System.String[]]@([System.String]'480',[System.String]'640',[System.String]'720',[System.String]'800',[System.String]'768',[System.String]'960',[System.String]'1024',[System.String]'1200',[System.String]'1280',[System.String]'1440',[System.String]'1600',[System.String]'1920',[System.String]'2160',[System.String]'2880',[System.String]'2840',[System.String]'4096',[System.String]'5120'))
$ComboBoxMaxSize.AutoCompleteMode = [System.Windows.Forms.AutoCompleteMode]::SuggestAppend
$ComboBoxMaxSize.AutoCompleteSource = [System.Windows.Forms.AutoCompleteSource]::CustomSource
$ComboBoxMaxSize.FormattingEnabled = $true
$ComboBoxMaxSize.Items.AddRange([System.Object[]]@([System.String]'480',[System.String]'640',[System.String]'720',[System.String]'800',[System.String]'768',[System.String]'960',[System.String]'1024',[System.String]'1200',[System.String]'1280',[System.String]'1440',[System.String]'1600',[System.String]'1920',[System.String]'2160',[System.String]'2880',[System.String]'2840',[System.String]'4096',[System.String]'5120'))
$ComboBoxMaxSize.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]86))
$ComboBoxMaxSize.Name = [System.String]'ComboBoxMaxSize'
$ComboBoxMaxSize.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]174,[System.Int32]25))
$ComboBoxMaxSize.TabIndex = [System.Int32]17
$ComboBoxMaxSize.Text = [System.String]'1024'
#
#ComboBoxMaxFPS
#
$ComboBoxMaxFPS.AutoCompleteCustomSource.AddRange([System.String[]]@([System.String]'10',[System.String]'20',[System.String]'24',[System.String]'25',[System.String]'29,97',[System.String]'30',[System.String]'48',[System.String]'50',[System.String]'59,94',[System.String]'60'))
$ComboBoxMaxFPS.AutoCompleteMode = [System.Windows.Forms.AutoCompleteMode]::SuggestAppend
$ComboBoxMaxFPS.AutoCompleteSource = [System.Windows.Forms.AutoCompleteSource]::CustomSource
$ComboBoxMaxFPS.FormattingEnabled = $true
$ComboBoxMaxFPS.Items.AddRange([System.Object[]]@([System.String]'10',[System.String]'20',[System.String]'24',[System.String]'25',[System.String]'29,97',[System.String]'30',[System.String]'48',[System.String]'50',[System.String]'59,94',[System.String]'60'))
$ComboBoxMaxFPS.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]192))
$ComboBoxMaxFPS.Name = [System.String]'ComboBoxMaxFPS'
$ComboBoxMaxFPS.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]173,[System.Int32]25))
$ComboBoxMaxFPS.TabIndex = [System.Int32]16
$ComboBoxMaxFPS.Text = [System.String]'24'
#
#TextBoxWindowTitle
#
$TextBoxWindowTitle.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]245))
$TextBoxWindowTitle.Name = [System.String]'TextBoxWindowTitle'
$TextBoxWindowTitle.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]173,[System.Int32]24))
$TextBoxWindowTitle.TabIndex = [System.Int32]15
$TextBoxWindowTitle.Text = [System.String]'My Device | Scrcpy by TGF'
#
#LabelWindowTitle
#
$LabelWindowTitle.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]219))
$LabelWindowTitle.Name = [System.String]'LabelWindowTitle'
$LabelWindowTitle.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$LabelWindowTitle.TabIndex = [System.Int32]14
$LabelWindowTitle.Text = [System.String]'Window Title'
$LabelWindowTitle.UseCompatibleTextRendering = $true
#
#PanelPositionAndSize
#
$PanelPositionAndSize.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$PanelPositionAndSize.Controls.Add($CheckBoxFullscreen)
$PanelPositionAndSize.Controls.Add($CheckBoxAlwaysonTop)
$PanelPositionAndSize.Controls.Add($CheckBoxBorderless)
$PanelPositionAndSize.Controls.Add($ButtonPositionandSize)
$PanelPositionAndSize.Controls.Add($TextBoxWindowHeight)
$PanelPositionAndSize.Controls.Add($LabelWindowHeight)
$PanelPositionAndSize.Controls.Add($TextBoxWindowWidth)
$PanelPositionAndSize.Controls.Add($LabelWindowWidth)
$PanelPositionAndSize.Controls.Add($TextBoxWindowY)
$PanelPositionAndSize.Controls.Add($LabelWindowY)
$PanelPositionAndSize.Controls.Add($TextBoxWindowX)
$PanelPositionAndSize.Controls.Add($LabelWindowX)
$PanelPositionAndSize.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]401,[System.Int32]3))
$PanelPositionAndSize.Name = [System.String]'PanelPositionAndSize'
$PanelPositionAndSize.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]186,[System.Int32]331))
$PanelPositionAndSize.TabIndex = [System.Int32]16
#
#ButtonPositionandSize
#
$ButtonPositionandSize.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]-1,[System.Int32]4))
$ButtonPositionandSize.Name = [System.String]'ButtonPositionandSize'
$ButtonPositionandSize.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]186,[System.Int32]23))
$ButtonPositionandSize.TabIndex = [System.Int32]9
$ButtonPositionandSize.Text = [System.String]'Position and Size'
$ButtonPositionandSize.UseCompatibleTextRendering = $true
$ButtonPositionandSize.UseVisualStyleBackColor = $true
#
#TextBoxWindowHeight
#
$TextBoxWindowHeight.Enabled = $false
$TextBoxWindowHeight.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]215))
$TextBoxWindowHeight.Name = [System.String]'TextBoxWindowHeight'
$TextBoxWindowHeight.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]182,[System.Int32]24))
$TextBoxWindowHeight.TabIndex = [System.Int32]8
$TextBoxWindowHeight.Text = [System.String]'600'
#
#LabelWindowHeight
#
$LabelWindowHeight.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]189))
$LabelWindowHeight.Name = [System.String]'LabelWindowHeight'
$LabelWindowHeight.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$LabelWindowHeight.TabIndex = [System.Int32]7
$LabelWindowHeight.Text = [System.String]'window-height'
$LabelWindowHeight.UseCompatibleTextRendering = $true
#
#TextBoxWindowWidth
#
$TextBoxWindowWidth.Enabled = $false
$TextBoxWindowWidth.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]162))
$TextBoxWindowWidth.Name = [System.String]'TextBoxWindowWidth'
$TextBoxWindowWidth.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]182,[System.Int32]24))
$TextBoxWindowWidth.TabIndex = [System.Int32]6
$TextBoxWindowWidth.Text = [System.String]'800'
#
#LabelWindowWidth
#
$LabelWindowWidth.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]136))
$LabelWindowWidth.Name = [System.String]'LabelWindowWidth'
$LabelWindowWidth.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$LabelWindowWidth.TabIndex = [System.Int32]5
$LabelWindowWidth.Text = [System.String]'window-width'
$LabelWindowWidth.UseCompatibleTextRendering = $true
#
#TextBoxWindowY
#
$TextBoxWindowY.Enabled = $false
$TextBoxWindowY.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]109))
$TextBoxWindowY.Name = [System.String]'TextBoxWindowY'
$TextBoxWindowY.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]181,[System.Int32]24))
$TextBoxWindowY.TabIndex = [System.Int32]4
$TextBoxWindowY.Text = [System.String]'100'
#
#LabelWindowY
#
$LabelWindowY.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]83))
$LabelWindowY.Name = [System.String]'LabelWindowY'
$LabelWindowY.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$LabelWindowY.TabIndex = [System.Int32]3
$LabelWindowY.Text = [System.String]'window-y'
$LabelWindowY.UseCompatibleTextRendering = $true
#
#TextBoxWindowX
#
$TextBoxWindowX.Enabled = $false
$TextBoxWindowX.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]56))
$TextBoxWindowX.Name = [System.String]'TextBoxWindowX'
$TextBoxWindowX.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]181,[System.Int32]24))
$TextBoxWindowX.TabIndex = [System.Int32]2
$TextBoxWindowX.Text = [System.String]'100'
#
#LabelWindowX
#
$LabelWindowX.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]30))
$LabelWindowX.Name = [System.String]'LabelWindowX'
$LabelWindowX.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$LabelWindowX.TabIndex = [System.Int32]1
$LabelWindowX.Text = [System.String]'window-x'
$LabelWindowX.UseCompatibleTextRendering = $true
#
#PanelRecord
#
$PanelRecord.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$PanelRecord.Controls.Add($CheckBoxNoDisplay)
$PanelRecord.Controls.Add($TextBoxRecordFile)
$PanelRecord.Controls.Add($CheckBoxRecord)
$PanelRecord.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]195,[System.Int32]222))
$PanelRecord.Name = [System.String]'PanelRecord'
$PanelRecord.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]69))
$PanelRecord.TabIndex = [System.Int32]13
#
#CheckBoxNoDisplay
#
$CheckBoxNoDisplay.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]95,[System.Int32]3))
$CheckBoxNoDisplay.Name = [System.String]'CheckBoxNoDisplay'
$CheckBoxNoDisplay.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]104,[System.Int32]24))
$CheckBoxNoDisplay.TabIndex = [System.Int32]2
$CheckBoxNoDisplay.Text = [System.String]'No Display'
$CheckBoxNoDisplay.UseCompatibleTextRendering = $true
$CheckBoxNoDisplay.UseVisualStyleBackColor = $true
#
#TextBoxRecordFile
#
$TextBoxRecordFile.Enabled = $false
$TextBoxRecordFile.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]33))
$TextBoxRecordFile.Name = [System.String]'TextBoxRecordFile'
$TextBoxRecordFile.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]192,[System.Int32]24))
$TextBoxRecordFile.TabIndex = [System.Int32]1
$TextBoxRecordFile.Text = [System.String]'file.mp4'
#
#CheckBoxRecord
#
$CheckBoxRecord.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$CheckBoxRecord.Name = [System.String]'CheckBoxRecord'
$CheckBoxRecord.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]77,[System.Int32]24))
$CheckBoxRecord.TabIndex = [System.Int32]0
$CheckBoxRecord.Text = [System.String]'Record'
$CheckBoxRecord.UseCompatibleTextRendering = $true
$CheckBoxRecord.UseVisualStyleBackColor = $true
#
#PanelOrientation
#
$PanelOrientation.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$PanelOrientation.Controls.Add($RadioButton90Clockwise)
$PanelOrientation.Controls.Add($RadioButton180Degree)
$PanelOrientation.Controls.Add($RadioButton90CounterClockwise)
$PanelOrientation.Controls.Add($RadioButtonNaturalOrientation)
$PanelOrientation.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]195,[System.Int32]82))
$PanelOrientation.Name = [System.String]'PanelOrientation'
$PanelOrientation.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]130))
$PanelOrientation.TabIndex = [System.Int32]12
#
#RadioButton90Clockwise
#
$RadioButton90Clockwise.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]93))
$RadioButton90Clockwise.Name = [System.String]'RadioButton90Clockwise'
$RadioButton90Clockwise.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]192,[System.Int32]26))
$RadioButton90Clockwise.TabIndex = [System.Int32]3
$RadioButton90Clockwise.TabStop = $true
$RadioButton90Clockwise.Text = [System.String]'90° clockwise'
$RadioButton90Clockwise.UseCompatibleTextRendering = $true
$RadioButton90Clockwise.UseVisualStyleBackColor = $true
#
#RadioButton180Degree
#
$RadioButton180Degree.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]63))
$RadioButton180Degree.Name = [System.String]'RadioButton180Degree'
$RadioButton180Degree.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]192,[System.Int32]24))
$RadioButton180Degree.TabIndex = [System.Int32]2
$RadioButton180Degree.TabStop = $true
$RadioButton180Degree.Text = [System.String]'180°'
$RadioButton180Degree.UseCompatibleTextRendering = $true
$RadioButton180Degree.UseVisualStyleBackColor = $true
#
#RadioButton90CounterClockwise
#
$RadioButton90CounterClockwise.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]33))
$RadioButton90CounterClockwise.Name = [System.String]'RadioButton90CounterClockwise'
$RadioButton90CounterClockwise.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]192,[System.Int32]24))
$RadioButton90CounterClockwise.TabIndex = [System.Int32]1
$RadioButton90CounterClockwise.TabStop = $true
$RadioButton90CounterClockwise.Text = [System.String]'90° counterclockwise'
$RadioButton90CounterClockwise.UseCompatibleTextRendering = $true
$RadioButton90CounterClockwise.UseVisualStyleBackColor = $true
#
#RadioButtonNaturalOrientation
#
$RadioButtonNaturalOrientation.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$RadioButtonNaturalOrientation.Name = [System.String]'RadioButtonNaturalOrientation'
$RadioButtonNaturalOrientation.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]192,[System.Int32]24))
$RadioButtonNaturalOrientation.TabIndex = [System.Int32]0
$RadioButtonNaturalOrientation.TabStop = $true
$RadioButtonNaturalOrientation.Text = [System.String]'natural Orientation'
$RadioButtonNaturalOrientation.UseCompatibleTextRendering = $true
$RadioButtonNaturalOrientation.UseVisualStyleBackColor = $true
#
#PanelCropScreen
#
$PanelCropScreen.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$PanelCropScreen.Controls.Add($ButtonCropScreen)
$PanelCropScreen.Controls.Add($TextBoxCropScreen)
$PanelCropScreen.Cursor = [System.Windows.Forms.Cursors]::Default
$PanelCropScreen.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]195,[System.Int32]3))
$PanelCropScreen.Name = [System.String]'PanelCropScreen'
$PanelCropScreen.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]73))
$PanelCropScreen.TabIndex = [System.Int32]11
#
#ButtonCropScreen
#
$ButtonCropScreen.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]-1,[System.Int32]4))
$ButtonCropScreen.Name = [System.String]'ButtonCropScreen'
$ButtonCropScreen.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]23))
$ButtonCropScreen.TabIndex = [System.Int32]12
$ButtonCropScreen.Text = [System.String]'Crop Screen'
$ButtonCropScreen.UseCompatibleTextRendering = $true
$ButtonCropScreen.UseVisualStyleBackColor = $true
#
#TextBoxCropScreen
#
$TextBoxCropScreen.Enabled = $false
$TextBoxCropScreen.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]-1,[System.Int32]33))
$TextBoxCropScreen.Name = [System.String]'TextBoxCropScreen'
$TextBoxCropScreen.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]196,[System.Int32]24))
$TextBoxCropScreen.TabIndex = [System.Int32]11
$TextBoxCropScreen.Text = [System.String]'1224:1440:0:0'
#
#LabelConnectionString
#
$LabelConnectionString.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]2,[System.Int32]523))
$LabelConnectionString.Name = [System.String]'LabelConnectionString'
$LabelConnectionString.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]613,[System.Int32]33))
$LabelConnectionString.TabIndex = [System.Int32]20
$LabelConnectionString.Text = [System.String]'<ConnectionString>'
$LabelConnectionString.UseCompatibleTextRendering = $true
#
#CheckBoxBorderless
#
$CheckBoxBorderless.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]244))
$CheckBoxBorderless.Name = [System.String]'CheckBoxBorderless'
$CheckBoxBorderless.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]176,[System.Int32]24))
$CheckBoxBorderless.TabIndex = [System.Int32]10
$CheckBoxBorderless.Text = [System.String]'Borderless'
$CheckBoxBorderless.UseCompatibleTextRendering = $true
$CheckBoxBorderless.UseVisualStyleBackColor = $true
#
#CheckBoxAlwaysonTop
#
$CheckBoxAlwaysonTop.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]274))
$CheckBoxAlwaysonTop.Name = [System.String]'CheckBoxAlwaysonTop'
$CheckBoxAlwaysonTop.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]176,[System.Int32]24))
$CheckBoxAlwaysonTop.TabIndex = [System.Int32]11
$CheckBoxAlwaysonTop.Text = [System.String]'Always on Top'
$CheckBoxAlwaysonTop.UseCompatibleTextRendering = $true
$CheckBoxAlwaysonTop.UseVisualStyleBackColor = $true
#
#CheckBoxFullscreen
#
$CheckBoxFullscreen.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]304))
$CheckBoxFullscreen.Name = [System.String]'CheckBoxFullscreen'
$CheckBoxFullscreen.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]176,[System.Int32]24))
$CheckBoxFullscreen.TabIndex = [System.Int32]12
$CheckBoxFullscreen.Text = [System.String]'Fullscreen'
$CheckBoxFullscreen.UseCompatibleTextRendering = $true
$CheckBoxFullscreen.UseVisualStyleBackColor = $true
#
#ButtonDownload
#
$ButtonDownload.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]16.2,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$ButtonDownload.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]8,[System.Int32]297))
$ButtonDownload.Name = [System.String]'ButtonDownload'
$ButtonDownload.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]384,[System.Int32]86))
$ButtonDownload.TabIndex = [System.Int32]20
$ButtonDownload.Text = [System.String]'DOWNLOAD SCRCPY'
$ButtonDownload.UseCompatibleTextRendering = $true
$ButtonDownload.UseVisualStyleBackColor = $true
#
#FormScrcpy
#
$FormScrcpy.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]610,[System.Int32]554))
$FormScrcpy.Controls.Add($LabelConnectionString)
$FormScrcpy.Controls.Add($PanelMain)
$FormScrcpy.Controls.Add($PictureBoxLogo)
$FormScrcpy.Controls.Add($LabelMain)
$FormScrcpy.Cursor = [System.Windows.Forms.Cursors]::Arrow
$FormScrcpy.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::Fixed3D
$FormScrcpy.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$FormScrcpy.KeyPreview = $true
$FormScrcpy.Text = [System.String]'TGF Scrcpy Client'
([System.ComponentModel.ISupportInitialize]$PictureBoxLogo).EndInit()
$PanelMain.ResumeLayout($false)
$PanelSettings.ResumeLayout($false)
$PanelSettings.PerformLayout()
$PanelPositionAndSize.ResumeLayout($false)
$PanelPositionAndSize.PerformLayout()
$PanelRecord.ResumeLayout($false)
$PanelRecord.PerformLayout()
$PanelOrientation.ResumeLayout($false)
$PanelCropScreen.ResumeLayout($false)
$PanelCropScreen.PerformLayout()
$FormScrcpy.ResumeLayout($false)
Add-Member -InputObject $FormScrcpy -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name LabelMain -Value $LabelMain -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name PictureBoxLogo -Value $PictureBoxLogo -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name LabelIP -Value $LabelIP -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name TextBoxIP -Value $TextBoxIP -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name LabelMaxSize -Value $LabelMaxSize -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name LabelBitrate -Value $LabelBitrate -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name LabelMaxFPS -Value $LabelMaxFPS -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name PanelMain -Value $PanelMain -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name ButtonDownload -Value $ButtonDownload -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name ButtonExit -Value $ButtonExit -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name PanelSettings -Value $PanelSettings -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name ComboBoxBitrate -Value $ComboBoxBitrate -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name ComboBoxMaxSize -Value $ComboBoxMaxSize -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name ComboBoxMaxFPS -Value $ComboBoxMaxFPS -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name TextBoxWindowTitle -Value $TextBoxWindowTitle -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name LabelWindowTitle -Value $LabelWindowTitle -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name ButtonConnect -Value $ButtonConnect -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name PanelPositionAndSize -Value $PanelPositionAndSize -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name CheckBoxFullscreen -Value $CheckBoxFullscreen -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name CheckBoxAlwaysonTop -Value $CheckBoxAlwaysonTop -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name CheckBoxBorderless -Value $CheckBoxBorderless -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name ButtonPositionandSize -Value $ButtonPositionandSize -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name TextBoxWindowHeight -Value $TextBoxWindowHeight -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name LabelWindowHeight -Value $LabelWindowHeight -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name TextBoxWindowWidth -Value $TextBoxWindowWidth -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name LabelWindowWidth -Value $LabelWindowWidth -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name TextBoxWindowY -Value $TextBoxWindowY -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name LabelWindowY -Value $LabelWindowY -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name TextBoxWindowX -Value $TextBoxWindowX -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name LabelWindowX -Value $LabelWindowX -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name PanelRecord -Value $PanelRecord -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name CheckBoxNoDisplay -Value $CheckBoxNoDisplay -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name TextBoxRecordFile -Value $TextBoxRecordFile -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name CheckBoxRecord -Value $CheckBoxRecord -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name PanelOrientation -Value $PanelOrientation -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name RadioButton90Clockwise -Value $RadioButton90Clockwise -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name RadioButton180Degree -Value $RadioButton180Degree -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name RadioButton90CounterClockwise -Value $RadioButton90CounterClockwise -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name RadioButtonNaturalOrientation -Value $RadioButtonNaturalOrientation -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name PanelCropScreen -Value $PanelCropScreen -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name ButtonCropScreen -Value $ButtonCropScreen -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name TextBoxCropScreen -Value $TextBoxCropScreen -MemberType NoteProperty
Add-Member -InputObject $FormScrcpy -Name LabelConnectionString -Value $LabelConnectionString -MemberType NoteProperty
}
. InitializeComponent
