Attribute VB_Name = "Module121111"


Sub WDB_plot_for_onePage_PowerPoint()

'
' Macro5 Macro
' Macro recorded 04/30/2012 by chung_su
'
Dim i As Integer
Dim j As Integer
Dim k As Integer
Dim DEV_Start, DEV_Stop As Integer
Dim plotName2 As String
Dim sHape As sHape
Dim sheetCnt As Integer
Dim myShape As sHape
Dim Plot_col As Integer
Dim Plot_row As Integer



MsgBox ("No plot sheets deleted!!!")

Application.DisplayAlerts = True

'///////End of delete no plot sheet

Sheets(1).Activate
Worksheets.Add
sheetCnt = Application.Sheets.Count



'renaming pictures
k = 10001
 For i = 2 To sheetCnt
    Sheets(i).Activate
    For Each myShape In ActiveSheet.Shapes
        myShape.Name = "Picture" & Str(k)
        k = k + 1
    Next
    k = 10001
 Next i



k = 1
 For i = 2 To sheetCnt
    Sheets(i).Activate
    For Each myShape In ActiveSheet.Shapes
        myShape.Name = "Picture" & Str(k)
        k = k + 1
    Next
    k = 1
 Next i


  '  ActiveSheet.Shapes.Range(Array("Picture 1")).Select
  ' ActiveSheet.Shapes.Range(Array("Picture 1")).Select
Plot_col = 8
'Plot_row =1
DEV_Start = 216
DEV_Stop = 270

For j = DEV_Start To DEV_Stop                                  'num of devices tested
    For i = 2 To sheetCnt
            Sheets(i).Activate

        plotName2 = "Picture" & Str(j)
        
           
           ' Set sHape = ActiveSheet.Shapes(plotName)
              
            ActiveSheet.Shapes.Range(Array(plotName2)).Select
        
        
          
            
          
            Selection.Copy
            Sheets(1).Activate
            Cells((Int((j - 1) / (Plot_col)) + 1) * 22 + 1, ((j - 1) Mod Plot_col) * 8 + 50).Select
           ActiveSheet.Paste
           
           ActiveSheet.Pictures.Select
           
 
            

            
           
    
    Next i
Next j
    
End Sub


