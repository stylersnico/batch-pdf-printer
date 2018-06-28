REM Kill all existings Reader instance
taskkill /F /IM AcroRd32.exe

REM Launch the background script to kill the Acrobat Reader after each print because he don't do that itself
start cmd.exe /c kill.bat

REM Launch the loop to print all the files in the folder and launch back the program killer after each print
for %%i in (*.pdf) do (
    "C:\Program Files (x86)\Adobe\Acrobat Reader DC\Reader\AcroRd32.exe" /t "%%i"
	start cmd.exe /c kill.bat
)