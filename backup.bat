@ECHO OFF

set year=%date:~-4,4%
set month=%date:~-10,2%
set day=%date:~-7,2%
set hour=%time:~-11,2%
set hour=%hour: =0%
set min=%time:~-8,2%

set zipfilename=c:\backup_orcamento.7z

Set TODAY=%date:~4,2%-%date:~7,2%-%date:~10,4%-%hr%%time:~3,2%%time:~6,2%%time:~9,2%

set AppExePath="%ProgramFiles(x86)%\7-Zip\7z.exe"
if not exist %AppExePath% set AppExePath="%ProgramFiles%\7-Zip\7z.exe"
 
ECHO.
 
ECHO Realizando backup inetpub para C:backup_orcamento.7z
ECHO.
%AppExePath% a -r -t7z "%zipfilename%" "C:\inetpub\*" -mx9 -xr!AdminScripts -xr!custerr -xr!history -xr!logs -xr!orc_dev -xr!temp -xr!wwwroot
ECHO.

EXIT
