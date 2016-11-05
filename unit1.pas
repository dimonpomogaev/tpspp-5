unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Math ,Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls, crt;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   Memo1.Clear;
end;

procedure TForm1.Button1Click(Sender: TObject);
var k,c,c2:integer;
    t,s,x,eps:real;
begin
Memo1.Clear;
clrscr;

val(Edit1.Text,x,c);
val(Edit2.Text,eps,c2);
if c2=0 then
begin
if c=0 then
begin
t:=2*x;
s:=t;
k:=1;
Memo1.Lines.Add('k'+'               '+'s'+'                 '+'f');
Memo1.Lines.Add(inttostr(k-1)+'             '+FloattostrF(s,fffixed,3,3)+'           '+floattostrf(t,fffixed,3,3));
while abs(t)>eps do
 begin
t:=-(2*(x*x)*t)/(2*k*(2*k+1));
  s:=s+t;

  Memo1.Lines.Add(inttostr(k)+'             '+FloattostrF(s,fffixed,3,3)+'           '+floattostrf(t,ffexponent,3,3));
    k:=k+1;
 end;
end
else showmessage('Введите пожалуйста число!')
end
else showmessage('Введите пожалуйста число!')
end;
end.

