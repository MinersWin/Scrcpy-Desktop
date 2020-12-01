@{
        Root = 'c:\Users\moritz.mantel\Documents\GitHub\scrcpy-desktop\scrcpy.ps1'
        OutputPath = 'c:\Users\moritz.mantel\Documents\GitHub\scrcpy-desktop\out'
        Package = @{
            Enabled = $true
            Obfuscate = $false
            HideConsoleWindow = $false
            DotNetVersion = 'v4.6.2'
            FileVersion = '1.0'
            FileDescription = 'Scrcpy Desktop by TGF'
            ProductName = 'Scrcpy Desktop by TGF'
            ProductVersion = '1.0'
            Copyright = '2020 by MinersWin'
            RequireElevation = $false
            ApplicationIconPath = 'C:\Users\moritz.mantel\Downloads\favicon.ico'
            PackageType = 'Console'
        }
        Bundle = @{
            Enabled = $true
            Modules = $true
            # IgnoredModules = @()
        }
    }
    