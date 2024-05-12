unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons, Grids, DBGrids, jpeg,
  DBCtrls, Mask;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox4: TGroupBox;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    SpeedButton1: TSpeedButton;
    Bevel3: TBevel;
    Label19: TLabel;
    Label20: TLabel;
    DBGrid1: TDBGrid;
    Label9: TLabel;
    Label7: TLabel;
    SpeedButton2: TSpeedButton;
    Image1: TImage;
    Image2: TImage;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Edit2: TEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    UpDown3: TUpDown;
    UpDown4: TUpDown;
    Label6: TLabel;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    GroupBox3: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Bevel4: TBevel;
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  v:integer;
implementation

uses Unit1, Unit2, Unit3, Unit5, Unit6, Unit7;

{$R *.dfm}

procedure TForm4.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if v=0 then begin
   Image1.Picture.LoadFromFile('button1.jpg');
   v:=1;
   end;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
v:=1;
DataModule7.ADOQuery1.Active:=false;
DataModule7.ADOQuery1.SQL.Clear;
DataModule7.ADOQuery1.SQL.Add('SELECT *');
DataModule7.ADOQuery1.SQL.Add('FROM ysl');
DataModule7.ADOQuery1.SQL.Add('WHERE chastnameysl = '''+Edit2.Text+'''');
DataModule7.ADOQuery1.Active:=true;
Edit1.SetFocus;
end;

procedure TForm4.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if v=0 then begin
   Image2.Picture.LoadFromFile('button1.jpg');
   v:=1;
   end;
end;

procedure TForm4.Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if v=1 then begin
   Image2.Picture.LoadFromFile('button.jpg');
   Image1.Picture.LoadFromFile('button.jpg');
   v:=0;
   end;
end;

procedure TForm4.SpeedButton1Click(Sender: TObject);
var
  MyTime1,MyTime2:TDateTime;
begin
  MyTime1:=EncodeTime(StrToInt(Edit4.Text), StrToInt(Edit7.Text), 0, 0);
  MyTime2:=EncodeTime(StrToInt(Edit5.Text), StrToInt(Edit8.Text), 0, 0);
  if (MyTime2>MyTime1) and (DBLookupComboBox1.Text<>'') then begin
{Вписываем данные к пациенту }
DataModule7.ADOTable4.Insert;
DataModule7.ADOTable4.FieldValues['s']:=TimeToStr(MyTime1);
DataModule7.ADOTable4.FieldValues['po']:=TimeToStr(MyTime2);
DataModule7.ADOTable4.FieldValues['oname']:=DBLookupComboBox1.Text;
DataModule7.ADOTable4.FieldValues['chname']:=DBLookupComboBox2.Text;
DataModule7.ADOTable4.FieldValues['dlitelnost']:=DataModule7.ADOQuery1.FieldValues['dlitysl'];
DataModule7.ADOTable4.FieldValues['pover']:=DataModule7.ADOQuery1.FieldValues['moshysl'];
DataModule7.ADOTable4.Post;
  end else
 Application.MessageBox(PChar('Данные указаны не правильно'), 'Внимание');
end;

procedure TForm4.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image1.Picture.LoadFromFile('button1.jpg');
   Label20.Left:=414;
   v:=1;
   Image1.Picture.LoadFromFile('button.jpg');
   DBEdit1.Text:=Edit1.Text;
   DBEdit2.Text:=Edit2.Text;
   DBEdit3.Text:=Edit3.Text;

      if CheckBox1.Checked=true then
   DBEdit6.Text:='Да' else
   DBEdit6.Text:='Нет';
      if CheckBox2.Checked=true then
   DBEdit7.Text:='Да' else
   DBEdit7.Text:='Нет';
      if CheckBox3.Checked=true then
   DBEdit8.Text:='Да' else
   DBEdit8.Text:='Нет';
      if CheckBox4.Checked=true then
   DBEdit9.Text:='Да' else
   DBEdit9.Text:='Нет';
      if CheckBox5.Checked=true then
   DBEdit10.Text:='Да' else
   DBEdit10.Text:='Нет';
      if CheckBox6.Checked=true then
   DBEdit11.Text:='Да' else
   DBEdit11.Text:='Нет';
      if CheckBox7.Checked=true then
   DBEdit12.Text:='Да' else
   DBEdit12.Text:='Нет';
   if DataModule7.ADOTable3.Modified=true then
   DataModule7.ADOTable3.Post;
   if DataModule7.ADOTable4.Modified=true then
   DataModule7.ADOTable4.Post;
   DataModule7.ADOTable3.First;
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
   Close;
end;

procedure TForm4.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image1.Picture.LoadFromFile('button2.jpg');
   Label20.Left:=413;
end;

procedure TForm4.Image2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image2.Picture.LoadFromFile('button1.jpg');
   Label19.Left:=640;
   v:=1;
   Image2.Picture.LoadFromFile('button.jpg');
   Edit2.Text:='';
   Edit3.Text:='';
   Edit1.Text:='';
   DataModule7.ADOTable3.Prior;
   Close;
end;

procedure TForm4.Image2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image2.Picture.LoadFromFile('button2.jpg');
   Label19.Left:=639;
end;

procedure TForm4.DBLookupComboBox2Click(Sender: TObject);
begin
Edit2.Text:=DBLookupComboBox2.Text;
DataModule7.ADOQuery1.Active:=false;
DataModule7.ADOQuery1.SQL.Clear;
DataModule7.ADOQuery1.SQL.Add('SELECT *');
DataModule7.ADOQuery1.SQL.Add('FROM ysl');
DataModule7.ADOQuery1.SQL.Add('WHERE chastnameysl = '''+Edit2.Text+'''');
DataModule7.ADOQuery1.Active:=true;
end;

procedure TForm4.SpeedButton2Click(Sender: TObject);
begin
   if Application.MessageBox(PChar('Вы действительно хотите удалить запись?'),'Внимание', MB_OKCANCEL)=id_OK then
   DataModule7.ADOTable4.Delete;
end;

end.
