@ECHO off

ECHO Welcome to MEDIADOWN
ECHO ---------------------

ECHO First you must choose the social media:
ECHO 1. YOUTUBE
ECHO 2. TWITTER
ECHO 3. TIKTOK
ECHO 4. INSTAGRAM

SET /p "mode=Choose which option: "

SET /p "a_v=Download audio or video or subs ('a', 'v' or 's'): "

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
IF %a_v% EQU s (yt-dlp.exe --skip-download --write-auto-subs --write-subs --sub-lang en --convert-subs srt --sub-format txt --postprocessor-args "-ss 00:00:00 -to 99:59:59 -f srt - | sed '/^[0-9]*:[0-9]*:[0-9]*,[0-9]* --> [0-9]*:[0-9]*:[0-9]*,[0-9]*$/d' | tr -s '\n' ' ' > transcription.txt" -P "/Output" %url%)
GOTO Exit

:TwitterDown
ECHO DOWNLOADING TWITTER URL
IF %a_v% EQU a (yt-dlp.exe -P "/Output" -x %url%)
IF %a_v% EQU v (yt-dlp.exe -P "/Output" -w %url%)
GOTO Exit

:TiktokDown
ECHO DOWNLOADING TIKTOK URL
IF %a_v% EQU a (yt-dlp.exe --write-auto-subs -P "/Output" -x %url%)
IF %a_v% EQU v (yt-dlp.exe --skip-download --write-subs --write-auto-subs -P "/Output" -w %url%)

GOTO Exit

:InstagramDown
ECHO DOWNLOADING INSTAGRAM URL
IF %a_v% EQU a (yt-dlp.exe -P "/Output" -x %url%)
IF %a_v% EQU v (yt-dlp.exe -P "/Output" -w %url%)
GOTO Exit


:Exit
PAUSE