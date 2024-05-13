unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, Menus, ToolWin, ComCtrls, StdCtrls, Grids,
  DBGrids, jpeg, DBCtrls, DateUtils, ComObj;

{
Надо проверить работу пакетной записи.
Сделать в записи проверку на свободное время у пациента
стоит подключаться к базам только в момент запроса? вроде что-то сделал



 база listnazn это доп база в торой можно записывать перечень услуг (курс)
 для последующей пакетной записи.
 база dokgraf хранит информацию о расписании докторов num1 видимо ключ к доктору id
 база klient - база где указан список пациентов и в подбазе записываются его назначения
 вмидимо именно в ней надо сделать статусы этих назначений
 база info самая обширная
  - таблица dok хранит инфу о врачах их кабинете и днях работы
  - таблица doks хранит инфу о времени приема num видать айди врача (засерается удаленными записями, по идее надо несуществующие нумы удалять)
  - таблица матрица видимо для расчета свободного места ? хз
  - таблица pac хранит инфу о пациентах? вроде дублируется с базой клиентов?
  получается база клиента - создается когда делается уч запись - карта клиента,
  а в базе pac хранятся только его персональные данные (по хорошему лишнее дублирование)
  - таблица spech хранит список специальностей
  - таблица ysl хранит список услуг
}


type
  TForm1 = class(TForm)
    Panel1: TPanel;
    ToolBar1: TToolBar;
    SpeedButton2: TSpeedButton;
    ToolButton1: TToolButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    DBGrid1: TDBGrid;
    Panel7: TPanel;
    Label1: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    SpeedButton5: TSpeedButton;
    Panel8: TPanel;
    Panel9: TPanel;
    DBGrid2: TDBGrid;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel11: TPanel;
    DBGrid3: TDBGrid;
    SpeedButton7: TSpeedButton;
    Panel15: TPanel;
    Panel16: TPanel;
    Timer1: TTimer;
    Panel20: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    DBGrid7: TDBGrid;
    Panel25: TPanel;
    DBGrid8: TDBGrid;
    Panel26: TPanel;
    SpeedButton10: TSpeedButton;
    DBGrid9: TDBGrid;
    GroupBox1: TGroupBox;
    Image10: TImage;
    Image11: TImage;
    MonthCalendar2: TMonthCalendar;
    SpeedButton8: TSpeedButton;
    SpeedButton11: TSpeedButton;
    Image12: TImage;
    DBText1: TDBText;
    DBText2: TDBText;
    Label33: TLabel;
    SpeedButton9: TSpeedButton;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    DBGrid6: TDBGrid;
    DBGrid13: TDBGrid;
    Panel10: TPanel;
    Edit2: TEdit;
    Label7: TLabel;
    Button6: TButton;
    Button2: TButton;
    SpeedButton13: TSpeedButton;
    SpeedButton15: TSpeedButton;
    Button3: TButton;
    Button4: TButton;
    SpeedButton1: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton14: TSpeedButton;
    DBGrid11: TDBGrid;
    DBGrid4: TDBGrid;
    MonthCalendar1: TMonthCalendar;
    Bevel2: TBevel;
    Label8: TLabel;
    Bevel3: TBevel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label9: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Label10: TLabel;
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image7MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Label26Click(Sender: TObject);
    procedure Image7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image8MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image7MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image8MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image8MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image9MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image9MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel8MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image6MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image5MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton8Click(Sender: TObject);
    procedure Image10MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image11MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton10Click(Sender: TObject);
    procedure MonthCalendar2Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure Image12MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image10MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image11MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image12MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image12MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image11MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image10MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel23MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Panel20Click(Sender: TObject);
    procedure DBGrid6DblClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure Label13MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image13MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label13MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N12Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid4CellClick(Column: TColumn);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  v:integer;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10,
  Unit11;

{$R *.dfm}

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
// переключение через кнопку панелек - это 6 услуги
Panel15.Visible:=false;
Panel16.Visible:=false;
Panel5.Visible:=true;
Panel4.Visible:=false;
Panel3.Visible:=false;
v:=0;
DataModule8.ADOTable1.Filtered:=false;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
 // переключение через кнопку панелек - это 5 блок врачи
Panel15.Visible:=false;
Panel16.Visible:=false;
Panel5.Visible:=false;
Panel4.Visible:=true;
Panel3.Visible:=false;
v:=0;
DataModule8.ADOTable1.Filtered:=false;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
 // переключение через кнопку панелек - это 4 блок база пациентов
