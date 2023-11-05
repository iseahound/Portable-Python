# Portable-Python

This shows how you can create a portable installation of Python from the official python.org website. The following script merely automates the steps you need to do to get a working embedded version up and running.

# Steps

Make sure you download the embedded zip from:

    https://www.python.org/downloads/windows/

* Drop the Fix Python.ahk script into the extracted zip.
* Double check there is a python.exe in the folder.
* Double click the Fix Python.ahk script.

If successful, the script will self delete.

# Additional Useful Scripts

You might find it useful to add python to your `bin` folder or PATH:

    @echo off
    "%~dp0python\python.exe" %*

You can also suppress the pip warnings

    @echo off
    if /I "%1"=="install" ("%~dp0python\scripts\pip.exe" %* --no-warn-script-location) else ("%~dp0python\scripts\pip.exe" %*)

Both scripts assume your main folder is called "python" and are dropped in the same directory as the folder called python.
