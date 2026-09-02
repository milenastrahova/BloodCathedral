@echo off
setlocal
cd /d "%~dp0"
title Blood Cathedral - Git Setup

echo ============================================
echo BLOOD CATHEDRAL - GIT BASELINE SETUP
echo ============================================
echo.

where git >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Git is not installed or is not in PATH.
    echo Install Git for Windows, reopen this folder, then run this file again.
    pause
    exit /b 1
)

git lfs version >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Git LFS is not available.
    echo Git LFS is required for Unreal .uasset and .umap files.
    echo Install Git LFS and run this file again.
    pause
    exit /b 1
)

if not exist ".git" (
    echo [1/6] Initializing repository...
    git init
    if errorlevel 1 goto :failed
) else (
    echo [1/6] Existing Git repository detected.
)

echo [2/6] Configuring main branch and Git LFS...
git branch -M main >nul 2>&1
git lfs install
if errorlevel 1 goto :failed

for /f "delims=" %%A in ('git config user.name') do set GIT_NAME=%%A
if not defined GIT_NAME (
    echo.
    set /p GIT_NAME=Enter the name to use for Git commits: 
    if not defined GIT_NAME goto :failed
    git config user.name "%GIT_NAME%"
)

for /f "delims=" %%A in ('git config user.email') do set GIT_EMAIL=%%A
if not defined GIT_EMAIL (
    echo.
    set /p GIT_EMAIL=Enter the email to use for Git commits: 
    if not defined GIT_EMAIL goto :failed
    git config user.email "%GIT_EMAIL%"
)

echo [3/6] Verifying LFS rules...
git lfs track
if errorlevel 1 goto :failed

echo [4/6] Staging project...
git add -A
if errorlevel 1 goto :failed

echo [5/6] Creating honest v0.5 baseline commit...
git diff --cached --quiet
if not errorlevel 1 (
    echo Nothing new to commit.
) else (
    git commit -m "Prototype baseline: interaction, save, Warden AI and stealth"
    if errorlevel 1 goto :failed
)

echo [6/6] Creating milestone tag...
git rev-parse "v0.5.0-prototype" >nul 2>&1
if errorlevel 1 (
    git tag -a v0.5.0-prototype -m "Playable prototype baseline before combat and art pass"
)

echo.
echo ============================================
echo [OK] LOCAL GIT REPOSITORY IS READY
echo ============================================
echo.
echo Current branch:
git branch --show-current
echo.
echo Latest commit:
git log -1 --oneline
echo.
echo LFS files:
git lfs ls-files
echo.
echo NEXT:
echo 1. Run PUBLISH_TO_GITHUB.bat to create/push the GitHub repo.
echo 2. After that, future Blood Cathedral patches can be committed normally.
echo.
pause
exit /b 0

:failed
echo.
echo [ERROR] Git setup failed. Do not continue to the next game patch yet.
pause
exit /b 1
