# Get all printer names, ports, and drivers on a PC

wmic printer get Name, Portname, DriverName

# Delete Network Printer

printui.exe /dl /n "\\PRINTER IP\PRINTER NAME"

