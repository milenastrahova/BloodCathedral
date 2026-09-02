@echo off
setlocal
cd /d "%~dp0"
title Blood Cathedral - Commit Changes

if not exist ".git" (
    echo [ERROR] Run SETUP_GIT.bat first.
    pause
    exit /b 1
)

echo Current changes:
git status --short
echo.
set /p MSG=Commit message: 
if not defined MSG (
    echo [ERROR] Commit message cannot be empty.
    pause
    exit /b 1
)

git add -A
git commit -m "%MSG%"
if errorlevel 1 (
    echo.
    echo [ERROR] Nothing committed.
    pause
    exit /b 1
)

git remote get-url origin >nul 2>&1
if not errorlevel 1 (
    git push
)

echo.
echo [OK] Commit complete.
git log -1 --oneline
pause
