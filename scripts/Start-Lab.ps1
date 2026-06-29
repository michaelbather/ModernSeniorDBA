# Start-Lab.ps1

. "$PSScriptRoot\functions\Docker.ps1"
. "$PSScriptRoot\functions\Sql.ps1"

Write-Host ""
Write-Host "====================================="
Write-Host " ModernSeniorDBA Local Lab"
Write-Host "====================================="
Write-Host ""
Write-Host "Checking Docker..."

if (Test-Docker)
{
    Write-Host "✓ Docker is available"
}
else
{
    Write-Host "✗ Docker is unavailable"
    exit
}

Write-Host ""
Write-Host "Checking SQL Server..."

$password = "@RonnieNualaJackOlive08111977"

if (Test-SqlConnection -Password $password)
{
    Write-Host "✓ SQL Server accepting connections"
}
else
{
    Write-Host "✗ SQL Server unavailable"
    exit
}