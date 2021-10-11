unit Dm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Memo2: TMemo;
    Button6: TButton;
    Bevel1: TBevel;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Memo3: TMemo;
    Button10: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

var
  MySubItems: array[0..3] of TMenuItem;

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var
 MyItem: array[0..2] of TMenuItem;
 i:integer;
begin
 for i:=0 to 2 do
  begin
   MyItem[i]:=TMenuItem.Create(Self);
   MyItem[i].Caption:='New item '+IntToStr(i+1);
   MainMenu1.Items.Add(MyItem[i]);
  end;
 Button2.Enabled:=true;
 Button4.Enabled:=true;
 Button5.Enabled:=true;
 Button6.Enabled:=true;
 Button1.Enabled:=false;   
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i:integer;
begin
 for i:=0 to 3 do
  begin
   MySubItems[i]:=TMenuItem.Create(Self);
   MySubItems[i].Caption:='New item '+IntToStr(i);
   MainMenu1.Items[0].Add(MySubItems[i]);
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 MySubItems[2].Caption:='-';
end;

procedure TForm1.Button4Click(Sender: TObject);
var
 i,k:integer;
begin
 Memo1.Lines.LoadFromFile('Items.txt');
 k:=Memo1.Lines.Count;
 for i:=0 to k-1 do
  begin
   MySubItems[i]:=TMenuItem.Create(Self);
   MySubItems[i].Caption:=Memo1.Lines.Strings[i];
   MainMenu1.Items[0].Add(MySubItems[i]);
  end;
 Button3.Enabled:=true;  
end;

procedure TForm1.Button5Click(Sender: TObject);
var
 i:integer;
begin
 for i:=0 to Memo2.Lines.Count-1 do
  begin
   MySubItems[i]:=TMenuItem.Create(Self);
   MySubItems[i].Caption:=Memo2.Lines.Strings[i];
   MainMenu1.Items[1].Add(MySubItems[i]);
  end;
 Button3.Enabled:=true;  
end;

procedure TForm1.Button6Click(Sender: TObject);
var
 i:integer;
 s:string;
begin
 s:=InputBox('”даление пункта меню','¬ведите им€ удал€емого пункта','');
 for i:=0 to MainMenu1.Items[0].Count-1 do
  begin
   // MainMenu1.Items.Delete(0); // удал€етс€ все меню
   if MainMenu1.Items[0].Caption=s
   then MainMenu1.Items[i].Delete(i);
  end;
end;

procedure TForm1.Button7Click(Sender: TObject);
var
 x: TEdit; // объ€вл€ем переменную типа TEdit
begin
 x:=TEdit.Create(self);// создаем экземпл€р компонента
 x.Parent:=Form1;// текстовое поле по€витс€ на форме
 x.Left:=16;
 x.Top:=Button8.Top+40;
 x.Width:=145;
 x.Text:='Create(Self)';
end;

procedure TForm1.Button8Click(Sender: TObject);
var
 y:TFontDialog; // объ€вл€ем переменную типа TFontDialog
begin
 y:=TFontdialog.Create(self);
 y.Execute; //только дл€ демонстрации. ѕоказать что работает.
end;

procedure TForm1.Button9Click(Sender: TObject);
var
 t:TStringList;
begin
 t:=TStringList.Create; //создаем
 t.AddStrings(Memo3.lines); //присваиваем переменной t строки из Memo
 t.Sort; // сортируем
 Memo3.Clear;
 Memo3.Lines.AddStrings(t); // присваиваем memo уже отсортированные строки
end;

procedure TForm1.Button10Click(Sender: TObject);
var
 a:array[1..200] of TEdit; // массив элементов Edit
 b:array[1..100] of TLabel; //массив меток
 i,j,x,z: integer;
begin
 z:=202;
 for i:=1 to 3 do
  begin
   a[i]:=TEdit.Create(Self);
   a[i].Parent:=Form1;
   a[i].Left:=176;
   a[i].Text:='Ёлемент # '+inttostr(i);
   a[i].Top:=z;
   a[i].Top:=a[i].Top+30;
   z:=a[i].Top;
  end;
 x:=202;
 for j:=1 to 3 do
  begin
   b[j]:=TLabel.Create(Self);
   b[j].Parent:=Form1;
   b[j].Left:=336;
   b[j].Caption:='Ёлемент # '+IntToStr(j);
   b[j].Top:=x;
   b[j].Top:=x+30;
   x:=b[j].Top;
  end;
end;

end.
