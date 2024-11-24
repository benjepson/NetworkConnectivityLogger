# Define the log file path
$logFile = "C:\Users\Shell\Nov23connectivity.txt"

# Function to log connectivity status and network type every second
function Log-Connectivity {
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $pingResult = Test-Connection -ComputerName 8.8.8.8 -Count 1 -ErrorAction SilentlyContinue

    if ($pingResult) {
        $status = "Con"
    } else {
        $status = "Dis"
    }

    # Get active network interface
    $networkAdapter = Get-NetAdapter | Where-Object { $_.Status -eq 'Up' -and $_.MediaType -ne 'Microsoft Kernel Debug Network Adapter' }
    if ($networkAdapter.Name -match "Wi-Fi|Wireless") {
        $connectionType = "W"
    } elseif ($networkAdapter.Name -match "Ethernet|LAN") {
        $connectionType = "E"
    } else {
        $connectionType = "Unknown"
    }

    $logEntry = "$timestamp, $status, $connectionType"
    Add-Content -Path $logFile -Value $logEntry
}

# Run the function every second
while ($true) {
    Log-Connectivity
    Start-Sleep -Seconds 1
}
