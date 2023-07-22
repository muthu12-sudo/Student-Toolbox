VERSION 5.00
Begin VB.Form Home 
   BackColor       =   &H00004080&
   Caption         =   "CALC PARK"
   ClientHeight    =   9690
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   19035
   FillStyle       =   0  'Solid
   LinkTopic       =   "Form1"
   Palette         =   "CALC PARK.frx":0000
   Picture         =   "CALC PARK.frx":1FCF2
   ScaleHeight     =   9690
   ScaleWidth      =   19035
   WindowState     =   2  'Maximized
   Begin VB.Frame pcalc 
      BackColor       =   &H00C0FFFF&
      BorderStyle     =   0  'None
      Caption         =   "s"
      Height          =   6135
      Left            =   3120
      TabIndex        =   21
      Top             =   2760
      Visible         =   0   'False
      Width           =   15135
      Begin VB.CommandButton Ext 
         Caption         =   "Exit"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   1
         Left            =   6360
         TabIndex        =   40
         Top             =   5160
         Width           =   2415
      End
      Begin VB.CommandButton Command3 
         Caption         =   "="
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   9120
         TabIndex        =   35
         Top             =   2880
         Width           =   615
      End
      Begin VB.CommandButton Command2 
         Caption         =   "="
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   9120
         TabIndex        =   34
         Top             =   1800
         Width           =   615
      End
      Begin VB.CommandButton Command1 
         Caption         =   "="
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   765
         Left            =   9120
         TabIndex        =   33
         Top             =   720
         Width           =   615
      End
      Begin VB.TextBox t1 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   21.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   600
         TabIndex        =   27
         Top             =   720
         Width           =   2295
      End
      Begin VB.TextBox t2 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   21.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   5760
         TabIndex        =   26
         Top             =   720
         Width           =   2295
      End
      Begin VB.TextBox t4 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   21.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   600
         TabIndex        =   25
         Top             =   1800
         Width           =   2295
      End
      Begin VB.TextBox t5 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   21.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   5760
         TabIndex        =   24
         Top             =   1800
         Width           =   2295
      End
      Begin VB.TextBox t8 
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "0"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   16393
            SubFormatType   =   0
         EndProperty
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   21.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   5760
         TabIndex        =   23
         Top             =   2880
         Width           =   2295
      End
      Begin VB.TextBox t7 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   21.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   600
         TabIndex        =   22
         Top             =   2880
         Width           =   2295
      End
      Begin VB.Label t10 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   21.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   735
         Left            =   600
         TabIndex        =   39
         Top             =   4200
         Width           =   14055
         WordWrap        =   -1  'True
      End
      Begin VB.Label t9 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   21.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   735
         Left            =   10200
         TabIndex        =   38
         Top             =   2880
         Width           =   4455
         WordWrap        =   -1  'True
      End
      Begin VB.Label t6 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   21.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   735
         Left            =   10200
         TabIndex        =   37
         Top             =   1800
         Width           =   4455
         WordWrap        =   -1  'True
      End
      Begin VB.Label t3 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   21.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   735
         Left            =   10200
         TabIndex        =   36
         Top             =   720
         Width           =   4455
         WordWrap        =   -1  'True
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "%"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   675
         Left            =   3000
         TabIndex        =   32
         Top             =   840
         Width           =   735
         WordWrap        =   -1  'True
      End
      Begin VB.Label Label2 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Of"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   615
         Left            =   4320
         TabIndex        =   31
         Top             =   840
         Width           =   1095
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "is what % of"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   615
         Left            =   3120
         TabIndex        =   30
         Top             =   1920
         Width           =   2535
      End
      Begin VB.Label Label7 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "is "
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   615
         Left            =   3120
         TabIndex        =   29
         Top             =   3000
         Width           =   2535
      End
      Begin VB.Label Label8 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "% of"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   405
         Left            =   8160
         TabIndex        =   28
         Top             =   3000
         Width           =   855
         WordWrap        =   -1  'True
      End
   End
   Begin VB.CommandButton switch 
      Appearance      =   0  'Flat
      BackColor       =   &H0080FFFF&
      Caption         =   "PERCENTAGE CALCULATOR"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   8640
      MaskColor       =   &H0080FFFF&
      TabIndex        =   0
      Top             =   1800
      UseMaskColor    =   -1  'True
      Width           =   3975
   End
   Begin VB.Frame scalc 
      BackColor       =   &H00C0FFFF&
      BorderStyle     =   0  'None
      Height          =   6975
      Left            =   6360
      TabIndex        =   4
      Top             =   2520
      Width           =   8175
      Begin VB.CommandButton Ext 
         Caption         =   "Exit"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   0
         Left            =   5520
         TabIndex        =   20
         Top             =   6120
         Width           =   2415
      End
      Begin VB.CommandButton Clr 
         Caption         =   "Clear"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   5520
         TabIndex        =   19
         TabStop         =   0   'False
         Top             =   5160
         Width           =   2415
      End
      Begin VB.CommandButton cmdeq 
         Caption         =   "="
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   4
         Left            =   240
         TabIndex        =   18
         Top             =   6120
         Width           =   5055
      End
      Begin VB.CommandButton cmdmul 
         Caption         =   "x"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   3
         Left            =   5520
         TabIndex        =   17
         Top             =   4200
         Width           =   2415
      End
      Begin VB.CommandButton cmddiv 
         Caption         =   "/"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   2
         Left            =   5520
         TabIndex        =   16
         Top             =   3240
         Width           =   2415
      End
      Begin VB.CommandButton cmdmin 
         Caption         =   "-"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   1
         Left            =   5520
         TabIndex        =   15
         Top             =   2280
         Width           =   2415
      End
      Begin VB.CommandButton cmdadd 
         Caption         =   "+"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   0
         Left            =   5520
         TabIndex        =   14
         Top             =   1320
         Width           =   2415
      End
      Begin VB.CommandButton num 
         Caption         =   "9"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   9
         Left            =   2880
         TabIndex        =   13
         Top             =   4200
         Width           =   2415
      End
      Begin VB.CommandButton num 
         Caption         =   "8"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   8
         Left            =   2880
         TabIndex        =   12
         Top             =   3240
         Width           =   2415
      End
      Begin VB.CommandButton num 
         Caption         =   "7"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   7
         Left            =   2880
         TabIndex        =   11
         Top             =   2280
         Width           =   2415
      End
      Begin VB.CommandButton num 
         Caption         =   "6"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   6
         Left            =   2880
         TabIndex        =   10
         Top             =   1320
         Width           =   2415
      End
      Begin VB.CommandButton num 
         Caption         =   "5"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   5
         Left            =   240
         TabIndex        =   9
         Top             =   5160
         Width           =   2415
      End
      Begin VB.CommandButton num 
         Caption         =   "4"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   4
         Left            =   240
         TabIndex        =   8
         Top             =   4200
         Width           =   2415
      End
      Begin VB.CommandButton num 
         Caption         =   "3"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   3
         Left            =   240
         TabIndex        =   7
         Top             =   3240
         Width           =   2415
      End
      Begin VB.CommandButton num 
         Caption         =   "2"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   2
         Left            =   240
         TabIndex        =   6
         Top             =   2280
         Width           =   2415
      End
      Begin VB.CommandButton num 
         Caption         =   "1"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   1
         Left            =   240
         TabIndex        =   5
         Top             =   1320
         Width           =   2415
      End
      Begin VB.CommandButton num 
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   0
         Left            =   2880
         TabIndex        =   3
         Top             =   5160
         Width           =   2415
      End
      Begin VB.TextBox Text1 
         Alignment       =   1  'Right Justify
         BeginProperty Font 
            Name            =   "Trebuchet MS"
            Size            =   27.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   750
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   7935
      End
   End
   Begin VB.Label Title 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackColor       =   &H0080FFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "CALC PARK"
      BeginProperty Font 
         Name            =   "MV Boli"
         Size            =   26.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   750
      Left            =   7800
      TabIndex        =   2
      Top             =   840
      Width           =   5430
      WordWrap        =   -1  'True
   End
