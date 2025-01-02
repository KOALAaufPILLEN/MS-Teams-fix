# PowerShell Script to Delete Specified Folders

# Define folder paths
$paths = @(
    "$env:LOCALAPPDATA\Microsoft\OneAuth",
    "$env:LOCALAPPDATA\Microsoft\IdentityCache"
)

# Loop through each path and check if it exists
foreach ($path in $paths) {
    if (Test-Path -Path $path) {
        try {
            # Remove the folder and its contents
            Remove-Item -Path $path -Recurse -Force
            Write-Host "Successfully deleted: $path" -ForegroundColor Green
        } catch {
            Write-Host "Failed to delete: $path. Error: $_" -ForegroundColor Red
        }
    } else {
        Write-Host "Path does not exist: $path" -ForegroundColor Yellow
    }
}

Write-Host "Script execution completed." -ForegroundColor Cyan
