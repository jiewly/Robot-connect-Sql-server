;if sql server exsix
if WinActivate("Microsoft SQL Server Management Studio") Then
   Sleep(1000)
   WinClose("Microsoft SQL Server Management Studio")
   EndIf
;call sql server
Run("C:\Program Files (x86)\Microsoft SQL Server\140\Tools\Binn\ManagementStudio\Ssms.exe")



;load compte
WinWaitActive("Connect to Server")

$passwordStr = ControlGetText("Connect to Server","","[NAME:password]")
if $passwordStr= "" Then
   ControlClick ("Connect to Server","","[NAME:comboBoxAuthentication]")
   Sleep(3000)
   ControlSend("Connect to Server","","","{DOWN}")
   Sleep(3000)
    ControlClick("Connect to Server","","[NAME:connect]")
   Else
    ControlClick ("Connect to Server","","[NAME:comboBoxAuthentication]")
	Sleep(3000)
   ControlSend("Connect to Server","","","{UP}")
   Sleep(3000)
   ControlClick("Connect to Server","","[NAME:connect]")

   EndIf

;MsgBox(1,"Test",$passwordStr)

;enter or click connect
;ControlSend("Connect to Server","","","{enter}")