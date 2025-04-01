@echo off
setlocal enabledelayedexpansion

:start
cls
echo ====================================
echo    CRAWL TRUYENFULL
echo ====================================
echo.

set /p base_url="Nhap URL truyen (vi du: https://truyenfull.vision/ten-truyen/): "

:check_dependencies
echo.
echo Dang kiem tra va cai dat thu vien...
python -c "import requests" 2>nul
if errorlevel 1 (
    echo Cai dat thu vien requests...
    pip install requests
)

python -c "from bs4 import BeautifulSoup" 2>nul
if errorlevel 1 (
    echo Cai dat thu vien beautifulsoup4...
    pip install beautifulsoup4
)

python -c "from docx import Document" 2>nul
if errorlevel 1 (
    echo Cai dat thu vien python-docx...
    pip install python-docx
)

:run_code
echo.
echo Dang chay code...
python main.py "%base_url%"

if errorlevel 1 (
    echo.
    echo Co loi xay ra! Ban co muon:
    echo 1. Thu lai
    echo 2. Nhap URL moi
    echo 3. Thoat
    set /p choice="Lua chon (1-3): "
    
    if "%choice%"=="1" goto run_code
    if "%choice%"=="2" goto start
    if "%choice%"=="3" exit /b
)

echo.
echo Hoan thanh! Nhan phim bat ky de thoat...
pause >nul 