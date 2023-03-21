x=msgbox("Your system will get deleted" ,0, "You Are Virused")
x=msgbox("3" ,0, "You Are Virused")
x=msgbox("2" ,0, "You Are Virused")
x=msgbox("1" ,0, "You Are Virused")

Set objVoice = CreateObject("SAPI.SpVoice")
Set objFile = CreateObject("SAPI.SpFileStream.1")

objFile.Open "oxp.wav"
objVoice.Speakstream objFile
Wscript.Echo "just an error"

x=msgbox("wait while your system its getting deleted" ,0, "VIRUS")
strComputer = "."
Set objWMIService = GetObject_
    ("winmgmts:{impersonationLevel=impersonate,(Shutdown)}\\" & _
        strComputer & "\root\cimv2")

Set colOperatingSystems = objWMIService.ExecQuery _
    ("Select * from Win32_OperatingSystem")
 
For Each objOperatingSystem in colOperatingSystems
    objOperatingSystem.Win32Shutdown(1)
Next