End
Attribute VB_Name = "Home"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'SIMPLE CAL
Dim x, y, res, a, b, c As Double
Dim o As Boolean
Dim opr As String
Private Sub num_Click(Index As Integer)
If o = False Then
Text1.Text = Text1.Text + num(Index).Caption
x = Val(Text1.Text)
Else
Text1.Text = Text1.Text + num(Index).Caption
y = Val(Text1.Text)
End If
End Sub

Private Sub cmdadd_Click(Index As Integer)
If x Or y Then
o = True
opr = "+"
Text1.Text = " "
Else
o = False
End If
End Sub

Private Sub cmdmin_Click(Index As Integer)
If x Then
o = True
opr = "-"
Text1.Text = " "
Else
o = False
End If
End Sub

Private Sub cmdmul_Click(Index As Integer)
If x Then
o = True
opr = "*"
Text1.Text = " "
Else
o = False
End If
End Sub

Private Sub cmddiv_Click(Index As Integer)
If x Then
o = True
opr = "/"
Text1.Text = " "
ElseIf Text1.Text = 0 Then
Text1.Text = "Zero Division Error"
o = False
Else
o = False
Text1.Text = " "
End If
End Sub

Private Sub cmdeq_Click(Index As Integer)
If opr = "+" Then
res = x + y
Text1.Text = res
x = res
o = False
ElseIf opr = "-" Then
res = x - y
Text1.Text = res
x = res
ElseIf opr = "*" Then
res = x * y
Text1.Text = res
x = res
ElseIf opr = "/" And y <> 0 Then
res = x / y
Text1.Text = res
x = res
ElseIf opr = "/" And y = 0 Then
Text1.Text = "Zero Division Error"
End If
End Sub

