object Form11: TForm11
  Left = 471
  Top = 266
  BorderStyle = bsNone
  Caption = #1042#1093#1086#1076' '#1074' '#1089#1080#1089#1090#1077#1084#1091
  ClientHeight = 196
  ClientWidth = 373
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 21
  object Panel1: TPanel
    Left = 0
    Top = 136
    Width = 373
    Height = 60
    Align = alBottom
    TabOrder = 0
    object Bevel2: TBevel
      Left = 8
      Top = 8
      Width = 353
      Height = 41
    end
    object SpeedButton2: TSpeedButton
      Left = 16
      Top = 16
      Width = 113
      Height = 25
      Caption = #1042#1099#1093#1086#1076
      OnClick = SpeedButton2Click
    end
    object SpeedButton1: TSpeedButton
      Left = 200
      Top = 16
      Width = 153
      Height = 25
      Caption = #1042#1093#1086#1076' '#1074' '#1089#1080#1089#1090#1077#1084#1091
      OnClick = SpeedButton1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 373
    Height = 136
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 40
      Top = 40
      Width = 51
      Height = 21
      Caption = #1051#1086#1075#1080#1085
    end
    object Label2: TLabel
      Left = 40
      Top = 88
      Width = 59
      Height = 21
      Caption = #1055#1072#1088#1086#1083#1100
    end
    object Bevel1: TBevel
      Left = 8
      Top = 8
      Width = 353
      Height = 121
    end
    object Edit1: TEdit
      Left = 136
      Top = 40
      Width = 209
      Height = 29
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 136
      Top = 88
      Width = 209
      Height = 29
      TabOrder = 1
    end
  end
end
