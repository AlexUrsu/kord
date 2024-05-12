unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, Grids, StdCtrls, ComCtrls, DBCtrls, DateUtils, DBGrids;

type
  TForm6 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    TabControl1: TTabControl;
    Panel4: TPanel;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    MonthCalendar1: TMonthCalendar;
    Panel6: TPanel;
    Bevel1: TBevel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton1: TSpeedButton;
    GroupBox4: TGroupBox;
    RadioGroup1: TRadioGroup;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Panel7: TPanel;
    GroupBox5: TGroupBox;
    Edit1: TEdit;
    UpDown1: TUpDown;
    GroupBox6: TGroupBox;
    Edit2: TEdit;
    UpDown2: TUpDown;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel2: TBevel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Label5: TLabel;
    Edit3: TEdit;
    CheckBox1: TCheckBox;
    SpeedButton6: TSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Label8: TLabel;
    Label9: TLabel;
    GroupBox3: TGroupBox;
    DBLookupListBox1: TDBLookupListBox;
    DBLookupListBox2: TDBLookupListBox;
    GroupBox1: TGroupBox;
    DBGrid3: TDBGrid;
    BitBtn1: TBitBtn;
    GroupBox7: TGroupBox;
    DBLookupListBox3: TDBLookupListBox;
    DBLookupListBox4: TDBLookupListBox;
    SpeedButton9: TSpeedButton;
    procedure DBLookupListBox1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure MonthCalendar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBLookupListBox2Click(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupListBox4Click(Sender: TObject);
    procedure DBLookupListBox3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit10, Unit11, Unit7, Unit8,
  Unit9;

{$R *.dfm}

procedure TForm6.DBLookupListBox1Click(Sender: TObject);
begin
// ����� ������ ������ ����������� � �������� ���� ����� ������ �����
DataModule7.ADOQuery1.Active:=false;
DataModule7.ADOQuery1.SQL.Clear;
DataModule7.ADOQuery1.SQL.Add('SELECT *');
DataModule7.ADOQuery1.SQL.Add('FROM ysl');
DataModule7.ADOQuery1.SQL.Add('WHERE chastnameysl = '''+DBLookupListBox1.SelectedItem+'''');
DataModule7.ADOQuery1.Active:=true;
DataModule7.ADOQuery1.Sort:='obchnameysl ASC';
DBLookupListBox2.Visible:=true;
DBGrid3.Visible:=false;
Form6.BitBtn1.Visible:=false;

DBLookupListBox1.Visible:=True;
// ��� ������ ����?
Panel7.Caption:=DBLookupListBox1.SelectedItem;
Label7.Caption:='';
end;

procedure TForm6.RadioButton1Click(Sender: TObject);
begin
// �� �������
DBLookupListBox2.Visible:=false;
SpeedButton1.Visible:=false;
SpeedButton2.Visible:=false;
SpeedButton3.Visible:=false;
end;

procedure TForm6.MonthCalendar1Click(Sender: TObject);
begin
// �� ��������� ���� ��������� ����� � �����������
if DBGrid3.Visible=true then begin
DataModule8.ADOQuery2.Active:=false;
DataModule8.ADOQuery2.SQL.Clear;
DataModule8.ADOQuery2.SQL.Add('SELECT dokkab, dokprof, dokdata, doktime, onameyslygi, dlityslygi, keyyslygi, moshyslygi, num1, ki2, k1, dokname');
DataModule8.ADOQuery2.SQL.Add('FROM dokgraff, dokgraf');
DataModule8.ADOQuery2.SQL.Add('WHERE dokdata ='''+DateToStr(MonthCalendar1.Date)+'''');
DataModule8.ADOQuery2.SQL.Add('AND num1 = k1 ');
DataModule8.ADOQuery2.SQL.Add('AND dokprof ='''+DBLookupListBox1.SelectedItem+''' ');
DataModule8.ADOQuery2.SQL.Add('AND onameyslygi ='''+DBLookupListBox2.SelectedItem+'''');
DataModule8.ADOQuery2.SQL.Add('AND moshyslygi <>0');
DataModule8.ADOQuery2.Active:=true;
DataModule8.ADOQuery2.Sort:='ki2 ASC';
DBGrid3.Visible:=true;
end;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
// ��� �������� ����� ��������� ��� �� ������ ��� �����������
MonthCalendar1.Date:=now;
Label1.Caption:=DataModule10.ADOTable1.FieldValues['key_klient'];
Label2.Caption:=DataModule10.ADOTable1.FieldValues['klient_fio'];
Label3.Caption:=DataModule10.ADOTable1.FieldValues['kdatarogdenia'];
end;

procedure TForm6.DBLookupListBox2Click(Sender: TObject);
begin
DataModule8.ADOQuery2.Active:=false;
DataModule8.ADOQuery2.SQL.Clear;
DataModule8.ADOQuery2.SQL.Add('SELECT dokkab, dokprof, dokdata, doktime, onameyslygi, dlityslygi, keyyslygi, moshyslygi, num1, ki2, k1, dokname');
DataModule8.ADOQuery2.SQL.Add('FROM dokgraff, dokgraf');
DataModule8.ADOQuery2.SQL.Add('WHERE dokdata ='''+DateToStr(MonthCalendar1.Date)+'''');
DataModule8.ADOQuery2.SQL.Add('AND num1 = k1 ');
DataModule8.ADOQuery2.SQL.Add('AND dokprof ='''+DBLookupListBox1.SelectedItem+''' ');
DataModule8.ADOQuery2.SQL.Add('AND onameyslygi ='''+DBLookupListBox2.SelectedItem+'''');
DataModule8.ADOQuery2.SQL.Add('AND moshyslygi <>0');
DataModule8.ADOQuery2.Active:=true;
DataModule8.ADOQuery2.Sort:='ki2 ASC';
DBGrid3.Visible:=true;
Form6.BitBtn1.Visible:=True;

// ���� �� ���?
Label7.Caption:='OK';
Panel7.Caption:=DBLookupListBox2.SelectedItem+' ('+DBLookupListBox1.SelectedItem+')';
end;

procedure TForm6.TabControl1Change(Sender: TObject);
begin
// ������������ � ����� �������� ������
if TabControl1.TabIndex=0 then begin
Panel1.Visible:=true;
GroupBox3.Visible:=true;
Panel4.Visible:=false;
end else begin
Panel1.Visible:=false;
GroupBox3.Visible:=false;
Panel4.Visible:=true;
end;

end;

procedure TForm6.SpeedButton2Click(Sender: TObject);
begin
// ����� ��������������
if SpeedButton2.Caption='�������������' then begin
if Form6.DBLookupComboBox1.Text<>'' then begin
Panel6.Visible:=true;
GroupBox3.Visible:=true;
GroupBox1.Visible:=true;
SpeedButton2.Caption:='������� ��������';
SpeedButton3.Visible:=true;    // �������
SpeedButton6.Visible:=true;    // ������
GroupBox7.Visible:=True; // ����� ������
DBGrid1.Left:=424;
DBGrid1.Width:=321;
end else Application.MessageBox(PChar('��� �������������� �������� �� ������ ���� ����������'),'��������', MB_OK);
end else begin
SpeedButton2.Caption:='�������������';
Panel6.Visible:=false;
GroupBox3.Visible:=false;
SpeedButton3.Visible:=false;    // �������
SpeedButton6.Visible:=false;   // ������
GroupBox7.Visible:=False; 
DBGrid1.Left:=224;
DBGrid1.Width:=521;
end;

end;

procedure TForm6.SpeedButton4Click(Sender: TObject);
begin
// ��������� ������ ���� � ������ ����������
if Edit3.Text<>'' then begin
  if DataModule7.ADOTable7.Locate('bname', Edit3.Text, [])=false then begin
    DataModule7.ADOTable7.Insert;
    DataModule7.ADOTable7.FieldValues['bname']:=Edit3.Text;
    DataModule7.ADOTable7.Post;
  end
  else
  Application.MessageBox(PChar('����� �������� ��� ����������'),'', MB_OK);
end
else Application.MessageBox(PChar('������� ����� �������� ����� ����������'),'', MB_OK);
Edit3.Text:='';
end;

procedure TForm6.SpeedButton5Click(Sender: TObject);
begin
// �������� ����� ����������
if Form6.DBLookupComboBox1.Text<>'' then begin
if Application.MessageBox(PChar('�� ������������� ������ ������� ���� ����������: '+DBLookupComboBox1.Text),'', MB_YESNO)=idYes then
DataModule7.ADOTable7.Delete;
end else
Application.MessageBox(PChar('��� �������� �������� �� ������ ���� ����������'),'', MB_OK);
end;

procedure TForm6.CheckBox1Click(Sender: TObject);
begin
// ������ ����� �� �������� � ������ � ����� ����� ����� ������ ����� �������� ������ �����
if CheckBox1.Checked=true then begin
Edit3.Visible:=true;
SpeedButton4.Visible:=true;
end
else begin
Edit3.Visible:=false;
SpeedButton4.Visible:=false;
end;

end;

procedure TForm6.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
// ��� ������� �� ���� ���������� ��������� � ������4
if Key=#13 then
SpeedButton4.Click;
end;

procedure TForm6.SpeedButton6Click(Sender: TObject);
begin
// ������ ������ � ���� ����������
if Label7.Caption='OK' then begin
DataModule7.ADOTable8.Insert;
DataModule7.ADOTable8.FieldValues['bspecialnost']:=Form6.DBLookupListBox3.SelectedItem;
DataModule7.ADOTable8.FieldValues['bnameyslugi']:=Form6.DBLookupListBox4.SelectedItem;
DataModule7.ADOTable8.FieldValues['bdlituslugi']:=DataModule7.ADOQuery1.FieldValues['dlitysl'];
if RadioButton2.Checked=true then
DataModule7.ADOTable8.FieldValues['bkratnost']:='���������';
if RadioButton3.Checked=true then
DataModule7.ADOTable8.FieldValues['bkratnost']:='����� ����';
DataModule7.ADOTable8.FieldValues['braz']:=Edit1.Text;
DataModule7.ADOTable8.FieldValues['bdata']:=Edit2.Text;
DataModule7.ADOTable8.FieldValues['btimeuslygi']:=Panel7.Caption;
DataModule7.ADOTable8.Post;
end
else Application.MessageBox(PChar('�������� �������� ���������.'),'', MB_OK);
end;

procedure TForm6.SpeedButton3Click(Sender: TObject);
begin
// �������� �� ����� ���������� ���������� ���������
if AppLication.MessageBox(PChar('�� ������������� ������ ������� ������?'),'��������!', MB_YESNO)=idYES then
DataModule7.ADOTable8.Delete;
end;

procedure TForm6.SpeedButton1Click(Sender: TObject);
var
Data, DataDey, Dey:TDateTime;
i, n, nstr, npr, num, index:integer;
s, s1, s2:string;
begin
 {��������� ������ �� ������!!!!!!!}
 Data:=MonthCalendar1.Date; //���������� ��������� ���� �������
 //���������� ���������� ����� � ������
 nstr:=DataModule7.ADOTable8.RecordCount;
 DataModule7.ADOTable8.First;    //������� �� ������� ������� ������
 if nstr<>0 then begin
  if Application.MessageBox(pChar('������ ����� � '+DateToStr(Data)+' ?'),'��������!', MB_OKCANCEL)=idOK then begin
    {��������� ���� �� ���������� ����� � ������ }
    While nstr<>0 do begin
      npr:=StrToInt(DataModule7.ADOTable8.FieldValues['braz']); {���������� ���������� ��������}
      {��������� ���� ���������� ��������}
      DataDey:=Data;
      While npr<>0 do begin
        // ���� ������ � ������ ����
        // ��������� ���� ������ �������
        Dey:=DataDey-1+StrToInt(DataModule7.ADOTable8.FieldValues['bdata']);
        Label8.Caption:=DateToStr(Dey); // ������� ���� ������� �� ���������
        SpeedButton7.Click;//�������������� ����� ���������� ����� � �����������
        num:=DataModule8.ADOQuery2.RecordCount;//(��������� ������� ���� ��������� ���� � ���� ����"���")
          if num>0 then begin     //���� ���� ��������� ����� � �����������
            DataModule8.ADOQuery2.First;
            //� ������� "����" ��������� ���� ������ ����������� �������,
            for index:=1 to num do begin
              SpeedButton8.Click; //������� ������ ������� ������ �������� ��� ��������� ��� �������
              SpeedButton9.Click; //��������� ��������� ����� � ��������
              //���� ��� �� ������ ������ ��������
              if Label9.Caption='�������� �����' then begin
                //���� ����� �������� ��
                // �������� ������ ������� ������, �������� ����� � ����������� � ��������� ����
                Form6.Caption:='�������� ������ ������� ������';
                DataModule10.ADOTable2.Insert;
                DataModule10.ADOTable2.FieldValues['klientdata']:=DateToStr(Dey);
                DataModule10.ADOTable2.FieldValues['ktime']:=DataModule8.ADOQuery2.FieldValues['doktime'];
                DataModule10.ADOTable2.FieldValues['knaimeyslygi']:=DataModule8.ADOQuery2.FieldValues['onameyslygi'];
                DataModule10.ADOTable2.FieldValues['kdokname']:=DataModule8.ADOQuery2.FieldValues['dokname'];
                DataModule10.ADOTable2.FieldValues['kdokprofil']:=DataModule8.ADOQuery2.FieldValues['dokprof'];
                DataModule10.ADOTable2.FieldValues['kdokkab']:=DataModule8.ADOQuery2.FieldValues['dokkab'];
                DataModule10.ADOTable2.FieldValues['kdlityslugi']:=DataModule8.ADOQuery2.FieldValues['dlityslygi'];
                DataModule10.ADOTable2.Post;
                //����� ������ ������� ������
                // �������� (��������) � ���������� � ������e ������
                n:=DataModule8.ADOQuery2.FieldValues['moshyslygi'];
                n:=n-1;
                DataModule8.ADOQuery2.Edit;
                DataModule8.ADOQuery2.FieldValues['moshyslygi']:=n;
                DataModule8.ADOQuery2.Post;
                break; //�������� � ������������� ���� ���
              end;  //����� ������� ��� ��������� ����� ���� � ��� ��
              if index<num then
                DataModule8.ADOQuery2.Next //���� �� �� �� ���� ���� �� ��������� ����
              else num:=0;
            end; //����� ����� �������� ���������� ������� �����������   (����)
          end; //����� ������� ���� ��������� ����� � ����������� ����
          if num=0 then begin  // ���� ���������� ������� ��� ��...
          //������ ����������, ��� ����� � ���� ���� ���
            s1:=DateToStr(Dey);
            s2:=DataModule7.ADOTable8.FieldValues['bspecialnost'];
            if Application.MessageBox(PChar('��� ����������� ������� �� '+s1+' ('+s2+').'), '��������� �� ��������� ����?', MB_OKCANCEL)=idOK then
            npr:=npr+1;  //���� �� - �� ��������� �� ��������� ����, � ���� ��������� �����
end;
{ else //����� ������� ���������� ���������� �������
s1:=DateToStr(Dey);
s2:=DataModule7.ADOTable8.FieldValues['bspecialnost'];
if Application.MessageBox(PChar('��� ����������� ������� �� f '+s1+' ('+s2+').'), '��������� �� ��������� ����?', MB_OKCANCEL)=idOK then
npr:=npr+1;  //���� �� - �� ��������� �� ��������� ����, � ���� ��������� �����
//�������� ����������� �� ��� ��� �������� ����� � ��� �� ��������  }

if DataModule7.ADOTable8.FieldValues['bkratnost']='���������' then
DataDey:=DataDey+1;
if DataModule7.ADOTable8.FieldValues['bkratnost']='����� ����' then
DataDey:=DataDey+2;
npr:=npr-1;
end; //����� ����� ��������

DataModule7.ADOTable8.Next;   {��������� �� ��������� ������}
nstr:=nstr-1;
end; {����� ����� �� ���������� ����� � ������}
end; //����� ��������� ������� ��� ���� ������ �������
end else
Application.MessageBox(PChar('��� � ����� �������'),'��������', MB_OK);
{+ � ������ ������ �� ������ ����� � ������ � ��������� �������
� ����������� � ������������ �� ������ ����
+ �������� �� ���������� ����
+ �������������� ������ � ������ ������� ��������}
end;

procedure TForm6.SpeedButton7Click(Sender: TObject);
begin
//�������������� ����� ���������� ����� � �����������
Form6.Caption:='����� ���������� ����� � �����������';
DataModule8.ADOQuery2.Active:=false;
DataModule8.ADOQuery2.SQL.Clear;
DataModule8.ADOQuery2.SQL.Add('SELECT dokkab, dokprof, dokdata, doktime, onameyslygi, dlityslygi, keyyslygi, moshyslygi, num1, ki2, k1, dokname');
DataModule8.ADOQuery2.SQL.Add('FROM dokgraff, dokgraf');
DataModule8.ADOQuery2.SQL.Add('WHERE dokdata ='''+Label8.Caption+'''');
DataModule8.ADOQuery2.SQL.Add('AND num1 = k1 ');
DataModule8.ADOQuery2.SQL.Add('AND dokprof ='''+DataModule7.ADOTable8.FieldValues['bspecialnost']+''' ');
DataModule8.ADOQuery2.SQL.Add('AND onameyslygi ='''+DataModule7.ADOTable8.FieldValues['bnameyslugi']+'''');
DataModule8.ADOQuery2.SQL.Add('AND moshyslygi <>0');
DataModule8.ADOQuery2.Active:=true;
DataModule8.ADOQuery2.Sort:='ki2 ASC';
end;

procedure TForm6.SpeedButton9Click(Sender: TObject);
var
i1, i2, free:integer;
time, wtime: TDateTime;
data, dtime: string;
begin
free:=1; // ������� 1 - �� 0 - ���
// ��������� ��������� ����� � ��������
//1 ���� ���� ��������� ��� �����, ������� �� ���
data:=DataModule8.ADOQuery2.FieldValues['dokdata'];
dtime:=DataModule8.ADOQuery2.FieldValues['doktime'];
if DataModule10.ADOTable2.Locate('klientdata;ktime', VarArrayOf([data, dtime]), [])=True then
free:=0  // ������
else
free:=1;  // �� ������

{
if free=1 then begin
// ���� ������� ��
//2 ����  ������ ��������� �������������� ��� � ������������ ���������,
time:=StrToTime(DataModule8.ADOQuery2.FieldValues['doktime']); // ������ �����
wtime:=time;
i1:=0;
i2:=0;
// ��������� ���� �������� ������� �����
While i1=0 do begin
  wtime:=wtime-0.00069445*5;      //�������� �����
  i2:=i2+5;              // ��������� ������� ��� ������� (������� �������)
  //���� ��������� ����� �����, ������� �� ���
  if DataModule10.ADOTable2.Locate('klientdata;ktime', VarArrayOf([data, wtime]), [])=True then begin
    //���� ������ �������
    if DataModule10.ADOTable2.FieldValues['kdlityslugi']>i2 then begin
    // ���� ������, ������� ����� ������ �� ������� ������ �� ����� �����
       free:=0;  // ������
       break
    end else
       break; // ���� ������� � � ������ �� �� ������ ����� ������, ����� ������ �������
  end else
    free:=1;  // �� ������
  if i2=60 then // ���� ��� ������ �� ������ � �� �������������
    i1:=1; // ������������� ����
    //////////!!!!! ������ ����� - ������ ����� ������ �� 1 ����
    //���� ������� �� ����� ���� ����
end; // ����� ����� ����
end; // ����� 2�� ����� ��������
}
if free=1 then begin
// ���� ������� ��
//3 ���� ������ �� ������������ ������ ��������� �������� �� ��� ��� ������ ������
wtime:=time;
i1:=0;
i2:=0;
While i1=0 do begin
  wtime:=wtime+0.00069445*5;      //�������� �����
  i2:=i2+5;              // ��������� ������� ��� ������� (������� �������)
  //���� ��������� ����� �����, ������� �� ���
  if DataModule10.ADOTable2.Locate('klientdata;ktime', VarArrayOf([data, wtime]), [])=True then begin
    //���� ������ ������� ������������� ���� � �������, ��� ������
    free:=0;
    break;
  end else
    free:=1;  // �� ������
  //���� ������� �� ����� ���� ����
  if DataModule8.ADOTable2.FieldValues['dlityslygi']=i2 then
  i1:=1; // ������������� ����
end; // ����� ����� ����
end; // ����� �������� �����
SpeedButton9.Caption:=IntToStr(free)
end;


procedure TForm6.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
Form6.BitBtn1.Click;
// ������ ���������� ��� ������� ����� ���� � �������
end;

procedure TForm6.BitBtn1Click(Sender: TObject);
var
Data:TDateTime;
i:integer;
s:string;
begin
// ������ ��������
if DataModule8.ADOQuery2.RecordCount <> 0 then begin // �������� �� ������� ���������� �����
SpeedButton9.Click; // ��������� �� ������ �� ����� � �������� 
if SpeedButton9.Caption <> '0' then begin
  s:=DataModule8.ADOQuery2.FieldValues['doktime']; // ���������� ����� ����� ��� ���������� ������� ������� ������������
  // �������� ������������� �� �� ����� �������� �� ��� �����
  if Application.MessageBox(PChar('�� ������ �������� '+Label2.Caption+' �� '+s+' '+DateToStr(MonthCalendar1.Date)+' ('+DBLookupListBox2.SelectedItem+')?'),'��������', MB_OKCANCEL)= idOK then begin
    //������� ������ �������� � ������� � ���� ����������
    // �������� ������ ������� ������
    DataModule10.ADOTable2.Insert;
    DataModule10.ADOTable2.FieldValues['klientdata']:=DateToStr(MonthCalendar1.Date);
    DataModule10.ADOTable2.FieldValues['ktime']:=DataModule8.ADOQuery2.FieldValues['doktime'];
    DataModule10.ADOTable2.FieldValues['knaimeyslygi']:=DataModule8.ADOQuery2.FieldValues['onameyslygi'];
    DataModule10.ADOTable2.FieldValues['kdokname']:=DataModule8.ADOQuery2.FieldValues['dokname'];
    DataModule10.ADOTable2.FieldValues['kdokprofil']:=Form6.DBLookupListBox1.SelectedItem;
    DataModule10.ADOTable2.FieldValues['kdokkab']:=DataModule8.ADOQuery2.FieldValues['dokkab'];
    DataModule10.ADOTable2.FieldValues['kdlityslugi']:=DataModule8.ADOQuery2.FieldValues['dlityslygi'];
    DataModule10.ADOTable2.FieldValues['klientnumer']:=DataModule10.ADOTable1.FieldValues['key_klient'];
    DataModule10.ADOTable2.FieldValues['stat_uslugi']:='�������';
    DataModule10.ADOTable2.Post;
    // ����� ������ ������� ������
    // �������� (��������) � ���������� � ������e ������
    i:=DataModule8.ADOQuery2.FieldValues['moshyslygi'];
    i:=i-1;
    DataModule8.ADOQuery2.Edit;
    DataModule8.ADOQuery2.FieldValues['moshyslygi']:=i;
    DataModule8.ADOQuery2.Post;
    DataModule8.ADOQuery2.Active:=false;
    if Application.MessageBox(PChar('������ ������� ���������.'),'�����������', MB_OK)=idOK then
    Form6.Close;
 end;
end else Application.MessageBox(PChar('� �������� ��� ����� ��� ������.'),'��������', MB_OK);
end else Application.MessageBox(PChar('���������� ������� ���.'),'��������', MB_OK);
end;

procedure TForm6.DBLookupListBox4Click(Sender: TObject);
begin
// ���� ����� ����� // ���� �� ��� ��� ������ �� ���� �� ��� �������� �������� �������
{
DataModule8.ADOQuery2.Active:=false;
DataModule8.ADOQuery2.SQL.Clear;
DataModule8.ADOQuery2.SQL.Add('SELECT dokkab, dokprof, dokdata, doktime, onameyslygi, dlityslygi, keyyslygi, moshyslygi, num1, ki2, k1, dokname');
DataModule8.ADOQuery2.SQL.Add('FROM dokgraff, dokgraf');
DataModule8.ADOQuery2.SQL.Add('WHERE dokdata ='''+DateToStr(MonthCalendar1.Date)+'''');
DataModule8.ADOQuery2.SQL.Add('AND num1 = k1 ');
DataModule8.ADOQuery2.SQL.Add('AND dokprof ='''+DBLookupListBox3.SelectedItem+''' ');
DataModule8.ADOQuery2.SQL.Add('AND onameyslygi ='''+DBLookupListBox4.SelectedItem+'''');
DataModule8.ADOQuery2.SQL.Add('AND moshyslygi <>0');
DataModule8.ADOQuery2.Active:=true;
DataModule8.ADOQuery2.Sort:='ki2 ASC';
DBGrid3.Visible:=true;
Form6.BitBtn1.Visible:=True;
}
// ������� ���� � ��������� ������ �� ������
Label7.Caption:='OK';
Panel7.Caption:=DBLookupListBox4.SelectedItem+' ('+DBLookupListBox3.SelectedItem+')';
end;

procedure TForm6.DBLookupListBox3Click(Sender: TObject);
begin
// ����� ������ ������ ����������� � �������� ���� ����� ������ �����
DataModule7.ADOQuery1.Active:=false;
DataModule7.ADOQuery1.SQL.Clear;
DataModule7.ADOQuery1.SQL.Add('SELECT *');
DataModule7.ADOQuery1.SQL.Add('FROM ysl');
DataModule7.ADOQuery1.SQL.Add('WHERE chastnameysl = '''+DBLookupListBox3.SelectedItem+'''');
DataModule7.ADOQuery1.Active:=true;
DataModule7.ADOQuery1.Sort:='obchnameysl ASC';
DBLookupListBox2.Visible:=true;
DBGrid3.Visible:=false;
Form6.BitBtn1.Visible:=false;

// ��� ������ ����?
Panel7.Caption:=DBLookupListBox3.SelectedItem;
Label7.Caption:='';
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form6.DBGrid3.Visible:=false;
Form6.BitBtn1.Visible:=False;
DBLookupListBox2.Visible:=False;
end;

end.
