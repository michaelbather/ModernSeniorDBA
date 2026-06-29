function Test-Docker
{
    docker version *> $null

    return ($LASTEXITCODE -eq 0)
}