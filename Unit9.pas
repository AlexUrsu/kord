unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, ComCtrls, Grids, DBGrids, DateUtils, DBCtrls,
  Buttons, Mask;

type
  TForm9 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Image1: TImage;
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    Image2: TImage;
    Label4: TLabel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label12: TLabel;
    Bevel4: TBevel;
    Label13: TLabel;
    ProgressBar3: TProgressBar;
    procedure Image2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8;

{$R *.dfm}

procedure TForm9.Image2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
Data:TDateTime;
deykolvo,deyweek:integer;
n1:integer;
begin
  Image2.Picture.LoadFromFile('button.jpg');
  Label5.Left:=32;

{Проверка даты}
  if (DateTimePicker1.Date<=DateTimePicker2.Date)
  and (Label13.Caption='определен.') then begin
SpeedButton2.Click; {сохраняем таблицу первого порядка}
Label4.Caption:='Идет построение графика...';
  {Количество дней}
deykolvo:=1+DaysBetween(DateTimePicker1.Date, DateTimePicker2.Date);
n1:=1;
Data:=DateTimePicker1.Date;
ProgressBar1.Max:=deykolvo;
For n1:=1 to deykolvo do begin     {Цикл количества дней}
{День недели и рабочий или нет}
ProgressBar1.Position:=n1;
Label8.Caption:=DateToStr(Data);
deyweek:=DayofWeek(Data);      {Определяем день недели}
{условия на дни недели}
{если день недели понедельник и он рабочий, то
запускаем через кномку дальнейшую процедуру}
if (deyweek=2) and (DataModule7.ADOTable3.FieldValues['poned']=true) then
SpeedButton1.Click;
if (deyweek=3) and (DataModule7.ADOTable3.FieldValues['vtornik']=true) then
SpeedButton1.Click;
if (deyweek=4) and (DataModule7.ADOTable3.FieldValues['sreda']=true) then
SpeedButton1.Click;
if (deyweek=5) and (DataModule7.ADOTable3.FieldValues['chetverg']=true) then
SpeedButton1.Click;
if (deyweek=6) and (DataModule7.ADOTable3.FieldValues['patnica']=true) then
SpeedButton1.Click;
if (deyweek=7) and (DataModule7.ADOTable3.FieldValues['sybbota']=true) then
SpeedButton1.Click;
if (deyweek=1) and (DataModule7.ADOTable3.FieldValues['voskres']=true) then
SpeedButton1.Click;

Data:=Data+1;

end; {Конец цикла количества дней}
 end {Конец условия проверки даты}
 else Application.MessageBox(PChar('Внесите данные о специалисте и проверьте дату'),'Внимание');

 Label4.Caption:='Для расчета выберите специалиста и даты';
 Label8.Caption:='';
ProgressBar1.Position:=0;
ProgressBar2.Position:=0;
ProgressBar3.Position:=0;
 Close;
end;

procedure TForm9.SpeedButton1Click(Sender: TObject);
var
kolvoyslyg, kolvokonkrtnyslyg, mi:integer;
n,nn:integer;
StartTime,TotalTime,MyTime1,MyTime2: TDateTime;
Hour, Min, Sec, MSec: Word;
begin
{Количество видов услуг}
kolvoyslyg:=DataModule7.ADOTable4.RecordCount;
n:=1;
ProgressBar2.Max:=kolvoyslyg;
for n:=1 to kolvoyslyg do begin   {цикл видов услуг}
ProgressBar2.Position:=n;
{Количество услуг конкретного вида за один день}
DataModule7.ADOTable4.RecNo:=n;
MyTime1:=StrToTime(DataModule7.ADOTable4.FieldValues['s']);
MyTime2:=StrToTime(DataModule7.ADOTable4.FieldValues['po']);
TotalTime:=MyTime2-MyTime1;      {Определячем общее время}
DecodeTime(TotalTime, Hour, Min, Sec, MSec);
mi:=StrToInt(DataModule7.ADOTable4.FieldValues['dlitelnost']); {длительность услуги}
kolvokonkrtnyslyg:=round((Hour*60+Min)/mi);  {определяем количество услуг квида}
StartTime:=MyTime1;
nn:=1;
ProgressBar3.Max:=kolvokonkrtnyslyg;
{Внесение данных в таблицу второго порядка}
for nn:=1 to kolvokonkrtnyslyg do begin      {Цикл внесения данных}
ProgressBar3.Position:=nn;

