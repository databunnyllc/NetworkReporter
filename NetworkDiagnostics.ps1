#This script pings and diagnoses the network.

Write-Host "BEGINNING NETWORK DIAGNOSTICS"

ipconfig /all

Write-Host "PINGING LOOPBACK"

ping loopback -4
ping loopback -6

Write-Host "PINGING GOOGLE.COM"

ping google.com
tracert google.com

Write-Host "CHECKING DNS USING GOOGLE.COM"
nslookup 172.217.9.46

Write-Host "CHECKING PORTS"
netstat -ano

Write-Host "DIAGNOSTICS COMPLETE! HOPE EVERYTHING'S GOOD!"