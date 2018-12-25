B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Service
Version=8
@EndOfDesignText@
#Region  Service Attributes 
	#StartAtBoot: False
	#Extends: com.shengji.SJAccessibilityServiceWrapper
#End Region



Sub Process_Globals
	'These global variables will be declared once when the application starts.
	'These variables can be accessed from all modules.
	Private SJAccessibilityService1 As SJAccessibilityService
End Sub

Sub Service_Create
	SJAccessibilityService1.Initialize("SJAccessibilityService1","")
	
End Sub

Sub Service_Start (StartingIntent As Intent)
	'SJAccessibilityService1.Initialize("SJAccessibilityService1","")
	Service.StopAutomaticForeground 'Call this when the background task completes (if there is one)
End Sub

Sub Service_Destroy

End Sub


Sub SJAccessibilityService1_onServiceConnected ()
	LogColor("SJAccessibilityService1_onServiceConnected",Colors.Blue)
End Sub

Sub SJAccessibilityService1_onInfoBigCanClick (infoName As String,nodeInfo As AccessibilityNodeInfo)
	LogColor("SJAccessibilityService1_onInfoBigCanClick",Colors.Red)
	'SJAccessibilityService1.PerformClick(nodeInfo)
End Sub

Sub SJAccessibilityService1_onInfoSmlCanClick (infoName As String,nodeInfo As AccessibilityNodeInfo)
	LogColor("SJAccessibilityService1_onInfoSmlCanClick",Colors.Green)
End Sub

Sub SJAccessibilityService1_onAccessibilityRect (leftP As Int,topP As Int,wP As Int,hP As Int,leftS As Int,topS As Int,wS As Int,hS As Int)
	Log("leftP=" & leftP & ",topP=" & topP & ",wP=" & wP & ",hP=" & hP)
	Log("leftS=" & leftS & ",topS=" & topS & ",wS=" & wS & ",hS=" & hS)
End Sub

'Sub SJAccessibilityService1_onAccessibilityInfo (addr As String)
'	LogColor(addr,Colors.Red)
'End Sub
'
'Sub SJAccessibilityService1_onAccessibilityRect (left As String,top As String,w As String,h As String)
'	Log("00000------000000------")
'End Sub