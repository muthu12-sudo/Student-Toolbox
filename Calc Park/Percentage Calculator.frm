VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3135
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   11055
   ScaleWidth      =   20370
   StartUpPosition =   3  'Windows Default
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a, b, c As Double

Private Sub Form_Load()
Clear.All
End Sub

Private Sub Text3_Change()
If Text1.Text = True & Text2.Text = True Then
Text1.Text = a
Text2.Text = b
c = a * b
Text1.Text = c
End If
End Sub