DataModule8.ADOTable2.Insert;
DataModule8.ADOTable2.FieldValues['dokdata']:=Label8.Caption;
DataModule8.ADOTable2.FieldValues['doktime']:=TimeToStr(StartTime);
DataModule8.ADOTable2.FieldValues['onameyslygi']:=DataModule7.ADOTable4.FieldValues['oname'];
DataModule8.ADOTable2.FieldValues['moshyslygi']:=DataModule7.ADOTable4.FieldValues['pover'];
DataModule8.ADOTable2.FieldValues['dlityslygi']:=DataModule7.ADOTable4.FieldValues['dlitelnost'];
DataModule8.ADOTable2.FieldValues['keyyslygi']:=Edit1.Text;
{вместо кея введем специальность}
DataModule8.ADOTable2.Post;
StartTime:=StartTime+0.00069445*mi;     {добавляем время на следующий старт}
end; {конец цикла внесения данных}
end; {Конец цикла видов услуг}




end;

procedure TForm9.DBLookupComboBox1Click(Sender: TObject);
begin
Edit1.Text:=DBLookupComboBox1.Text;
Edit2.Text:='';
Edit3.Text:='';
DataModule7.ADOQuery2.Active:=false;
DataModule7.ADOQuery2.SQL.Clear;
DataModule7.ADOQuery2.SQL.Add('SELECT *');
DataModule7.ADOQuery2.SQL.Add('FROM dok');
DataModule7.ADOQuery2.SQL.Add('WHERE prof = '''+Edit1.Text+'''');
DataModule7.ADOQuery2.Active:=true;
Label13.Caption:='не определен!';
end;

procedure TForm9.DBLookupComboBox2Click(Sender: TObject);
begin
Edit2.Text:=DBLookupComboBox2.Text;
Edit3.Text:='';
DataModule7.ADOQuery2.Active:=false;
DataModule7.ADOQuery2.SQL.Clear;
DataModule7.ADOQuery2.SQL.Add('SELECT *');
DataModule7.ADOQuery2.SQL.Add('FROM dok');
DataModule7.ADOQuery2.SQL.Add('WHERE prof = '''+Edit1.Text+'''');
DataModule7.ADOQuery2.SQL.Add('AND fiodok = '''+Edit2.Text+'''');
DataModule7.ADOQuery2.Active:=true;
Label13.Caption:='не определен!';
end;

procedure TForm9.DBLookupComboBox3Click(Sender: TObject);
begin
Edit3.Text:=DBLookupComboBox3.Text;
DataModule7.ADOTable3.Active:=true;
if DataModule7.ADOTable3.Locate('prof;fiodok;kabinet', VarArrayOf([Edit1.Text, Edit2.Text, Edit3.Text]), [])=true then
Label13.Caption:='определен.' else Label12.Caption:='не определен!';

end;


procedure TForm9.SpeedButton2Click(Sender: TObject);
begin
{Сохранить данные первого порядка}
DBEdit1.Text:=Edit1.Text;
DBEdit2.Text:=Edit2.Text;
DBEdit3.Text:=Edit3.Text;
DBEdit4.Text:=DateToStr(DateTimePicker1.Date);
DBEdit5.Text:=DateToStr(DateTimePicker2.Date);
DataModule8.ADOTable1.Post;
end;

procedure TForm9.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Image1.Picture.LoadFromFile('button.jpg');
  Label6.Left:=472;
 DataModule8.ADOTable1.Prior;
 Close;
end;

procedure TForm9.Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if v=1 then begin
   Image1.Picture.LoadFromFile('button.jpg');
   Image2.Picture.LoadFromFile('button.jpg');
   v:=0;
   end;
end;

procedure TForm9.FormShow(Sender: TObject);
begin
v:=0;
DateTimePicker1.DateTime:=now;
DateTimePicker2.DateTime:=now;
end;

procedure TForm9.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if v=0 then begin
   Image2.Picture.LoadFromFile('button1.jpg');
   v:=1;
   end;
end;

procedure TForm9.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if v=0 then begin
   Image1.Picture.LoadFromFile('button1.jpg');
   v:=1;
   end;
end;

procedure TForm9.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image1.Picture.LoadFromFile('button2.jpg');
   Label6.Left:=471;
end;

procedure TForm9.Image2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image2.Picture.LoadFromFile('button2.jpg');
   Label5.Left:=31;
end;

end.