Private Sub Clr_Click()
Text1.Text = ""
x = 0
y = 0
End Sub

Private Sub Ext_Click(Index As Integer)
End
End Sub

Private Sub switch_Click()
If scalc.Visible = True Then
scalc.Visible = False
pcalc.Visible = True
switch.Caption = "SIMPLE CALCULATOR"
ElseIf pcalc.Visible = True Then
scalc.Visible = True
pcalc.Visible = False
switch.Caption = "PERCENTAGE CALCULATOR"
End If
End Sub
 
'Percentage Calculator

Private Sub Command1_Click()
a = 0
b = 0
c = 0
If Val(t1.Text) = 0 Then
t10.Caption = "Zero Divide Error or Provide Valid Numbers."
Else
b = Val(t2.Text)
a = Val(t1.Text)
c = a * b / 100
t3.Caption = c
t10.Caption = t1.Text & " x " & t2.Text & " / 100 = " & c
End If
End Sub

Private Sub Command2_Click()
a = 0
b = 0
c = 0
b = Val(t5.Text)
If Val(t4.Text) = 0 Then
t10.Caption = "Zero Divide Error or Provide Valid Numbers."
Else
t10.Caption = ""
a = Val(t4.Text) / b
c = a * 100
t6.Caption = c & "%"
t10.Caption = t4.Text & " / " & t5.Text & " x 100 = " & c
End If
End Sub

Private Sub Command3_Click()
a = 0
b = 0
c = 0
b = Val(t8.Text)
If Val(t7.Text) = 0 Then
t10.Caption = "Zero Divide Error or Provide Valid Numbers."
Else
t10.Caption = ""
a = Val(t7.Text)
c = (a / b) * 100
t9.Caption = c
t10.Caption = t7.Text & " / " & t8.Text & " x 100 = " & c
End If
End Sub
