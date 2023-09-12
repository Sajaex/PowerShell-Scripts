# Array of printer IPs
$ipAddresses = "PRINTER, IPS, HERE"

# Array of printer names
$printerNames = "PRINTER, NAMES, HERE"

# Iterate through the IP addresses
for ($i = 0; $i -lt $ipAddresses.Count; $i++) {
    $ip = $ipAddresses[$i]
    $printerName = $printerNames[$i]

    # Check if the printer port exists
    $portExists = Get-PrinterPort -Name $ip -ErrorAction SilentlyContinue

    if (-not $portExists) {
        # Create the printer port
        Add-PrinterPort -Name $ip -PrinterHostAddress $ip -SNMP 1 -SNMPCommunity "public"
    }

    # Add the printer by assigning a name, driver, and port (use a meaningful port name)
    Add-Printer -Name $printerName -DriverName "PRINTER DRIVER HERE" -PortName $ip
}
