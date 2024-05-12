unit Unit10;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule10 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ADOTable2k3: TAutoIncField;
    ADOTable2klientdata: TWideStringField;
    ADOTable2knaimeyslygi: TWideStringField;
    ADOTable2kdokname: TWideStringField;
    ADOTable2kdokprofil: TWideStringField;
    ADOTable2kdokkab: TWideStringField;
    ADOTable2klientnumer: TIntegerField;
    ADOQuery1: TADOQuery;
    DataSource3: TDataSource;
    ADOTable2kdlityslugi: TWideStringField;
    ADOTable1key_klient: TAutoIncField;
    ADOTable1klient_fio: TWideStringField;
    ADOTable1kdatarogdenia: TWideStringField;
    ADOTable1k_status: TWideStringField;
    ADOTable2stat_uslugi: TWideStringField;
    ADOQuery1key_klient: TAutoIncField;
    ADOQuery1klient_fio: TWideStringField;
    ADOQuery1kdatarogdenia: TWideStringField;
    ADOQuery1k_status: TWideStringField;
    ADOTable2comment: TWideStringField;
    ADOQuery2: TADOQuery;
    DataSource4: TDataSource;
    ADOQuery2klient_fio: TWideStringField;
    ADOQuery2stat_uslugi: TWideStringField;
    ADOQuery2ktime: TDateTimeField;
    ADOTable2ktime: TDateTimeField;
    ADOQuery2key_klient: TAutoIncField;
    ADOQuery2klientnumer: TIntegerField;
    ADOQuery2klientdata: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule10: TDataModule10;

implementation

uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9;

{$R *.dfm}

end.
