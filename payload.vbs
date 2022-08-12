Option Explicit

dim x
set x = WScript.CreateObject("wscript.shell")

x.Run("notepad.exe")
WScript.Sleep(1000)
x.SendKeys("Hello World!", 1)
