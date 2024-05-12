program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {SplashForm},
  Unit4 in 'Unit4.pas' {Form4},
  Unit5 in 'Unit5.pas' {Form5},
  Unit6 in 'Unit6.pas' {Form6},
  Unit7 in 'Unit7.pas' {DataModule7: TDataModule},
  Unit8 in 'Unit8.pas' {DataModule8: TDataModule},
  Unit9 in 'Unit9.pas' {Form9},
  Unit10 in 'Unit10.pas' {DataModule10: TDataModule},
  Unit11 in 'Unit11.pas' {Form11};

{$R *.res}

begin
  SplashForm:=TSpLashForm.Create(nil);
  SplashForm.Show;
  SplashForm.Repaint;
  Application.Initialize;
  Application.Title := 'Kord';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TDataModule7, DataModule7);
  Application.CreateForm(TDataModule8, DataModule8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TDataModule10, DataModule10);
  Application.CreateForm(TForm11, Form11);
  SplashForm.Hide;
  SplashForm.Free;
  Application.Run;
end.
