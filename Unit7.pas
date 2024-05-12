unit Unit7;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule7 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    ADOTable3: TADOTable;
    ADOTable4: TADOTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    ADOTable1keyysl: TAutoIncField;
    ADOTable1obchnameysl: TWideStringField;
    ADOTable1chastnameysl: TWideStringField;
    ADOTable1dlitysl: TWideStringField;
    ADOTable3keydok: TAutoIncField;
    ADOTable3fiodok: TWideStringField;
    ADOTable3prof: TWideStringField;
    ADOTable3kabinet: TWideStringField;
    ADOTable4keydoks: TAutoIncField;
    ADOTable4s: TWideStringField;
    ADOTable4po: TWideStringField;
    ADOTable4oname: TWideStringField;
    ADOTable4chname: TWideStringField;
    ADOTable4num: TIntegerField;
    ADOTable3poned: TBooleanField;
    ADOTable3vtornik: TBooleanField;
    ADOTable3sreda: TBooleanField;
    ADOTable3chetverg: TBooleanField;
    ADOTable3patnica: TBooleanField;
    ADOTable3sybbota: TBooleanField;
    ADOTable3voskres: TBooleanField;
    ADOTable4dlitelnost: TWideStringField;
    ADOTable5: TADOTable;
    DataSource5: TDataSource;
    ADOQuery1: TADOQuery;
    DataSource6: TDataSource;
    ADOQuery1keyysl: TAutoIncField;
    ADOQuery1obchnameysl: TWideStringField;
    ADOQuery1chastnameysl: TWideStringField;
    ADOQuery1dlitysl: TWideStringField;
    ADOQuery2: TADOQuery;
    DataSource7: TDataSource;
    ADOTable6: TADOTable;
    DataSource8: TDataSource;
    ADOTable6ku: TAutoIncField;
    ADOTable6mtime: TWideStringField;
    ADOTable6mdata: TWideStringField;
    ADOTable6mnameyslygi: TWideStringField;
    ADOTable6mnamedok: TWideStringField;
    ADOTable6mdokprof: TWideStringField;
    ADOTable6mkab: TWideStringField;
    ADOTable6mdlitelnost: TWideStringField;
    ADOTable1moshysl: TIntegerField;
    ADOTable4pover: TIntegerField;
    ADOQuery1moshysl: TIntegerField;
    ADOTable7: TADOTable;
    ADOTable8: TADOTable;
    DataSource10: TDataSource;
    DataSource11: TDataSource;
    ADOTable7bkey: TAutoIncField;
    ADOTable7bname: TWideStringField;
    ADOTable8bkeyy: TAutoIncField;
    ADOTable8bnum: TIntegerField;
    ADOTable8bspecialnost: TWideStringField;
    ADOTable8bnameyslugi: TWideStringField;
    ADOTable8bdlituslugi: TWideStringField;
    ADOTable8btimeuslygi: TWideStringField;
    ADOTable8bdokname: TWideStringField;
    ADOTable8bdata: TWideStringField;
    ADOTable8bkratnost: TWideStringField;
    ADOTable8braz: TWideStringField;
    ADOConnection2: TADOConnection;
    ADOTable2keyadmin: TAutoIncField;
    ADOTable2login: TWideStringField;
    ADOTable2password: TWideStringField;
    ADOTable2permission: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule7: TDataModule7;

implementation

uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit6;

{$R *.dfm}

end.
