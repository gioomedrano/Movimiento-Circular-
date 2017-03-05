VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7230
   ClientLeft      =   5220
   ClientTop       =   585
   ClientWidth     =   9330
   LinkTopic       =   "Form1"
   ScaleHeight     =   7230
   ScaleWidth      =   9330
   Begin VB.CommandButton iniciar 
      Caption         =   "COMENZAR Y FINALIZAR"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   3120
      TabIndex        =   0
      Top             =   2880
      Width           =   2535
   End
   Begin VB.Timer falsotop 
      Enabled         =   0   'False
      Interval        =   25
      Left            =   3840
      Top             =   4080
   End
   Begin VB.Timer verdaderotop 
      Enabled         =   0   'False
      Interval        =   25
      Left            =   4560
      Top             =   4080
   End
   Begin VB.Shape objeto 
      BackColor       =   &H000000FF&
      BorderColor     =   &H00FF0000&
      BorderStyle     =   3  'Dot
      FillColor       =   &H00FFFFFF&
      Height          =   975
      Left            =   240
      Shape           =   3  'Circle
      Top             =   240
      Width           =   975
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub iniciar_Click()
    verdaderotop.Enabled = True
    falsotop.Enabled = True
End Sub


Private Sub parar_Click()
falsotop.Enabled = True
End Sub

Private Sub verdaderotop_Timer()

If objeto.Left > 8000 Then
   falsotop.Enabled = True
End If

If falsotop.Enabled Then
    verdaderotop.Enabled = False

ElseIf objeto.Top < 6000 Then
    objeto.Top = objeto.Top + 200
ElseIf objeto.Top > 6000 Then
    objeto.Left = objeto.Left + 200
End If

End Sub


Private Sub falsotop_Timer()

If objeto.Left < 120 Then
   verdaderotop.Enabled = True
End If


If verdaderotop.Enabled Then
    falsotop.Enabled = False
End If

If objeto.Left > 8000 Then
    objeto.Top = objeto.Top - 200
End If
If objeto.Top < 120 Then
    objeto.Left = objeto.Left - 200
End If


End Sub


