unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, XPMan, Vcl.Buttons;

type
  TForm1 = class(TForm)
    variantslist: TListBox;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Edit1: TEdit;
    Button3: TButton;
    GroupBox2: TGroupBox;
    ScrollBar1: TScrollBar;
    Label1: TLabel;
    Button4: TButton;
    Memo1: TMemo;
    Label2: TLabel;
    XPManifest1: TXPManifest;
    Panel2: TPanel;
    Panel3: TPanel;
    CharGen: TButton;
    BitBtn1: TBitBtn;
    SaveAs: TBitBtn;
    Panel4: TPanel;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses unit2,unit3;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  form1.memo1.Lines:=form3.Memo1.Lines;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  form2.ShowModal;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if variantslist.ItemIndex<>-1 then
  begin
    variantslist.Items.Delete(variantslist.ItemIndex);
    variantslist.ItemIndex:=-1;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
if edit1.Text<>'' then
  variantslist.Items.Add(edit1.Text)
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
label2.Caption:=inttostr(scrollbar1.Position);
end;

procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
label2.Caption:=inttostr(scrollbar1.Position);
end;

procedure TForm1.Button4Click(Sender: TObject);
var kolvo,variant,last,line:integer;
begin
memo1.Lines.Clear;
memo1.Lines.Add('Список событий:');
memo1.Lines.Add('1. Завязка');
line:=2;
last:=0;
randomize;
for kolvo:=1 to scrollbar1.Position do
  begin
    repeat
      variant:=random(variantslist.Items.Count-1);
    until variant<>last;
    memo1.Lines.Add(inttostr(line)+'. '+variantslist.Items[variant]);
    last:=variant;
    line:=line+1;
  end;
line:=line+1;
memo1.Lines.Add(inttostr(line)+'. Развязка');
line:=line+1;
memo1.Lines.Add(inttostr(line)+'. Эпилог');
end;

end.
