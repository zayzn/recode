# recode

This simple batch script uses FFmpeg with libx264 to convert mp4-video files
with a variable bitrate into mp4-video files with a fixed bitrate. This is
useful if the video file is supposed to be edited with programs like Adobe
Premiere Pro or Sony Vegas, since these have poor support for video files with a
variable bitrate. Because of that, this script is well suited for people who
like to record using Nvidia Shadowplay or similar recording software.

## Requirements

* Microsoft Windows 2000 or later
* Zeranoe FFmpeg 99882d0 (2016-08-31) or later

Earlier version of FFmpeg will probably work fine but the mentioned version has
been the first to be tested against. You can download Zeranoe FFmpeg from [this website](https://ffmpeg.zeranoe.com/builds/).

## Installation

Copy  the *ffmpeg.exe* file from the Zeranoe FFmpeg archive and the *recode.bat*
file to the folder that contains the files you like to convert.

## Configuration

The following parameters are configurable:

* Output directory (*out*): The directory to which re-encoded file will be copied to.
* Constant rate factor (*crf*): The "quality factor" of the encoder. Lower means
higher quality but also takes longer.
* Framerate (*fps*): The framerate of the re-encoded file.
* FFmpeg encoding preset (*preset*): Please see the FFmpeg documentation for details.

Open the recode.bat file with an editor of your choice and adjust the values of
the variables named in the brackets above to set their values.
