# Portable-Python

This shows how you can create a portable installation of Python from the official python.org website. The following script merely automates the steps you need to do to get a working embedded version up and running.

# Steps

Make sure you download the **Windows embeddable package (64-bit)** from:

    https://www.python.org/downloads/windows/

* Drop the Fix Python.ahk script (or Fix Python.exe) into the **extracted** zip directory.
* Double check there is a python.exe in the folder.
* Double click the Fix Python.ahk script.

If successful, the script will self delete.

![image](https://github.com/iseahound/Portable-Python/assets/9779668/59768935-a9a6-49f9-bd2f-92d2f009aef9)

# Additional Useful Scripts

You might find it useful to add python to your `bin` folder or PATH:

    @echo off
    "%~dp0python\python.exe" %*

You can also suppress the pip warnings

    @echo off
    if /I "%1"=="install" ("%~dp0python\scripts\pip.exe" %* --no-warn-script-location) else ("%~dp0python\scripts\pip.exe" %*)

Both scripts assume your main folder is called "python" and are dropped in the same directory as the folder called python.

![image](https://github.com/iseahound/Portable-Python/assets/9779668/8839ea08-b00c-4a31-9093-41442b8e0a8b)

You can change the path by adding something between `%~dp0` and `python` such as:

    "%~dp0Documents\python\python.exe" %*

which translates to:

    .\Documents\python\python.exe
