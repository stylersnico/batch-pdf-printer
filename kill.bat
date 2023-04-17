REM Default timer to give some time for Adobe Reader to print the file
timeout /t 15 /nobreak

REM Kill Adobe Reader after printing
taskkill /F /IM AcroRd32.exe
