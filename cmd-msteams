@echo off
:: Disable command echoing

:: Define folder paths
set "oneauth_path=%localappdata%\Microsoft\OneAuth"
set "identitycache_path=%localappdata%\Microsoft\IdentityCache"

:: Check and delete the OneAuth folder
if exist "%oneauth_path%" (
    echo Deleting folder: %oneauth_path%
    rmdir /s /q "%oneauth_path%"
    echo Successfully deleted: %oneauth_path%
) else (
    echo Folder does not exist: %oneauth_path%
)

:: Check and delete the IdentityCache folder
if exist "%identitycache_path%" (
    echo Deleting folder: %identitycache_path%
    rmdir /s /q "%identitycache_path%"
    echo Successfully deleted: %identitycache_path%
) else (
    echo Folder does not exist: %identitycache_path%
)

echo Script execution completed.
pause
