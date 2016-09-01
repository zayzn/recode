@echo off
REM Re-encode script for videos with variable bitrate.
REM The script re-encodes all the .mp4 files in the current directory and moves the new video into the target directory

REM target directory
set out=out

REM constant rate factor
set crf=19

REM framerate
set fps=60

REM encoding preset
set preset=ultrafast

REM If the target directory does not exist, create it.
if not exist %out% mkdir %out%

REM Convert every .mp4 in the current directory and copy the output to the target directory.
for %%i in ("*.mp4") do (
    echo Processing: %%~ni
    start /min /high /wait ffmpeg -i "%%i" -hide_banner -vsync 1 -crf %crf% -r %fps% -c:v libx264 -preset %preset% -c:a copy %out%"\%%~ni.mp4"
)
echo Done.
pause