unit Unit8;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule8 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ADOTable1k1: TAutoIncField;
    ADOTable1dokname: TWideStringField;
    ADOTable1dokprof: TWideStringField;
    ADOTable1dokkab: TWideStringField;
    ADOTable1dokkeys: TWideStringField;
    ADOTable1dokdataggafs: TWideStringField;
    ADOTable1dokdatagrafpo: TWideStringField;
    ADOTable2ki2: TAutoIncField;
    ADOTable2dokdata: TWideStringField;
    ADOTable2doktime: TWideStringField;
    ADOTable2keyyslygi: TWideStringField;
    ADOTable2onameyslygi: TWideStringField;
    ADOTable2num1: TIntegerField;
    ADOTable2dlityslygi: TWideStringField;
    ADOQuery1: TADOQuery;
    DataSource3: TDataSource;
    ADOQuery1ki2: TAutoIncField;
    ADOQuery1dokdata: TWideStringField;
    ADOQuery1doktime: TWideStringField;
    ADOQuery1keyyslygi: TWideStringField;
    ADOQuery1onameyslygi: TWideStringField;
    ADOQuery1num1: TIntegerField;
    ADOQuery1dlityslygi: TWideStringField;
    ADOQuery1k1: TAutoIncField;
    ADOQuery1dokname: TWideStringField;
    ADOQuery2: TADOQuery;
    DataSource4: TDataSource;
    ADOQuery2doktime: TWideStringField;
    ADOQuery2dokdata: TWideStringField;
    ADOQuery2onameyslygi: TWideStringField;
    ADOQuery2dlityslygi: TWideStringField;
    ADOQuery2keyyslygi: TWideStringField;
    ADOQuery2num1: TIntegerField;
    ADOQuery2ki2: TAutoIncField;
    ADOQuery2k1: TAutoIncField;
    ADOQuery2dokname: TWideStringField;
    ADOQuery2dokkab: TWideStringField;
    ADOTable2moshyslygi: TIntegerField;
    ADOQuery1moshyslygi: TIntegerField;
    ADOQuery2moshyslygi: TIntegerField;
    ADOQuery2dokprof: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule8: TDataModule8;

implementation

uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7;

{$R *.dfm}

end.
