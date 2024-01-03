@ECHO off

SET /p "a_v=Download audio or video ('a' or 'v'): "

SET /p "url=Enter URL: "

ECHO %url%
ECHO %a_v%

IF %a_v% EQU a (yt-dlp.exe -P "/Output" -x %url%)
IF %a_v% EQU v (yt-dlp.exe -P "/Output" -w %url%)

PAUSE