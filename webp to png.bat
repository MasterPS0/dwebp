@echo off
echo == WebP to PNG Converter ==

:: Make sure there is dwebp.exe
if not exist dwebp.exe (
    echo خطأ: لم يتم العثور على dwebp.exe في هذا المجلد!
    pause
    exit /b
)

:: Create a folder for the resulting images
if not exist "converted_png" (
    mkdir "converted_png"
)

:: Convert all webp images to png
for %%f in (*.webp) do (
    echo تحويل: %%f
    dwebp "%%f" -o "converted_png\%%~nf.png"
)

echo == Converted! ==
pause
