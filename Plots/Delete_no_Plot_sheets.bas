Attribute VB_Name = "Module12"



Sub Delete_no_plot_sheet()

'
' Macro5 Macro
' Macro recorded 11/3/2010 by chung_su
'
Dim i As Integer
Dim j As Integer
Dim DEV_Start, DEV_Stop As Integer
Dim plotName2 As String
Dim sHape As sHape
Dim pic As sHape
Dim sheetCnt As Integer
Dim myShape As sHape


'Delete no plot sheet
sheetCnt = Application.Sheets.Count
For k = sheetCnt To 1 Step -1
Sheets(k).Activate
    If Not (Right(Sheets(k).Name, 4) = "Plot") Then
  
   Sheets(k).Delete
   End If
Next k


    
End Sub


