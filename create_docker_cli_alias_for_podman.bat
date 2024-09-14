@echo off
:: Step 1: Create C:\Program Files\docker\bin\docker.bat and write the required content

echo Creating docker.bat file...
if not exist "C:\Program Files\docker\bin" (
    mkdir "C:\Program Files\docker\bin"
)

(
    echo @echo off
    echo podman %%*
) > "C:\Program Files\docker\bin\docker.bat"

echo docker.bat file created successfully.

:: Step 2: Add C:\Program Files\docker\bin to the PATH environment variable

echo Adding C:\Program Files\docker\bin to the PATH...
setx PATH "%PATH%;C:\Program Files\docker\bin" /M

if %ERRORLEVEL% equ 0 (
    echo PATH updated successfully.
) else (
    echo Failed to update PATH. Please check if you have administrative privileges.
)

pause
exit