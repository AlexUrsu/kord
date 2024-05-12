unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, jpeg, Mask, DBCtrls;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label1: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Bevel3: TBevel;
    Label5: TLabel;
    Label8: TLabel;
    Bevel4: TBevel;
    DateTimePicker2: TDateTimePicker;
    ComboBox1: TComboBox;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  v:integer;
implementation

uses Unit1, Unit2, Unit3, Unit4, Unit6, Unit7, Unit11, Unit10;

{$R *.dfm}

procedure TForm5.FormShow(Sender: TObject);
begin
Form5.DateTimePicker2.Date:=now;
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
// сохраняючерез SQL запрос в адо квери 1,
// в надежде, что это поможет ибегать конфликта запросов

if Edit1.Text <>'' then begin
  if Application.MessageBox(PChar('Вы действительно хотите создать новую запись?'),'Внимание', MB_OKCANCEL)=id_OK then begin
    DataModule10.ADOQuery1.Active:=false;
    DataModule10.ADOQuery1.SQL.Clear;
    DataModule10.ADOQuery1.SQL.Add('INSERT INTO klient(klient_fio, kdatarogdenia, k_status)');
    DataModule10.ADOQuery1.SQL.Add('VALUES('+QuotedStr(Edit1.Text)+','+QuotedStr(DateToStr(DateTimePicker2.Date))+','+QuotedStr(Form5.ComboBox1.Text)+')');
    DataModule10.ADOQuery1.ExecSQL;
    Form1.SpeedButton2.Click; // обновляем данные в таблице после всенессных изменений
    Form5.Close;
  end;
  end else ShowMessage('Укажите пожалуйста ФИО пациента')

//DataModule10.ADOQuery1.SQL.Add('INSERT INTO klient(klient_fio, kdatarogdenia)');
//DataModule10.ADOQuery1.SQL.Add('VALUES('+QuotedStr(Edit1.Text)+','+QuotedStr(DateToStr(DateTimePicker2.Date))+')');


end;

end.
