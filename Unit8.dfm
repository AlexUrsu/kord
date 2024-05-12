object DataModule8: TDataModule8
  OldCreateOrder = False
  Left = 1079
  Top = 341
  Height = 395
  Width = 284
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=doksgraf.mdb;Persis' +
      't Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 48
    Top = 32
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'dokgraf'
    Left = 48
    Top = 80
    object ADOTable1k1: TAutoIncField
      FieldName = 'k1'
      ReadOnly = True
      Visible = False
    end
    object ADOTable1dokprof: TWideStringField
      DisplayLabel = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
      DisplayWidth = 18
      FieldName = 'dokprof'
      Size = 50
    end
    object ADOTable1dokname: TWideStringField
      DisplayLabel = #1060#1048#1054' '#1074#1088#1072#1095#1072
      DisplayWidth = 18
      FieldName = 'dokname'
      Size = 50
    end
    object ADOTable1dokkab: TWideStringField
      DisplayLabel = #1050#1072#1073
      DisplayWidth = 6
      FieldName = 'dokkab'
      Size = 50
    end
    object ADOTable1dokkeys: TWideStringField
      FieldName = 'dokkeys'
      Visible = False
      Size = 50
    end
    object ADOTable1dokdataggafs: TWideStringField
      DisplayLabel = #1043#1088#1072#1092#1080#1082' '#1089
      DisplayWidth = 12
      FieldName = 'dokdataggafs'
      Size = 50
    end
    object ADOTable1dokdatagrafpo: TWideStringField
      DisplayLabel = #1043#1088#1072#1092#1080#1082' '#1087#1086
      DisplayWidth = 12
      FieldName = 'dokdatagrafpo'
      Size = 50
    end
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'num1'
    MasterFields = 'k1'
    MasterSource = DataSource1
    TableName = 'dokgraff'
    Left = 48
    Top = 128
    object ADOTable2ki2: TAutoIncField
      FieldName = 'ki2'
      ReadOnly = True
      Visible = False
    end
    object ADOTable2dokdata: TWideStringField
      DisplayLabel = #1044#1072#1090#1072
      DisplayWidth = 10
      FieldName = 'dokdata'
      Size = 50
    end
    object ADOTable2doktime: TWideStringField
      DisplayLabel = #1042#1088#1077#1084#1103' '#1085#1072#1095#1072#1083#1072
      DisplayWidth = 14
      FieldName = 'doktime'
      Size = 50
    end
    object ADOTable2onameyslygi: TWideStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077' '#1091#1089#1083#1091#1075#1080
      DisplayWidth = 25
      FieldName = 'onameyslygi'
      Size = 50
    end
    object ADOTable2dlityslygi: TWideStringField
      DisplayLabel = #1044#1083#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100
      DisplayWidth = 14
      FieldName = 'dlityslygi'
      Size = 50
    end
    object ADOTable2moshyslygi: TIntegerField
      FieldName = 'moshyslygi'
    end
    object ADOTable2keyyslygi: TWideStringField
      DisplayLabel = #1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
      FieldName = 'keyyslygi'
      Visible = False
      Size = 50
    end
    object ADOTable2num1: TIntegerField
      FieldName = 'num1'
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 112
    Top = 80
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 112
    Top = 128
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM dokgraff, dokgraf ')
    Left = 48
    Top = 176
    object ADOQuery1ki2: TAutoIncField
      FieldName = 'ki2'
      ReadOnly = True
      Visible = False
    end
    object ADOQuery1dokdata: TWideStringField
      FieldName = 'dokdata'
      Visible = False
      Size = 50
    end
    object ADOQuery1doktime: TWideStringField
      DisplayLabel = #1042#1088#1077#1084#1103
      DisplayWidth = 8
      FieldName = 'doktime'
      Size = 50
    end
    object ADOQuery1keyyslygi: TWideStringField
      FieldName = 'keyyslygi'
      Visible = False
      Size = 50
    end
    object ADOQuery1onameyslygi: TWideStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077' '#1091#1089#1083#1091#1075#1080
      DisplayWidth = 25
      FieldName = 'onameyslygi'
      Size = 50
    end
    object ADOQuery1dlityslygi: TWideStringField
      DisplayLabel = #1044#1083#1080#1090'.'
      DisplayWidth = 6
      FieldName = 'dlityslygi'
      Size = 50
    end
    object ADOQuery1moshyslygi: TIntegerField
      DisplayLabel = #1057#1074#1086#1073' '#1084#1077#1089#1090
      FieldName = 'moshyslygi'
    end
    object ADOQuery1num1: TIntegerField
      FieldName = 'num1'
      Visible = False
    end
    object ADOQuery1k1: TAutoIncField
      FieldName = 'k1'
      ReadOnly = True
      Visible = False
    end
    object ADOQuery1dokname: TWideStringField
      FieldName = 'dokname'
      Visible = False
      Size = 50
    end
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery1
    Left = 112
    Top = 176
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM dokgraff, dokgraf ')
    Left = 48
    Top = 224
    object ADOQuery2doktime: TWideStringField
      DisplayLabel = #1042#1088#1077#1084#1103
      DisplayWidth = 7
      FieldName = 'doktime'
      Size = 50
    end
    object ADOQuery2dokdata: TWideStringField
      FieldName = 'dokdata'
      Visible = False
      Size = 50
    end
    object ADOQuery2onameyslygi: TWideStringField
      FieldName = 'onameyslygi'
      Visible = False
      Size = 50
    end
    object ADOQuery2dlityslygi: TWideStringField
      DisplayLabel = #1044#1083#1080#1090'.('#1084#1080#1085')'
      DisplayWidth = 8
      FieldName = 'dlityslygi'
      Visible = False
      Size = 50
    end
    object ADOQuery2keyyslygi: TWideStringField
      FieldName = 'keyyslygi'
      Visible = False
      Size = 50
    end
    object ADOQuery2num1: TIntegerField
      FieldName = 'num1'
      Visible = False
    end
    object ADOQuery2moshyslygi: TIntegerField
      FieldName = 'moshyslygi'
      Visible = False
    end
    object ADOQuery2ki2: TAutoIncField
      FieldName = 'ki2'
      ReadOnly = True
      Visible = False
    end
    object ADOQuery2k1: TAutoIncField
      FieldName = 'k1'
      ReadOnly = True
      Visible = False
    end
    object ADOQuery2dokname: TWideStringField
      DisplayLabel = #1060#1048#1054' '#1089#1087#1077#1094#1080#1072#1083#1080#1089#1090#1072
      DisplayWidth = 20
      FieldName = 'dokname'
      Size = 50
    end
    object ADOQuery2dokkab: TWideStringField
      DisplayLabel = #1050#1072#1073'.'
      DisplayWidth = 8
      FieldName = 'dokkab'
      Size = 50
    end
    object ADOQuery2dokprof: TWideStringField
      FieldName = 'dokprof'
      Visible = False
      Size = 50
    end
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery2
    Left = 112
    Top = 224
  end
end
