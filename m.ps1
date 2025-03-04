# Set the color scheme for the PowerShell window (black background, green text)
$host.UI.RawUI.BackgroundColor = "Black"
$host.UI.RawUI.ForegroundColor = "Green"
Clear-Host

# Display the message box with the text "Staging"
Add-Type -AssemblyName "System.Windows.Forms"
[System.Windows.Forms.MessageBox]::Show("Staging")

# Launch cmd or another PowerShell window with the same colors (for "hacker" theme)
Start-Process cmd.exe -ArgumentList '/k', 'color 0A' # 0A is green text on black background