Panel15.Visible:=false;
Panel16.Visible:=false;
Panel5.Visible:=false;
Panel4.Visible:=false;
Panel3.Visible:=true;
DataModule10.ADOConnection1.Connected:= False;
DataModule10.ADOTable1.Active:= False;
DataModule10.ADOTable2.Active:= False;
DataModule10.ADOQuery1.Active:= False;
DataModule10.ADOQuery2.Active:= False;
DataModule10.ADOConnection1.Connected:= True;
DataModule10.ADOTable1.Active:= True;
DataModule10.ADOTable1.Filtered:=False;
DataModule10.ADOTable1.Filter:='k_status = ''Активный''';
DataModule10.ADOTable1.Filtered:=True;
DataModule10.ADOTable2.Active:= True;

{

DataModule8.ADOQuery1.Active:=false;
DataModule10.ADOQuery1.SQL.Clear;
DataModule10.ADOQuery1.SQL.Add('SELECT klient_fio, kdatarogdenia');
DataModule10.ADOQuery1.SQL.Add('FROM klient');
DataModule10.ADOQuery1.Active:=true;
DataModule10.ADOQuery1.Sort:='klient_fio ASC';



DataModule8.ADOQuery1.SQL.Clear;
DataModule8.ADOQuery1.SQL.Add('SELECT dokdata, doktime, onameyslygi, dlityslygi, keyyslygi, moshyslygi, num1, ki2, k1, dokname');
DataModule8.ADOQuery1.SQL.Add('FROM dokgraff, dokgraf');
DataModule8.ADOQuery1.SQL.Add('WHERE dokdata ='''+DateToStr(MonthCalendar2.Date)+'''');
DataModule8.ADOQuery1.SQL.Add('AND num1 = k1 ');
DataModule8.ADOQuery1.SQL.Add('AND dokname ='''+Form1.DBText1.Caption+'''');
DataModule8.ADOQuery1.SQL.Add('AND keyyslygi ='''+Form1.DBText2.Caption+'''');
DataModule8.ADOQuery1.Active:=true;
DataModule8.ADOQuery1.Sort:='ki2 ASC';}


DataModule8.ADOTable1.Filtered:=false;
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if v=0 then begin
   Image1.Picture.LoadFromFile('button1.jpg');
   v:=1;
   end;
end;

procedure TForm1.Label1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if v=0 then begin
   Image1.Picture.LoadFromFile('button1.jpg');
   v:=1;
   end;
end;

procedure TForm1.Panel6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if v=1 then begin
   Image1.Picture.LoadFromFile('button.jpg');
   Image2.Picture.LoadFromFile('button.jpg');
   Image3.Picture.LoadFromFile('button.jpg');
   v:=0;
   end;
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image1.Picture.LoadFromFile('button2.jpg');
   Label1.Left:=29;
end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image1.Picture.LoadFromFile('button1.jpg');
   Label1.Left:=28;
   v:=1;
   DataModule7.ADOTable1.Insert;
   Form2.Show;
   Form2.Edit3.Text:='';
   Form2.Close;
   Form2.ShowModal;
end;

procedure TForm1.Label1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image1.Picture.LoadFromFile('button2.jpg');
   Label1.Left:=29;
end;

procedure TForm1.Label1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image1.Picture.LoadFromFile('button1.jpg');
      Label1.Left:=28;
   v:=1;
      DataModule7.ADOTable1.Insert;
   Form2.ShowModal;
end;

procedure TForm1.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if v=0 then begin
   Image2.Picture.LoadFromFile('button1.jpg');
   v:=1;
   end;
end;

procedure TForm1.Image3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if v=0 then begin
   Image3.Picture.LoadFromFile('button1.jpg');
   v:=1;
   end;
end;

procedure TForm1.Image2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image2.Picture.LoadFromFile('button2.jpg');
   Label2.Left:=25;
end;

procedure TForm1.Image2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image2.Picture.LoadFromFile('button1.jpg');
   Label2.Left:=24;
   v:=1;
   Form2.Show;
   Form2.Close;
   Form2.Edit1.Text:=Form2.DBEdit3.Text;
   Form2.Edit2.Text:=Form2.DBEdit1.Text;
   Form2.Edit3.Text:=Form2.DBEdit2.Text;
   Form2.Edit4.Text:=Form2.DBEdit4.Text;
   DataModule7.ADOTable1.Edit;
   Form2.ShowModal;
end;

procedure TForm1.Image3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image3.Picture.LoadFromFile('button2.jpg');
   Label3.Left:=31;
end;

procedure TForm1.Image3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image3.Picture.LoadFromFile('button1.jpg');
   Label3.Left:=30;
   v:=1;
   if Application.MessageBox(PChar('Вы действительно хотите удалить запись?'),'Внимание', MB_OKCANCEL)=id_OK then
   DataModule7.ADOTable1.Delete;
end;

procedure TForm1.Image4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image4.Picture.LoadFromFile('button1.jpg');
   Label4.Left:=40;
   v:=1;
   DataModule7.ADOTable3.Insert;
   Form4.Show;
   Form4.Edit1.Text:='';
   Form4.Edit2.Text:='';
   Form4.Edit3.Text:='';
   Form4.CheckBox1.Checked:=true;
   Form4.CheckBox2.Checked:=true;
   Form4.CheckBox3.Checked:=true;
   Form4.CheckBox4.Checked:=true;
   Form4.CheckBox5.Checked:=true;
   Form4.CheckBox6.Checked:=false;
   Form4.CheckBox7.Checked:=false;
   Form4.GroupBox2.Visible:=false;
   Form4.GroupBox3.Visible:=true;
   Form4.Close;
   Form4.ShowModal;
end;

procedure TForm1.Image7MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   //Image7.Picture.LoadFromFile('button1.jpg');
   //Label9.Left:=32;
   v:=1;
   Form5.Show;
   DataModule7.ADOTable2.Insert;
   Form5.Edit1.Text:='';
   Form5.Close;
   Form5.ShowModal;

end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
if DataModule10.ADOTable2.RecordCount <> 0 then begin // проверка есть ли что отмечать
  if Application.MessageBox(PChar('Вы действительно хотите отметить запись как Выполнено?'),'Внимание', MB_OKCANCEL)=id_OK then begin
    DataModule10.ADOTable2.Edit;
    DataModule10.ADOTable2.FieldValues['stat_uslugi']:='Выполнено';
    DataModule10.ADOTable2.Post;
  end;
end else Application.MessageBox(PChar('Нет записей, которые можно было бы отметить.'),'Внимание', MB_OK);
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
// переключение через кнопку панелек - это 2 блок график
Panel15.Visible:=true;
Panel16.Visible:=false;
Panel5.Visible:=false;
Panel4.Visible:=false;
Panel3.Visible:=false;

DataModule8.ADOConnection1.Connected:=True;
DataModule8.ADOTable1.Active:=True;
DataModule8.ADOTable1.Fields.Fields[5].Visible:=False;
DataModule8.ADOTable1.Fields.Fields[6].Visible:=False;
DataModule8.ADOTable1.Filtered:=false; //надо ли?
Form1.BitBtn1.Click;
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
// переключение через кнопку панелек - это 7 блок мастерская
Panel15.Visible:=false;
Panel16.Visible:=true;
Panel5.Visible:=false;
Panel4.Visible:=false;
Panel3.Visible:=false;
v:=0;
DataModule8.ADOTable1.Fields.Fields[5].Visible:=True;
DataModule8.ADOTable1.Fields.Fields[6].Visible:=True;

DataModule8.ADOTable1.Filtered:=false;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
MonthCalendar1.Date:=now;
MonthCalendar2.Date:=now;
DataModule7.ADOTable5.Sort:='specialnost ASC';
Timer1.Enabled:=false;
end;

procedure TForm1.Label26Click(Sender: TObject);
begin
Form6.ShowModal;
end;

procedure TForm1.Image7MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if v=0 then begin
   //Image7.Picture.LoadFromFile('button1.jpg');
   v:=1;
   end;
end;

procedure TForm1.Image8MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if v=0 then begin
   //Image8.Picture.LoadFromFile('button1.jpg');
   v:=1;
   end;
end;

procedure TForm1.Image9MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if v=0 then begin
   //Image9.Picture.LoadFromFile('button1.jpg');
   v:=1;
   end;
end;

procedure TForm1.Image7MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   //Image7.Picture.LoadFromFile('button2.jpg');
   //Label9.Left:=31;
end;

procedure TForm1.Image8MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   //Image8.Picture.LoadFromFile('button2.jpg');
   //Label10.Left:=31;
end;

procedure TForm1.Image8MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   //Image8.Picture.LoadFromFile('button1.jpg');
   //Label10.Left:=32;
   v:=1;
   Form5.Show;
   Form5.Close;
   DataModule7.ADOTable2.Edit;
   Form5.ShowModal;
end;

procedure TForm1.Image9MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   //Image9.Picture.LoadFromFile('button1.jpg');
   //Label11.Left:=32;
   v:=1;
   if Application.MessageBox(PChar('Вы действительно хотите удалить запись?'),'Внимание', MB_OKCANCEL)=id_OK then
   DataModule7.ADOTable2.Delete;
end;

procedure TForm1.Image9MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   //Image9.Picture.LoadFromFile('button2.jpg');
   //Label11.Left:=31;
end;

procedure TForm1.Panel8MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if v=1 then begin
   Image4.Picture.LoadFromFile('button.jpg');
   Image5.Picture.LoadFromFile('button.jpg');
   Image6.Picture.LoadFromFile('button.jpg');
   v:=0;
   end;
end;

procedure TForm1.Image4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if v=0 then begin
   Image4.Picture.LoadFromFile('button1.jpg');
   v:=1;
   end;
end;

procedure TForm1.Image5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if v=0 then begin
   Image5.Picture.LoadFromFile('button1.jpg');
   v:=1;
   end;
end;

procedure TForm1.Image6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if v=0 then begin
   Image6.Picture.LoadFromFile('button1.jpg');
   v:=1;
   end;
end;

procedure TForm1.Image6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image6.Picture.LoadFromFile('button2.jpg');
   Label6.Left:=31;
end;

procedure TForm1.Image5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image5.Picture.LoadFromFile('button2.jpg');
   Label5.Left:=31;
end;

procedure TForm1.Image4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image4.Picture.LoadFromFile('button2.jpg');
   Label4.Left:=39;
end;

procedure TForm1.Image6MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image6.Picture.LoadFromFile('button1.jpg');
   Label6.Left:=32;
   v:=1;
   if Application.MessageBox(PChar('Вы действительно хотите удалить запись?'),'Внимание', MB_OKCANCEL)=id_OK then
   DataModule7.ADOTable3.Delete;
end;

procedure TForm1.Image5MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image5.Picture.LoadFromFile('button1.jpg');
   Label5.Left:=32;
   v:=1;
   Form4.Show;
   Form4.Close;
   Form4.Edit1.Text:=Form4.DBEdit1.Text;
   Form4.Edit2.Text:=Form4.DBEdit2.Text;
   Form4.Edit3.Text:=Form4.DBEdit3.Text;
      if Form4.DBEdit6.Text='Да' then
   Form4.CheckBox1.Checked:=true else
   Form4.CheckBox1.Checked:=false;
      if Form4.DBEdit7.Text='Да' then
   Form4.CheckBox2.Checked:=true else
   Form4.CheckBox2.Checked:=false;
      if Form4.DBEdit8.Text='Да' then
   Form4.CheckBox3.Checked:=true else
   Form4.CheckBox3.Checked:=false;
      if Form4.DBEdit9.Text='Да' then
   Form4.CheckBox4.Checked:=true else
   Form4.CheckBox4.Checked:=false;
      if Form4.DBEdit10.Text='Да' then
   Form4.CheckBox5.Checked:=true else
   Form4.CheckBox5.Checked:=false;
      if Form4.DBEdit11.Text='Да' then
   Form4.CheckBox6.Checked:=true else
   Form4.CheckBox6.Checked:=false;
      if Form4.DBEdit12.Text='Да' then
   Form4.CheckBox7.Checked:=true else
   Form4.CheckBox7.Checked:=false;
    Form4.GroupBox2.Visible:=true;
    Form4.GroupBox3.Visible:=false;
   DataModule7.ADOTable3.Edit;
   Form4.ShowModal;
end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
begin
DataModule8.ADOQuery1.Active:=false;
DataModule8.ADOQuery1.SQL.Clear;
DataModule8.ADOQuery1.SQL.Add('SELECT dokdata, doktime, onameyslygi, dlityslygi, keyyslygi, moshyslygi, num1, ki2, k1, dokname');
DataModule8.ADOQuery1.SQL.Add('FROM dokgraff, dokgraf');
DataModule8.ADOQuery1.SQL.Add('WHERE dokdata ='''+DateToStr(MonthCalendar2.Date)+'''');
DataModule8.ADOQuery1.SQL.Add('AND num1 = k1 ');
DataModule8.ADOQuery1.SQL.Add('AND dokname ='''+Form1.DBText1.Caption+'''');
DataModule8.ADOQuery1.SQL.Add('AND keyyslygi ='''+Form1.DBText2.Caption+'''');
DataModule8.ADOQuery1.Active:=true;
DataModule8.ADOQuery1.Sort:='ki2 ASC';
Label33.Caption:=DateToStr(MonthCalendar2.Date);
end;

procedure TForm1.Image10MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 Form9.Show;
 DataModule7.ADOQuery2.Active:=false;
 Form9.Edit1.Text:='';
 Form9.Edit2.Text:='';
 Form9.Edit3.Text:='';
 Form9.DateTimePicker1.Date:=now;
 Form9.DateTimePicker2.Date:=now;
 Form9.Close;
 DataModule8.ADOTable1.Insert;
 Form9.Label13.Caption:='не определен!'; 
 Form9.ShowModal;
end;

procedure TForm1.Image11MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

 DataModule8.ADOTable1.Edit;
Form9.Show;
 Form9.Edit1.Text:=Form9.DBEdit1.Text;
 Form9.Edit2.Text:=Form9.DBEdit2.Text;
 Form9.Edit3.Text:=Form9.DBEdit3.Text;

 Form9.DateTimePicker1.Date:=StrToDate(DataModule8.ADOTable1.FieldValues['dokdataggafs']);
 Form9.DateTimePicker2.Date:=StrToDate(DataModule8.ADOTable1.FieldValues['dokdatagrafpo']);

 DataModule7.ADOQuery2.Active:=false;
 DataModule7.ADOQuery2.SQL.Clear;
 DataModule7.ADOQuery2.SQL.Add('SELECT *');
 DataModule7.ADOQuery2.SQL.Add('FROM dok');
 DataModule7.ADOQuery2.SQL.Add('WHERE prof = '''+Form9.Edit1.Text+'''');
 DataModule7.ADOQuery2.SQL.Add('AND fiodok = '''+Form9.Edit2.Text+'''');
 DataModule7.ADOQuery2.Active:=true;

if DataModule7.ADOTable3.Locate('prof;fiodok;kabinet', VarArrayOf([Form9.Edit1.Text, Form9.Edit2.Text, Form9.Edit3.Text]), [])=true then
Form9.Label13.Caption:='определен.' else Form9.Label13.Caption:='не определен!'; 

 Form9.Close;

 Form9.ShowModal;


end;

procedure TForm1.SpeedButton10Click(Sender: TObject);
begin
if DBGrid9.Visible=true then begin
GroupBox1.Enabled:=true;
DBGrid9.Visible:=false;
SpeedButton10.Caption:='Посмотреть график';
SpeedButton9.Visible:=false;
SpeedButton11.Visible:=false;
end else begin
GroupBox1.Enabled:=false;
SpeedButton10.Caption:='Закрыть график';
SpeedButton8.Click;
DBGrid9.Visible:=true;
SpeedButton9.Visible:=true;
SpeedButton11.Visible:=true;
end;

end;

procedure TForm1.MonthCalendar2Click(Sender: TObject);
begin
SpeedButton8.Click;
end;

procedure TForm1.SpeedButton9Click(Sender: TObject);
begin
DataModule8.ADOTable2.Locate('ki2', DataModule8.ADOQuery1.FieldValues['ki2'], []);
DataModule8.ADOTable2.Delete;
SpeedButton8.Click;
end;

procedure TForm1.SpeedButton11Click(Sender: TObject);
begin

DataModule8.ADOTable2.Locate('ki2', DataModule8.ADOQuery1.FieldValues['ki2'], []);
While DataModule8.ADOTable2.FieldValues['dokdata']=Label33.Caption do
DataModule8.ADOTable2.Delete;
SpeedButton8.Click;
end;

procedure TForm1.Image12MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   if Application.MessageBox(PChar('Вы действительно хотите удалить запись?'),'Внимание', MB_OKCANCEL)=id_OK then
   DataModule8.ADOTable1.Delete;
end;

procedure TForm1.Image10MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image10.Picture.LoadFromFile('button2.jpg');
   Label34.Left:=39;
end;

procedure TForm1.Image11MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image11.Picture.LoadFromFile('button2.jpg');
   Label35.Left:=47;
end;

procedure TForm1.Image12MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image12.Picture.LoadFromFile('button2.jpg');
   Label36.Left:=15;
end;

procedure TForm1.Image12MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if v=0 then begin
   Image12.Picture.LoadFromFile('button1.jpg');
   v:=1;
   end;
end;

procedure TForm1.Image11MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if v=0 then begin
   Image11.Picture.LoadFromFile('button1.jpg');
   v:=1;
   end;
end;

procedure TForm1.Image10MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if v=0 then begin
   Image10.Picture.LoadFromFile('button1.jpg');
   v:=1;
   end;
end;

procedure TForm1.Panel23MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if v=1 then begin
   Image10.Picture.LoadFromFile('button.jpg');
   Image11.Picture.LoadFromFile('button.jpg');
   Image12.Picture.LoadFromFile('button.jpg');
   v:=0;
   end;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
Button6.Click;
end;



procedure TForm1.Panel20Click(Sender: TObject);
begin
DataModule8.ADOTable1.Filtered:=false;
end;

procedure TForm1.DBGrid6DblClick(Sender: TObject);
begin
if DataModule8.ADOQuery1.FieldValues['doktime']<>null then begin
DataModule8.ADOQuery2.Active:=false;
DataModule8.ADOQuery2.SQL.Clear;
DataModule8.ADOQuery2.SQL.Add('SELECT dokkab, dokprof, dokdata, doktime, onameyslygi, dlityslygi, keyyslygi, moshyslygi, num1, ki2, k1, dokname');
DataModule8.ADOQuery2.SQL.Add('FROM dokgraff, dokgraf');
DataModule8.ADOQuery2.SQL.Add('WHERE dokdata ='''+DateToStr(MonthCalendar1.Date)+'''');
DataModule8.ADOQuery2.SQL.Add('AND num1 = k1 ');
DataModule8.ADOQuery2.SQL.Add('AND onameyslygi ='''+DataModule8.ADOQuery1.FieldValues['onameyslygi']+'''');
DataModule8.ADOQuery2.SQL.Add('AND dokprof ='''+DataModule8.ADOTable1.FieldValues['dokprof']+''' ');
DataModule8.ADOQuery2.SQL.Add('AND doktime ='''+DataModule8.ADOQuery1.FieldValues['doktime']+'''');
DataModule8.ADOQuery2.SQL.Add('AND dokname ='''+DataModule8.ADOTable1.FieldValues['dokname']+'''');
DataModule8.ADOQuery2.SQL.Add('AND dokkab ='''+DataModule8.ADOTable1.FieldValues['dokkab']+'''');
DataModule8.ADOQuery2.SQL.Add('AND moshyslygi <>0');
DataModule8.ADOQuery2.Active:=true;
end;

end;

procedure TForm1.N3Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.SpeedButton13Click(Sender: TObject);
var
XLApp,Sheet,Colum:Variant;
index,i:integer;
begin
XLApp:=CreateOleObject('Excel.Application');
XLApp.Visible:=true;
XLApp.WorkBooks.Add(-4167);
XLApp.WorkBooks[1].WorkSheets[1].Name:='Лист назначений';
Colum:=XLApp.Workbooks[1].WorkSheets['Лист назначений'].Columns;
Colum.Columns[1].ColumnWidth:=12;
Colum.Columns[2].ColumnWidth:=8;
Colum.Columns[3].ColumnWidth:=40;
Colum.Columns[4].ColumnWidth:=20;
Colum.Columns[5].ColumnWidth:=20;
Colum.Columns[6].ColumnWidth:=6;

Colum:=XLApp.Workbooks[1].WorkSheets['Лист назначений'].Rows;
Colum.Rows[2].Font.Bold:=true;
Colum.Rows[1].Font.Bold:=true;
Colum.Rows[1].Font.Color:=clBlue;
Colum.Rows[1].Font.Size:=14;

Sheet:=XLApp.Workbooks[1].WorkSheets['Лист назначений'];
Sheet.Cells[1,1]:=DataModule10.ADOTable1.FieldValues['klient_fio'];

Sheet.Cells[2,1]:='Дата';
Sheet.Cells[2,2]:='Время';
Sheet.Cells[2,3]:='Услуга';
Sheet.Cells[2,4]:='ФИО врача';
Sheet.Cells[2,5]:='Специальность';
Sheet.Cells[2,6]:='Кабинет';

index:=3;
DataModule10.ADOTable2.First;
for i:=0 to DataModule10.ADOTable2.RecordCount-1 do
begin
Sheet.Cells[index,1]:=DataModule10.ADOTable2.FieldValues['klientdata'];
Sheet.Cells[index,2]:=DataModule10.ADOTable2.FieldValues['ktime'];
Sheet.Cells[index,3]:=DataModule10.ADOTable2.FieldValues['knaimeyslygi'];
Sheet.Cells[index,4]:=DataModule10.ADOTable2.FieldValues['kdokname'];
Sheet.Cells[index,5]:=DataModule10.ADOTable2.FieldValues['kdokprofil'];
Sheet.Cells[index,6]:=DataModule10.ADOTable2.FieldValues['kdokkab'];
Inc(index);
DataModule10.ADOTable2.Next;
end;

end;

procedure TForm1.Label13MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   //Image13.Picture.LoadFromFile('button2.jpg');
end;

procedure TForm1.Image13MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if v=0 then begin
   //Image13.Picture.LoadFromFile('button1.jpg');
   v:=1;
   end;
end;

procedure TForm1.Label13MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   //Image13.Picture.LoadFromFile('button1.jpg');
   v:=1;
   Form6.Show;
Form6.Label6.Caption:='2';
Form6.Label1.Caption:=DataModule7.ADOTable2.FieldValues['pacfam'];
Form6.Label2.Caption:=DataModule7.ADOTable2.FieldValues['pacname'];
Form6.Label3.Caption:=DataModule7.ADOTable2.FieldValues['pacothes'];
//Form6.Label4.Caption:=DataModule7.ADOTable2.FieldValues['pacdatarojd'];
Form6.DBGrid3.Visible:=false;
Form6.Close;
Form6.ShowModal;
end;

procedure TForm1.N12Click(Sender: TObject);
begin
WinExec('hh.exe help.chm', SW_RESTORE);
end;

procedure TForm1.Button6Click(Sender: TObject);
var
s: string;
begin
// Осуществяем поиск пациентов по фамилии в разделе "пациенты"

s:= 'klient_fio LIKE ''' + '%' + Trim(Edit2.Text)+'%'+'''';
s:=s+' AND k_status = ''Активный''';
if Edit2.Text<>'' then
  begin
    DataModule10.ADOTable1.Filtered:=False;
    DataModule10.ADOTable1.Filter:=s;
    // 'klient_fio LIKE ''' + '%' + Trim(Edit2.Text)+'%'+'''';
    DataModule10.ADOTable1.Filtered:=True;
  end else begin
    DataModule10.ADOTable1.Filtered:=False;
    DataModule10.ADOTable1.Filter:='k_status = ''Активный''';
    DataModule10.ADOTable1.Filtered:=True;
    end;
  SpeedButton1.Click;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Form6.ShowModal;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.SpeedButton2.Click;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
Form11.ShowModal;
Form1.SpeedButton2.Click;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Form5.Show;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
s: string;
begin
s:=DataModule10.ADOTable1.FieldValues['klient_fio'];
if Application.MessageBox(PChar('Вы действительно хотите удалить запись '+s+'?'),'Внимание', MB_OKCANCEL)=id_OK then begin
  DataModule10.ADOQuery1.Active:=false;
  DataModule10.ADOQuery1.SQL.Clear;
  DataModule10.ADOQuery1.SQL.Add('UPDATE klient');
  DataModule10.ADOQuery1.SQL.Add('SET k_status = ''Удален''');
  DataModule10.ADOQuery1.SQL.Add('WHERE klient_fio = '+QuotedStr(s));
  DataModule10.ADOQuery1.ExecSQL;
  Form1.SpeedButton2.Click;  // обновляем данные в таблице после всенессных изменений
  end;
end;

procedure TForm1.SpeedButton15Click(Sender: TObject);
begin
if DataModule10.ADOTable2.RecordCount <> 0 then begin // проверка есть ли что удалять
  if Application.MessageBox(PChar('Вы действительно хотите удалить запись?'),'Внимание', MB_OKCANCEL)=id_OK then begin
    // находим запить врача и восстанавливаем там время
    DataModule8.ADOQuery1.Active:=false;
    DataModule8.ADOQuery1.SQL.Clear;
    DataModule8.ADOQuery1.SQL.Add('SELECT ki2, dokdata, doktime, keyyslygi, onameyslygi, dlityslygi, moshyslygi, num1, k1, dokname');
    DataModule8.ADOQuery1.SQL.Add('FROM dokgraf, dokgraff');
    DataModule8.ADOQuery1.SQL.Add('WHERE dokdata ='''+DataModule10.ADOTable2.FieldValues['klientdata']+'''');
    DataModule8.ADOQuery1.SQL.Add('AND doktime ='''+TimeToStr(DataModule10.ADOTable2.FieldValues['ktime'])+'''');
    DataModule8.ADOQuery1.SQL.Add('AND onameyslygi ='''+DataModule10.ADOTable2.FieldValues['knaimeyslygi']+'''');
    DataModule8.ADOQuery1.SQL.Add('AND num1 = k1');
    DataModule8.ADOQuery1.SQL.Add('AND dokname ='''+DataModule10.ADOTable2.FieldValues['kdokname']+'''');
    DataModule8.ADOQuery1.Active:=true;
    DataModule8.ADOQuery1.Edit;
    DataModule8.ADOQuery1.FieldValues['moshyslygi']:=DataModule8.ADOQuery1.FieldValues['moshyslygi']+1;
    DataModule8.ADOQuery1.Post;
    // удаляем запись
    DataModule10.ADOTable2.Delete;
  end;
  end else Application.MessageBox(PChar('Нет записей, которые можно было бы удалить.'),'Внимание', MB_OK);
end;

procedure TForm1.DBGrid3CellClick(Column: TColumn);
begin
// обновляем и сортруем записи времени, чтобы они были в удобной последовательности
SpeedButton1.Click;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
// обновляем и сортруем записи времени, чтобы они были в удобной последовательности
DataModule10.ADOTable2.Active:=False;
DataModule10.ADOTable2.Active:=True;
DataModule10.ADOTable2.Sort:='klientdata ASC, ktime ASC';
end;

procedure TForm1.SpeedButton12Click(Sender: TObject);
begin
if DataModule10.ADOTable2.RecordCount <> 0 then begin // проверка есть ли что отмечать
  if Application.MessageBox(PChar('Вы действительно хотите отметить запись как Не пришел?'),'Внимание', MB_OKCANCEL)=id_OK then begin
    DataModule10.ADOTable2.Edit;
    DataModule10.ADOTable2.FieldValues['stat_uslugi']:='Не пришел';
    DataModule10.ADOTable2.Post;
  end;
end else Application.MessageBox(PChar('Нет записей, которые можно было бы отметить.'),'Внимание', MB_OK);

end;

procedure TForm1.SpeedButton14Click(Sender: TObject);
begin
if DataModule10.ADOTable2.RecordCount <> 0 then begin // проверка есть ли что отмечать
    DataModule10.ADOTable2.Edit;
    DataModule10.ADOTable2.FieldValues['stat_uslugi']:='Записан';
    DataModule10.ADOTable2.Post;
end else Application.MessageBox(PChar('Нет записей, которые можно было бы отметить.'),'Внимание', MB_OK);

end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
DataModule8.ADOQuery1.Active:=false;
DataModule8.ADOQuery1.SQL.Clear;
DataModule8.ADOQuery1.SQL.Add('SELECT dokdata, doktime, onameyslygi, dlityslygi, keyyslygi, moshyslygi, num1, ki2, k1, dokname');
DataModule8.ADOQuery1.SQL.Add('FROM dokgraff, dokgraf');
DataModule8.ADOQuery1.SQL.Add('WHERE dokdata ='''+DateToStr(MonthCalendar1.Date)+'''');
DataModule8.ADOQuery1.SQL.Add('AND num1 = k1 ');
DataModule8.ADOQuery1.SQL.Add('AND dokname ='''+DataModule8.ADOTable1.FieldValues['dokname']+'''');
//DataModule8.ADOQuery1.SQL.Add('AND moshyslygi > 0 ');
DataModule8.ADOQuery1.Active:=true;
DataModule8.ADOQuery1.Sort:='ki2 ASC';

DataModule10.ADOQuery2.Active:=false;
DataModule10.ADOQuery2.SQL.Clear;
DataModule10.ADOQuery2.SQL.Add('SELECT *');
DataModule10.ADOQuery2.SQL.Add('FROM klient, klientt');
DataModule10.ADOQuery2.SQL.Add('WHERE key_klient = klientnumer ');
DataModule10.ADOQuery2.SQL.Add('AND klientdata ='''+DateToStr(Form1.MonthCalendar1.Date)+'''');
DataModule10.ADOQuery2.SQL.Add('AND kdokprofil ='''+DataModule8.ADOTable1.FieldValues['dokprof']+'''');
DataModule10.ADOQuery2.SQL.Add('AND kdokkab ='''+DataModule8.ADOTable1.FieldValues['dokkab']+'''');
DataModule10.ADOQuery2.SQL.Add('AND kdokname ='''+DataModule8.ADOTable1.FieldValues['dokname']+'''');
DataModule10.ADOQuery2.Active:=true;
// сортировка по времени не работает т.к. время это просто строка
DataModule10.ADOQuery2.Sort:='ktime ASC';

end;

procedure TForm1.DBGrid4CellClick(Column: TColumn);
begin
Form1.BitBtn1.Click;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
if DataModule10.ADOQuery2.RecordCount <> 0 then begin // проверка есть ли что отмечать
  if Application.MessageBox(PChar('Вы действительно хотите отметить запись как Не пришел?'),'Внимание', MB_OKCANCEL)=id_OK then begin
    DataModule10.ADOQuery2.Edit;
    DataModule10.ADOQuery2.FieldValues['stat_uslugi']:='Не пришел';
    DataModule10.ADOQuery2.Post;
  end;
end else Application.MessageBox(PChar('Нет записей, которые можно было бы отметить.'),'Внимание', MB_OK);

end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
if DataModule10.ADOQuery2.RecordCount <> 0 then begin // проверка есть ли что отмечать
  if Application.MessageBox(PChar('Вы действительно хотите отметить запись как Выполнено?'),'Внимание', MB_OKCANCEL)=id_OK then begin
    DataModule10.ADOQuery2.Edit;
    DataModule10.ADOQuery2.FieldValues['stat_uslugi']:='Выполнено';
    DataModule10.ADOQuery2.Post;
  end;
end else Application.MessageBox(PChar('Нет записей, которые можно было бы отметить.'),'Внимание', MB_OK);

end;

procedure TForm1.Button1Click(Sender: TObject);
var
s:string;
begin
s:= 'dokname LIKE ''' + '%' + Trim(Edit1.Text)+'%'+'''';
if Edit1.Text<>'' then
  begin
    DataModule8.ADOTable1.Filtered:=False;
    DataModule8.ADOTable1.Filter:=s;
    DataModule8.ADOTable1.Filtered:=True;
  end else
    DataModule8.ADOTable1.Filtered:=False;
if DataModule8.ADOTable1.RecordCount<>0 then Form1.BitBtn1.Click;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
Button1.Click;
end;

end.
