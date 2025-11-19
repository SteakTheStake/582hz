    @echo off
    echo Converting *.wav to *.ogg...

    REM Create an "Ogg" subdirectory to store converted files
    mkdir ".\Ogg"

    REM Loop through all WAV files in the current directory and subdirectories
    for /r %%i in ("*.wav") do (
        ffmpeg -i "%%i" -acodec libvorbis ".\Ogg\%%~ni.ogg"
    )

    echo Conversion complete. OGG files are in the "Ogg" subdirectory.
    pause