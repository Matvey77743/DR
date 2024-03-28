unit unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  close
end;

procedure TForm1.Button1Click(Sender: TObject);
var a, b, h, x, y: integer;
begin
a:=strtoint(Edit1.Text);
b:=strtoint(Edit2.Text);
h:=strtoint(Edit3.Text);
x:=a;
while x<=b do
      begin
      y:=x*x;
      Memo1.Lines.add('y ='+IntToStr(y)+ ' x= '+IntToStr(x));
      x:=x+h;
      end;
end;

end.

