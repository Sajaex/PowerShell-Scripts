$portName = "PRINTER IP HERE"

$portExists = Get-Printerport -Name $portName -ErrorAction SilentlyContinue

if (-not $portExists) {
  Add-PrinterPort -Name $portName -PrinterHostAddress "PRINTER PORT IP HERE" -SNMP 1 -SNMPCommunity "public"
}
else {
  Add-Printer -Name "PRINTER NAME HERE" -DriverName "PRINTER DRIVER NAME HERE" -PortName $portName
}
