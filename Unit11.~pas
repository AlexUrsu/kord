unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, DateUtils, Buttons;

type
  TForm11 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

uses Unit1, Unit10, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9;

{$R *.dfm}

procedure TForm11.Button3Click(Sender: TObject);
begin
   Form5.Show;
   DataModule7.ADOTable2.Insert; // надо ли это здесь???
   Form5.Edit1.Text:='';
   Form5.Close;
   Form5.ShowModal;
end;

procedure TForm11.DBGrid1CellClick(Column: TColumn);
begin
{
if DataModule7.ADOQuery3.FieldValues['pacname']<>null then
  begin
  Label9.Caption:=DataModule7.ADOQuery3.FieldValues['pacname'];
  Label10.Caption:=DataModule7.ADOQuery3.FieldValues['pacfam'];
  Label11.Caption:=DataModule7.ADOQuery3.FieldValues['pacothes'];
  Label12.Caption:=DataModule7.ADOQuery3.FieldValues['pacdatarojd'];
  Panel3.Caption:=Label10.Caption+' '+Label9.Caption+' '+Label11.Caption+' ('+Label12.Caption+')';
  end;
}
end;

procedure TForm11.SpeedButton2Click(Sender: TObject);
begin
Form1.Close;
Close;
end;

procedure TForm11.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{
if DataModule7.ADOQuery3.FieldValues['pacname']<>null then begin
Label9.Caption:=DataModule7.ADOQuery3.FieldValues['pacname'];
Label10.Caption:=DataModule7.ADOQuery3.FieldValues['pacfam'];
Label11.Caption:=DataModule7.ADOQuery3.FieldValues['pacothes'];
Label12.Caption:=DataModule7.ADOQuery3.FieldValues['pacdatarojd'];
Panel3.Caption:=Label10.Caption+' '+Label9.Caption+' '+Label11.Caption+' ('+Label12.Caption+')';
end;
}
end;

procedure TForm11.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
// почему-то поиск не работает :(
 if key=#13 then
  begin
  end;
end;

procedure TForm11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DataModule10.ADOQuery1.Active:=false;
//DBGrid1.Visible:=false;
end;

procedure TForm11.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then SpeedButton2.Click;
end;

procedure TForm11.SpeedButton1Click(Sender: TObject);
var
login, password: string;
permission: integer;
begin
login:=Edit1.Text;
password:=Edit2.Text;
// проверяем логин и пароль
DataModule7.ADOTable2.Active:=true;
if DataModule7.ADOTable2.Locate('login;password', VarArrayOf([login, password]), [])=True then begin
// вход в систему
permission:=StrToInt(DataModule7.ADOTable2.FieldValues['permission']);
// загрузка с учетом прав доступа.
  if permission = 0 then Close;
  // для регистратора
  if permission = 1 then begin
  Form1.SpeedButton5.Visible:=False; // график
  Form1.SpeedButton3.Visible:=False; // доктора
  Form1.SpeedButton4.Visible:=False; // услуги
  Form1.SpeedButton7.Visible:=False; // мастерская
  Form1.SpeedButton6.Visible:=False;     // статус выполнено
  Form1.SpeedButton12.Visible:=False;    // статус не пришел
  Form1.SpeedButton14.Visible:=False;    // статус записан
  Close
  end;
  // для медсестер
  if permission = 2 then begin
  Form1.SpeedButton5.Visible:=False; // график
  Form1.SpeedButton3.Visible:=False; // доктора
  Form1.SpeedButton4.Visible:=False; // услуги
  Form1.SpeedButton7.Visible:=False; // мастерская
  Form1.Button2.Visible:=False;  // новый пациент
  Form1.Button3.Visible:=False;  // удалить запись пациента
  Form1.SpeedButton6.Visible:=False;     // статус выполнено
  Form1.SpeedButton12.Visible:=False;    // статус не пришел
  Form1.SpeedButton14.Visible:=False;    // статус записан
  Form6.SpeedButton2.Visible:=False; // редактирование пакетной записи
  Close
  end;
  // для врача
  if permission = 3 then begin
  Form1.SpeedButton3.Visible:=False; // доктора
  Form1.SpeedButton4.Visible:=False; // услуги
  Form1.SpeedButton7.Visible:=False; // мастерская
  Form1.Button2.Visible:=False;  // новый пациент
  Form1.Button3.Visible:=False;  // удалить запись пациента
  Close
  end;
end else
Application.MessageBox(PChar('Ошибка авторизации'), PChar('Внимание'), MB_OK);
end;

end.
