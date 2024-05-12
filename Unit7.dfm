object DataModule7: TDataModule7
  OldCreateOrder = False
  Left = 998
  Top = 183
  Height = 609
  Width = 303
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=info.mdb;Persist Se' +
      'curity Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 24
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'ysl'
    Left = 32
    Top = 72
    object ADOTable1keyysl: TAutoIncField
      FieldName = 'keyysl'
      ReadOnly = True
      Visible = False
    end
    object ADOTable1obchnameysl: TWideStringField
      DisplayLabel = #1053#1072#1079#1072#1085#1080#1077' '#1091#1089#1083#1091#1075#1080
      DisplayWidth = 35
      FieldName = 'obchnameysl'
      Size = 50
    end
    object ADOTable1chastnameysl: TWideStringField
      DisplayLabel = #1057#1087#1077#1094#1080#1072#1083#1080#1089#1090
      DisplayWidth = 20
      FieldName = 'chastnameysl'
      Size = 50
    end
    object ADOTable1dlitysl: TWideStringField
      DisplayLabel = #1044#1083#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100' ('#1084#1080#1085')'
      DisplayWidth = 15
      FieldName = 'dlitysl'
      Size = 50
    end
    object ADOTable1moshysl: TIntegerField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1095#1077#1083#1086#1074#1077#1082
      FieldName = 'moshysl'
    end
  end
  object ADOTable2: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'admin'
    Left = 32
    Top = 120
    object ADOTable2keyadmin: TAutoIncField
      FieldName = 'keyadmin'
      ReadOnly = True
    end
    object ADOTable2login: TWideStringField
      FieldName = 'login'
      Size = 50
    end
    object ADOTable2password: TWideStringField
      FieldName = 'password'
      Size = 50
    end
    object ADOTable2permission: TIntegerField
      FieldName = 'permission'
    end
  end
  object ADOTable3: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'dok'
    Left = 32
    Top = 168
    object ADOTable3keydok: TAutoIncField
      FieldName = 'keydok'
      ReadOnly = True
      Visible = False
    end
    object ADOTable3fiodok: TWideStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103' '#1048'.'#1054'.'
      DisplayWidth = 20
      FieldName = 'fiodok'
      Size = 50
    end
    object ADOTable3prof: TWideStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      DisplayWidth = 20
      FieldName = 'prof'
      Size = 50
    end
    object ADOTable3kabinet: TWideStringField
      DisplayLabel = #1050#1072#1073#1080#1085#1077#1090
      DisplayWidth = 8
      FieldName = 'kabinet'
      Size = 50
    end
    object ADOTable3poned: TBooleanField
      DisplayLabel = #1055#1085
      FieldName = 'poned'
      DisplayValues = #1044#1072';'#1053#1077#1090
    end
    object ADOTable3vtornik: TBooleanField
      DisplayLabel = #1042#1090
      FieldName = 'vtornik'
      DisplayValues = #1044#1072';'#1053#1077#1090
    end
    object ADOTable3sreda: TBooleanField
      DisplayLabel = #1057#1088
      FieldName = 'sreda'
      DisplayValues = #1044#1072';'#1053#1077#1090
    end
    object ADOTable3chetverg: TBooleanField
      DisplayLabel = #1063#1090
      FieldName = 'chetverg'
      DisplayValues = #1044#1072';'#1053#1077#1090
    end
    object ADOTable3patnica: TBooleanField
      DisplayLabel = #1055#1090
      FieldName = 'patnica'
      DisplayValues = #1044#1072';'#1053#1077#1090
    end
    object ADOTable3sybbota: TBooleanField
      DisplayLabel = #1057#1073
      FieldName = 'sybbota'
      DisplayValues = #1044#1072';'#1053#1077#1090
    end
    object ADOTable3voskres: TBooleanField
      DisplayLabel = #1042#1089
      FieldName = 'voskres'
      DisplayValues = #1044#1072';'#1053#1077#1090
    end
  end
  object ADOTable4: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'num'
    MasterFields = 'keydok'
    MasterSource = DataSource3
    TableName = 'doks'
    Left = 32
    Top = 216
    object ADOTable4keydoks: TAutoIncField
      FieldName = 'keydoks'
      ReadOnly = True
      Visible = False
    end
    object ADOTable4s: TWideStringField
      DisplayLabel = 'c'
      DisplayWidth = 5
      FieldName = 's'
      Size = 50
    end
    object ADOTable4po: TWideStringField
      DisplayLabel = #1076#1086
      DisplayWidth = 5
      FieldName = 'po'
      Size = 50
    end
    object ADOTable4oname: TWideStringField
      DisplayLabel = #1059#1089#1083#1091#1075#1072
      DisplayWidth = 25
      FieldName = 'oname'
      Size = 50
    end
    object ADOTable4chname: TWideStringField
      DisplayLabel = #1063#1072#1089#1090#1085#1086#1077' '#1085#1072#1079#1072#1074#1085#1080#1077
      DisplayWidth = 10
      FieldName = 'chname'
      Visible = False
      Size = 50
    end
    object ADOTable4num: TIntegerField
      FieldName = 'num'
      Visible = False
    end
    object ADOTable4dlitelnost: TWideStringField
      FieldName = 'dlitelnost'
      Visible = False
      Size = 50
    end
    object ADOTable4pover: TIntegerField
      FieldName = 'pover'
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 88
    Top = 72
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 88
    Top = 120
  end
  object DataSource3: TDataSource
    DataSet = ADOTable3
    Left = 88
    Top = 168
  end
  object DataSource4: TDataSource
    DataSet = ADOTable4
    Left = 88
    Top = 216
  end
  object ADOTable5: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'spech'
    Left = 32
    Top = 264
  end
  object DataSource5: TDataSource
    DataSet = ADOTable5
    Left = 88
    Top = 264
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM ysl')
    Left = 104
    Top = 312
    object ADOQuery1keyysl: TAutoIncField
      FieldName = 'keyysl'
      ReadOnly = True
    end
    object ADOQuery1obchnameysl: TWideStringField
      FieldName = 'obchnameysl'
      Size = 50
    end
    object ADOQuery1chastnameysl: TWideStringField
      FieldName = 'chastnameysl'
      Size = 50
    end
    object ADOQuery1dlitysl: TWideStringField
      FieldName = 'dlitysl'
      Size = 50
    end
    object ADOQuery1moshysl: TIntegerField
      FieldName = 'moshysl'
    end
  end
  object DataSource6: TDataSource
    DataSet = ADOQuery1
    Left = 152
    Top = 312
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM dok')
    Left = 104
    Top = 360
  end
  object DataSource7: TDataSource
    DataSet = ADOQuery2
    Left = 152
    Top = 360
  end
  object ADOTable6: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'matrix'
    Left = 24
    Top = 456
    object ADOTable6ku: TAutoIncField
      FieldName = 'ku'
      ReadOnly = True
      Visible = False
    end
    object ADOTable6mtime: TWideStringField
      FieldName = 'mtime'
      Size = 50
    end
    object ADOTable6mdata: TWideStringField
      FieldName = 'mdata'
      Visible = False
      Size = 50
    end
    object ADOTable6mnameyslygi: TWideStringField
      FieldName = 'mnameyslygi'
      Size = 50
    end
    object ADOTable6mnamedok: TWideStringField
      FieldName = 'mnamedok'
      Size = 50
    end
    object ADOTable6mdokprof: TWideStringField
      FieldName = 'mdokprof'
      Size = 50
    end
    object ADOTable6mkab: TWideStringField
      FieldName = 'mkab'
      Size = 50
    end
    object ADOTable6mdlitelnost: TWideStringField
      FieldName = 'mdlitelnost'
      Size = 50
    end
  end
  object DataSource8: TDataSource
    DataSet = ADOTable6
    Left = 64
    Top = 456
  end
  object ADOTable7: TADOTable
    Active = True
    Connection = ADOConnection2
    CursorType = ctStatic
    TableName = 'base'
    Left = 24
    Top = 520
    object ADOTable7bkey: TAutoIncField
      FieldName = 'bkey'
      ReadOnly = True
      Visible = False
    end
    object ADOTable7bname: TWideStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077
      DisplayWidth = 20
      FieldName = 'bname'
      Size = 50
    end
  end
  object ADOTable8: TADOTable
    Active = True
    Connection = ADOConnection2
    CursorType = ctStatic
    IndexFieldNames = 'bnum'
    MasterFields = 'bkey'
    MasterSource = DataSource10
    TableName = 'bassa'
    Left = 24
    Top = 568
    object ADOTable8bkeyy: TAutoIncField
      FieldName = 'bkeyy'
      ReadOnly = True
      Visible = False
    end
    object ADOTable8bnum: TIntegerField
      FieldName = 'bnum'
      Visible = False
    end
    object ADOTable8bspecialnost: TWideStringField
      DisplayLabel = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
      FieldName = 'bspecialnost'
      Visible = False
      Size = 50
    end
    object ADOTable8bnameyslugi: TWideStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077' '#1091#1089#1083#1091#1075#1080
      DisplayWidth = 22
      FieldName = 'bnameyslugi'
      Visible = False
      Size = 50
    end
    object ADOTable8btimeuslygi: TWideStringField
      DisplayLabel = #1059#1089#1083#1091#1075#1072
      DisplayWidth = 30
      FieldName = 'btimeuslygi'
      Size = 50
    end
    object ADOTable8bdlituslugi: TWideStringField
      DisplayLabel = #1044#1083#1080#1090#1077#1083#1100#1085#1089#1086#1090#1100' '#1091#1089#1083#1091#1075#1080
      FieldName = 'bdlituslugi'
      Visible = False
      Size = 50
    end
    object ADOTable8bkratnost: TWideStringField
      DisplayLabel = #1050#1088#1072#1090#1085#1086#1089#1090#1100
      DisplayWidth = 10
      FieldName = 'bkratnost'
      Size = 50
    end
    object ADOTable8braz: TWideStringField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      DisplayWidth = 10
      FieldName = 'braz'
      Size = 50
    end
    object ADOTable8bdata: TWideStringField
      DisplayLabel = #1044#1077#1085#1100' '#1085#1072#1095#1072#1083#1072
      DisplayWidth = 10
      FieldName = 'bdata'
      Size = 50
    end
    object ADOTable8bdokname: TWideStringField
      FieldName = 'bdokname'
      Visible = False
      Size = 50
    end
  end
  object DataSource10: TDataSource
    DataSet = ADOTable7
    Left = 72
    Top = 520
  end
  object DataSource11: TDataSource
    DataSet = ADOTable8
    Left = 80
    Top = 568
  end
  object ADOConnection2: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=listnazn.mdb;Persis' +
      't Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 144
    Top = 520
  end
end
