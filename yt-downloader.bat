@echo off
chcp 65001 >nul
title YouTube Downloader (MP3 / MP4)
color 0A

echo ===============================================
echo       YouTube Downloader (MP3 / MP4)
echo       Powered by yt-dlp + ffmpeg
echo ===============================================
echo.

:: Check if yt-dlp exists
where yt-dlp >nul 2>nul
if %errorlevel% neq 0 (
    echo [Error] yt-dlp not found. Please make sure it is installed or placed in the same folder.
    pause
    exit /b
)

:: Check if ffmpeg exists
where ffmpeg >nul 2>nul
if %errorlevel% neq 0 (
    echo [Error] ffmpeg not found. Please make sure it is installed or placed in the same folder.
    pause
    exit /b
)

echo Please select a download mode:
echo [1] Download music (MP3)
echo [2] Download video (MP4)
echo.

set /p choice=Please enter option (1 or 2): 

if "%choice%"=="1" (
    set mode=mp3
) else if "%choice%"=="2" (
    set mode=mp4
) else (
    echo [Error] Input error, please try again.
    pause
    exit /b
)

echo.
set /p url=Please paste the YouTube video or playlist URL: 

:: Trim spaces (for safety)
set url=%url: =%

:: URL validation
if "%url%"=="" (
    echo [Error] URL cannot be empty.
    pause
    exit /b
)

echo %url% | findstr /r "^http" >nul

if %errorlevel% neq 0 (
    echo [Error] Invalid URL format. It should start with http or https.
    pause
    exit /b
)

set folder=Downloads
if not exist "%folder%" mkdir "%folder%"

if "%mode%"=="mp3" (
    echo.
    echo ===============================================
    echo Download Mode: MP3 ^(Music^)
    echo ===============================================
    echo Please wait while downloading...
    yt-dlp -f bestaudio ^
    --extract-audio ^
    --audio-format mp3 ^
    --audio-quality 0 ^
    --embed-thumbnail ^
    --add-metadata ^
    -o "%folder%/%%(playlist_title|Music)s/%%(title)s.%%(ext)s" ^
    %url%
) else (
    echo.
    echo ===============================================
    echo Download Mode: MP4 ^(Video^)
    echo ===============================================
    echo Please wait while downloading...
    yt-dlp ^
    -f "bestvideo[ext=mp4][vcodec^=avc1]+bestaudio[ext=m4a]/best[ext=mp4][vcodec^=avc1]" ^
    --merge-output-format mp4 ^
    --embed-thumbnail ^
    --add-metadata ^
    -o "%folder%/%%(playlist_title|Video)s/%%(title)s.%%(ext)s" ^
    %url%
)

if %errorlevel% neq 0 (
    echo.
    echo =====================================================
    echo ❌ Download failed!
    echo ⚠️  An error occurred during download or conversion.
    echo =====================================================
    echo.
    pause
    exit /b
)

echo.
echo ===============================================
echo ✅ Download Complete!
echo Files will be saved in: "%folder%"
echo ===============================================
echo.
pause
