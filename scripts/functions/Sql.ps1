function Test-SqlConnection
{
    param(
        [string]$Server = "localhost,1433",
        [string]$Database = "master",
        [string]$Username = "sa",
        [string]$Password
    )

    try
    {
        Import-Module SqlServer -ErrorAction Stop | Out-Null

        Invoke-Sqlcmd `
            -ServerInstance $Server `
            -Database $Database `
            -Username $Username `
            -Password $Password `
            -Query "SELECT 1 AS ok" `
            -ErrorAction Stop | Out-Null

        return $true
    }
    catch
    {
        return $false
    }
}