@ECHO off

ECHO Welcome to MEDIADOWN
ECHO ---------------------

ECHO First you must choose the social media:
ECHO 1. YOUTUBE
ECHO 2. TWITTER
ECHO 3. TIKTOK
ECHO 4. INSTAGRAM

SET /p "mode=Choose which option: "

SET /p "a_v=Download audio or video ('a' or 'v'): "

SET /p "url=Enter URL: "

CLS

IF %mode% == 1 (GOTO YoutubeDown)
IF %mode% == 2 (GOTO TwitterDown)
IF %mode% == 3 (GOTO TiktokDown)
IF %mode% == 4 (GOTO InstagramDown) ELSE (GOTO Exit)


:YoutubeDown
ECHO DOWNLOADING YOUTUBE URL
IF %a_v% EQU a (yt-dlp.exe -P "/Output" -x %url%)
IF %a_v% EQU v (yt-dlp.exe -P "/Output" -w %url%)
GOTO Exit

:TwitterDown
ECHO DOWNLOADING TWITTER URL
IF %a_v% EQU a (yt-dlp.exe -P "/Output" -x %url%)
IF %a_v% EQU v (yt-dlp.exe -P "/Output" -w %url%)
GOTO Exit

:TiktokDown
ECHO DOWNLOADING TIKTOK URL
IF %a_v% EQU a (yt-dlp.exe -P "/Output" -x %url%)
IF %a_v% EQU v (yt-dlp.exe -P "/Output" -w %url%)
GOTO Exit

:InstagramDown
ECHO DOWNLOADING INSTAGRAM URL
IF %a_v% EQU a (yt-dlp.exe -P "/Output" -x %url%)
IF %a_v% EQU v (yt-dlp.exe -P "/Output" -w %url%)
GOTO Exit


:Exit
PAUSE