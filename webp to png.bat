@echo off
echo == WebP to PNG Converter ==

:: Make sure there is dwebp.exe
if not exist dwebp.exe (
    echo Error: dwebp.exe was not found in this folder!
    pause
    exit /b
)

:: Create a folder for the resulting images
if not exist "converted_png" (
    mkdir "converted_png"
)

:: Convert all webp images to png
for %%f in (*.webp) do (
    echo conversion: %%f
    dwebp "%%f" -o "converted_png\%%~nf.png"
)

echo == Converted! ==
pause
