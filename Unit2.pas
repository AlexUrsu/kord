unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, jpeg, Mask, DBCtrls, Buttons;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    Label4: TLabel;
    Label5: TLabel;
    Bevel2: TBevel;
    Label6: TLabel;
    UpDown1: TUpDown;
    Bevel3: TBevel;
    Label7: TLabel;
    Bevel4: TBevel;
    Label8: TLabel;
    Edit4: TEdit;
    UpDown2: TUpDown;
    Bevel5: TBevel;
    Image1: TImage;
    Image2: TImage;
    Label9: TLabel;
    Label10: TLabel;
    Bevel6: TBevel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton1: TSpeedButton;
    DBEdit5: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Edit3: TEdit;
    SpeedButton2: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5Change(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  v:integer;
implementation

uses Unit1, Unit3, Unit4, Unit5, Unit6, Unit7;

{$R *.dfm}

procedure TForm2.FormShow(Sender: TObject);
begin
v:=0;
EDit2.SetFocus;
end;

procedure TForm2.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if v=0 then begin
   Image2.Picture.LoadFromFile('button1.jpg');
   v:=1;
   end;
end;

procedure TForm2.Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if v=1 then begin
   Image1.Picture.LoadFromFile('button.jpg');
   Image2.Picture.LoadFromFile('button.jpg');
   v:=0;
   end;
end;

procedure TForm2.Image2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image2.Picture.LoadFromFile('button2.jpg');
   Label10.Left:=513;
end;

procedure TForm2.Image2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image2.Picture.LoadFromFile('button1.jpg');
   Label10.Left:=512;
   v:=1;
   Image2.Picture.LoadFromFile('button.jpg');
   Edit2.Text:='';
   Edit3.Text:='';
   Edit1.Text:='5';
   Edit4.Text:='1';
   DataModule7.ADOTable1.Prior;
   Close;
end;

procedure TForm2.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if v=0 then begin
   Image1.Picture.LoadFromFile('button1.jpg');
   v:=1;
   end;
end;

procedure TForm2.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image1.Picture.LoadFromFile('button2.jpg');
   Label9.Left:=375;
end;

procedure TForm2.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image1.Picture.LoadFromFile('button1.jpg');
   Label9.Left:=374;
   v:=1;
   Image1.Picture.LoadFromFile('button.jpg');
   DBEdit1.Text:=Edit2.Text;
   DBEdit2.Text:=DBLookupComboBox1.Text;
   DBEdit3.Text:=Edit1.Text;
   DBEdit4.Text:=Edit4.Text;
   DataModule7.ADOTable1.Post;
   Edit2.Text:='';
   Edit3.Text:='';
   Edit1.Text:='5';
   Edit4.Text:='1';
   Close;
end;

procedure TForm2.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
EDit4.SetFocus;
end;

procedure TForm2.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then begin
   Image1.Picture.LoadFromFile('button1.jpg');
   Label9.Left:=374;
   v:=1;
   Image1.Picture.LoadFromFile('button.jpg');
   DBEdit1.Text:=Edit2.Text;
   DBEdit2.Text:=DBLookupComboBox1.Text;
   DBEdit3.Text:=Edit1.Text;
   DBEdit4.Text:=Edit4.Text;
   DataModule7.ADOTable1.Post;
   Edit2.Text:='';
   Edit3.Text:='';
   Edit1.Text:='5';
   Edit4.Text:='1';
   Close;
end;

end;

procedure TForm2.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
Edit3.SetFocus;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
var
s:string;
begin
s:='';
if not InputQuery('Ввод новой специальности','Введите новый вариант',s) then exit;
DataModule7.ADOTable5.Insert;
DBEdit5.Text:=s;
DataModule7.ADOTable5.Post;
end;

procedure TForm2.DBComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
Edit1.SetFocus;
end;

procedure TForm2.DBEdit5Change(Sender: TObject);
begin
Edit3.Text:=DBEdit5.Text;
end;

procedure TForm2.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then Edit1.SetFocus;
end;

procedure TForm2.DBLookupComboBox1Click(Sender: TObject);
begin
Edit3.Text:=DBLookupComboBox1.Text;
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
   if Application.MessageBox(PChar('Вы действительно хотите удалить запись?'),'Внимание', MB_OKCANCEL)=id_OK then
   DataModule7.ADOTable5.Delete;
end;

end.
