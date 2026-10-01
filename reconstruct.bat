@echo off
title JARVIS Archive Reconstructor
echo ======================================================================
echo               JARVIS 100%% COMPLETE ARCHIVE RECONSTRUCTION
echo ======================================================================
echo.
echo Checking for all 9 parts...
for %%i in (001 002 003 004 005 006 007 008 009) do (
    if not exist "jarvis.zip.%%i" (
        echo ERROR: Missing jarvis.zip.%%i!
        echo Please download all 9 parts from GitHub Releases into this folder.
        pause
        exit /b 1
    )
)
echo All 9 parts found!
echo.
echo Recombining parts into full jarvis.zip (17.56 GB)...
echo Please wait, this may take 1-2 minutes depending on your disk speed...
copy /b jarvis.zip.001 + jarvis.zip.002 + jarvis.zip.003 + jarvis.zip.004 + jarvis.zip.005 + jarvis.zip.006 + jarvis.zip.007 + jarvis.zip.008 + jarvis.zip.009 jarvis.zip
echo.
echo ======================================================================
echo SUCCESS! jarvis.zip has been fully reconstructed.
echo You can now extract jarvis.zip.
echo ======================================================================
pause
