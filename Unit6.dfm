object Form6: TForm6
  Left = 303
  Top = 169
  BorderStyle = bsDialog
  ClientHeight = 549
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 21
  object TabControl1: TTabControl
    Left = 0
    Top = 129
    Width = 788
    Height = 420
    Align = alClient
    MultiLine = True
    Style = tsFlatButtons
    TabOrder = 1
    Tabs.Strings = (
      '  '#1054#1076#1085#1086#1082#1088#1072#1090#1085#1086)
    TabIndex = 0
    OnChange = TabControl1Change
    object Panel4: TPanel
      Left = 4
      Top = 35
      Width = 780
      Height = 381
      Align = alClient
      Caption = 'Panel4'
      TabOrder = 1
      object GroupBox2: TGroupBox
        Left = 8
        Top = 36
        Width = 753
        Height = 317
        Caption = #1051#1080#1089#1090#1099' '#1085#1072#1079#1085#1072#1095#1077#1085#1080#1103
        TabOrder = 0
        object Bevel1: TBevel
          Left = 218
          Top = 10
          Width = 2
          Height = 305
        end
        object SpeedButton2: TSpeedButton
          Left = 600
          Top = 14
          Width = 145
          Height = 30
          Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
          OnClick = SpeedButton2Click
        end
        object SpeedButton3: TSpeedButton
          Left = 424
          Top = 14
          Width = 81
          Height = 30
          Caption = #1059#1076#1072#1083#1080#1090#1100
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
          OnClick = SpeedButton3Click
        end
        object SpeedButton1: TSpeedButton
          Left = 8
          Top = 256
          Width = 201
          Height = 39
          Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1088#1072#1089#1095#1077#1090
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clNavy
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton1Click
        end
        object SpeedButton4: TSpeedButton
          Left = 16
          Top = 176
          Width = 185
          Height = 33
          Caption = #1042#1085#1077#1089#1090#1080
          Visible = False
          OnClick = SpeedButton4Click
        end
        object SpeedButton5: TSpeedButton
          Left = 16
          Top = 80
          Width = 185
          Height = 33
          Caption = #1059#1076#1072#1083#1080#1090#1100' '#1080#1079' '#1089#1087#1080#1089#1082#1072
          OnClick = SpeedButton5Click
        end
        object Label5: TLabel
          Left = 40
          Top = 24
          Width = 61
          Height = 21
          Caption = #1057#1087#1080#1089#1086#1082
        end
        object SpeedButton6: TSpeedButton
          Left = 512
          Top = 14
          Width = 81
          Height = 30
          Caption = #1042#1085#1077#1089#1090#1080
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
          OnClick = SpeedButton6Click
        end
        object DBGrid1: TDBGrid
          Left = 224
          Top = 48
          Width = 513
          Height = 257
          DataSource = DataModule7.DataSource11
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = RUSSIAN_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -19
          TitleFont.Name = 'Times New Roman'
          TitleFont.Style = []
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 16
          Top = 48
          Width = 185
          Height = 29
          KeyField = 'bname'
          ListField = 'bname'
          ListSource = DataModule7.DataSource10
          TabOrder = 1
        end
        object Edit3: TEdit
          Left = 16
          Top = 144
          Width = 185
          Height = 29
          TabOrder = 2
          Visible = False
          OnKeyPress = Edit3KeyPress
        end
        object CheckBox1: TCheckBox
          Left = 16
          Top = 120
          Width = 185
          Height = 17
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1089#1087#1080#1089#1086#1082
          TabOrder = 3
          OnClick = CheckBox1Click
        end
      end
      object GroupBox7: TGroupBox
        Left = 0
        Top = 32
        Width = 425
        Height = 329
        Caption = #1042#1099#1073#1086#1088' '#1091#1089#1083#1091#1075#1080
        TabOrder = 1
        Visible = False
        DesignSize = (
          425
          329)
        object DBLookupListBox3: TDBLookupListBox
          Left = 8
          Top = 24
          Width = 137
          Height = 251
          Anchors = [akLeft, akTop, akBottom]
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          KeyField = 'specialnost'
          ListField = 'specialnost'
          ListSource = DataModule7.DataSource5
          ParentFont = False
          TabOrder = 0
          OnClick = DBLookupListBox3Click
        end
        object DBLookupListBox4: TDBLookupListBox
          Left = 160
          Top = 24
          Width = 249
          Height = 251
          Anchors = [akLeft, akTop, akBottom]
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          KeyField = 'obchnameysl'
          ListField = 'obchnameysl'
          ListSource = DataModule7.DataSource6
          ParentFont = False
          TabOrder = 1
          OnClick = DBLookupListBox4Click
        end
      end
    end
    object Panel1: TPanel
      Left = 4
      Top = 35
      Width = 780
      Height = 381
      Align = alClient
      TabOrder = 0
      object Label6: TLabel
        Left = 616
        Top = 0
        Width = 5
        Height = 21
        Visible = False
      end
      object Label7: TLabel
        Left = 592
        Top = 8
        Width = 5
        Height = 21
        Visible = False
      end
      object SpeedButton9: TSpeedButton
        Left = 512
        Top = 8
        Width = 121
        Height = 25
        Caption = #1057#1074#1086#1073' '#1084#1077#1089#1090#1086' '
        Visible = False
        OnClick = SpeedButton9Click
      end
      object GroupBox3: TGroupBox
        Left = 8
        Top = 40
        Width = 761
        Height = 321
        Caption = #1042#1099#1073#1086#1088' '#1091#1089#1083#1091#1075#1080
        TabOrder = 0
        DesignSize = (
          761
          321)
        object DBLookupListBox1: TDBLookupListBox
          Left = 8
          Top = 24
          Width = 137
          Height = 270
          Anchors = [akLeft, akTop, akBottom]
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          KeyField = 'specialnost'
          ListField = 'specialnost'
          ListSource = DataModule7.DataSource5
          ParentFont = False
          TabOrder = 0
          OnClick = DBLookupListBox1Click
        end
        object DBLookupListBox2: TDBLookupListBox
          Left = 160
          Top = 24
          Width = 249
          Height = 270
          Anchors = [akLeft, akTop, akBottom]
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          KeyField = 'obchnameysl'
          ListField = 'obchnameysl'
          ListSource = DataModule7.DataSource6
          ParentFont = False
          TabOrder = 1
          Visible = False
          OnClick = DBLookupListBox2Click
        end
        object GroupBox1: TGroupBox
          Left = 432
          Top = 0
          Width = 329
          Height = 321
          Caption = #1042#1088#1077#1084#1103
          TabOrder = 2
          object DBGrid3: TDBGrid
            Left = 16
            Top = 48
            Width = 297
            Height = 265
            DataSource = DataModule8.DataSource4
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = RUSSIAN_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = 'Times New Roman'
            TitleFont.Style = []
            Visible = False
            OnDblClick = BitBtn1Click
            OnKeyPress = DBGrid3KeyPress
          end
        end
      end
      object BitBtn1: TBitBtn
        Left = 654
        Top = 11
        Width = 107
        Height = 22
        Caption = #1047#1072#1087#1080#1089#1072#1090#1100
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clHotLight
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Visible = False
        OnClick = BitBtn1Click
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 788
    Height = 129
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Bevel2: TBevel
      Left = 8
      Top = 16
      Width = 409
      Height = 97
    end
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 50
      Height = 21
      Caption = 'Label1'
      Transparent = True
      Visible = False
    end
    object Label2: TLabel
      Left = 16
      Top = 40
      Width = 50
      Height = 21
      Caption = 'Label2'
      Transparent = True
    end
    object Label3: TLabel
      Left = 16
      Top = 64
      Width = 50
      Height = 21
      Caption = 'Label3'
      Transparent = True
    end
  end
  object Panel5: TPanel
    Left = 432
    Top = 2
    Width = 340
    Height = 158
    Caption = 'Panel5'
    TabOrder = 2
    object MonthCalendar1: TMonthCalendar
      Left = 1
      Top = 1
      Width = 338
      Height = 153
      Align = alTop
      Date = 40419.756035069450000000
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = MonthCalendar1Click
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 433
    Height = 161
    TabOrder = 3
    Visible = False
    object GroupBox4: TGroupBox
      Left = 8
      Top = 8
      Width = 417
      Height = 121
      Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1091#1089#1083#1091#1075
      TabOrder = 0
      object SpeedButton7: TSpeedButton
        Left = 168
        Top = 8
        Width = 17
        Height = 17
        Visible = False
        OnClick = SpeedButton7Click
      end
      object SpeedButton8: TSpeedButton
        Left = 184
        Top = 8
        Width = 17
        Height = 17
        Visible = False
      end
      object Label8: TLabel
        Left = 224
        Top = 8
        Width = 20
        Height = 21
        Caption = 'L8'
        Visible = False
      end
      object Label9: TLabel
        Left = 248
        Top = 8
        Width = 20
        Height = 21
        Caption = 'L9'
        Visible = False
      end
      object RadioGroup1: TRadioGroup
        Left = 8
        Top = 24
        Width = 161
        Height = 89
        Caption = #1050#1088#1072#1090#1085#1086#1089#1090#1100' '#1087#1088#1086#1094#1077#1076#1091#1088
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object RadioButton2: TRadioButton
        Left = 16
        Top = 48
        Width = 113
        Height = 17
        Caption = #1045#1078#1077#1076#1085#1077#1074#1085#1086
        Checked = True
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        TabStop = True
      end
      object RadioButton3: TRadioButton
        Left = 16
        Top = 68
        Width = 113
        Height = 17
        Caption = #1063#1077#1088#1077#1079' '#1076#1077#1085#1100
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object GroupBox5: TGroupBox
        Left = 168
        Top = 24
        Width = 105
        Height = 89
        Caption = #1050#1086#1083'-'#1074#1086' '
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object Edit1: TEdit
          Left = 24
          Top = 28
          Width = 41
          Height = 27
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          Text = '1'
        end
        object UpDown1: TUpDown
          Left = 65
          Top = 28
          Width = 16
          Height = 27
          Associate = Edit1
          Min = 1
          Max = 30
          Position = 1
          TabOrder = 1
        end
      end
      object GroupBox6: TGroupBox
        Left = 272
        Top = 24
        Width = 137
        Height = 89
        Caption = #1044#1077#1085#1100' '#1085#1072#1095#1072#1083#1072
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object Edit2: TEdit
          Left = 40
          Top = 28
          Width = 41
          Height = 27
          ReadOnly = True
          TabOrder = 0
          Text = '1'
        end
        object UpDown2: TUpDown
          Left = 81
          Top = 28
          Width = 16
          Height = 27
          Associate = Edit2
          Min = 1
          Max = 30
          Position = 1
          TabOrder = 1
        end
      end
    end
    object Panel7: TPanel
      Left = 1
      Top = 128
      Width = 431
      Height = 32
      Align = alBottom
      BevelInner = bvLowered
      BevelWidth = 2
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1088#1086#1094#1077#1076#1091#1088#1099
      Color = clBtnHighlight
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
end
