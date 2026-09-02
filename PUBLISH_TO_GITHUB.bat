@echo off
setlocal
cd /d "%~dp0"
title Blood Cathedral - Publish to GitHub

echo ============================================
echo BLOOD CATHEDRAL - PUBLISH TO GITHUB
echo ============================================
echo.

if not exist ".git" (
    echo [ERROR] Run SETUP_GIT.bat first.
    pause
    exit /b 1
)

where gh >nul 2>&1
if errorlevel 1 (
    echo GitHub CLI ^(gh^) was not found.
    echo.
    echo Option A:
    echo   Install GitHub CLI, then run this file again.
    echo.
    echo Option B:
    echo   Create an empty repository named BloodCathedral on github.com
    echo   ^(do NOT add README, .gitignore or license there^)
    echo   then run:
    echo.
    echo   git remote add origin https://github.com/YOUR_USERNAME/BloodCathedral.git
    echo   git push -u origin main
    echo   git push origin --tags
    echo.
    pause
    exit /b 1
)

gh auth status >nul 2>&1
if errorlevel 1 (
    echo GitHub authentication is required.
    gh auth login
    if errorlevel 1 (
        echo [ERROR] GitHub login was not completed.
        pause
        exit /b 1
    )
)

git remote get-url origin >nul 2>&1
if errorlevel 1 (
    echo Creating public GitHub repository BloodCathedral...
    gh repo create BloodCathedral --public --source=. --remote=origin --push
    if errorlevel 1 (
        echo [ERROR] Repository creation/push failed.
        pause
        exit /b 1
    )
) else (
    echo Existing origin detected. Pushing main and tags...
    git push -u origin main
    if errorlevel 1 goto :failed
    git push origin --tags
    if errorlevel 1 goto :failed
)

echo.
echo ============================================
echo [OK] BLOOD CATHEDRAL IS ON GITHUB
echo ============================================
echo.
git remote -v
echo.
pause
exit /b 0

:failed
echo.
echo [ERROR] GitHub push failed.
pause
exit /b 1
