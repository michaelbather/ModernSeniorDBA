# Start-Lab.ps1

Write-Host ""
Write-Host "====================================="
Write-Host " ModernSeniorDBA Local Lab"
Write-Host "====================================="
Write-Host ""

Write-Host "Checking Docker..."

docker version *> $null

if ($LASTEXITCODE -eq 0)
{
    Write-Host "✓ Docker is available"
}
else
{
    Write-Host "✗ Docker is not available"
    exit
}

Write-Host ""
Write-Host "Checking SQL Server container..."

$container = docker ps --filter "name=sql2022" --format "{{.Names}}"

if ($container -eq "sql2022")
{
    Write-Host "✓ SQL Server container is running"
}
else
{
    Write-Host "✗ SQL Server container is not running"
    Write-Host ""
    Write-Host "Starting container..."

    docker start sql2022 *> $null

    Start-Sleep -Seconds 5

    $container = docker ps --filter "name=sql2022" --format "{{.Names}}"

    if ($container -eq "sql2022")
    {
        Write-Host "✓ SQL Server container started"
    }
    else
    {
        Write-Host "✗ Failed to start SQL Server container"
        exit
    }
}

Write-Host ""
Write-Host "Lab is ready."