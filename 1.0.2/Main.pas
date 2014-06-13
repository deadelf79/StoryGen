unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, XPMan, Vcl.Buttons, shellapi;

type
  TMainForm = class(TForm)
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
    StartGenerator: TButton;
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
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure StartGeneratorClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Label3MouseEnter(Sender: TObject);
    procedure Label3MouseLeave(Sender: TObject);
    procedure Edit2MouseEnter(Sender: TObject);
    procedure Edit2MouseLeave(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation
uses unit2,unit3,stats;

{$R *.dfm}

procedure TMainForm.BitBtn1Click(Sender: TObject);
begin
  mainform.memo1.Lines:=EventsLists.Memo1.Lines;
end;

procedure TMainForm.Button1Click(Sender: TObject);
begin
  GenreForm.ShowModal;
end;

procedure TMainForm.Button2Click(Sender: TObject);
begin
if variantslist.ItemIndex<>-1 then
  begin
    variantslist.Items.Delete(variantslist.ItemIndex);
    variantslist.ItemIndex:=-1;
  end;
if variantslist.Items.Count<=2 then
  StartGenerator.Enabled:=false;
end;

procedure TMainForm.Button3Click(Sender: TObject);
begin
if edit1.Text<>'' then
  variantslist.Items.Add(edit1.Text);
if variantslist.Items.Count>2 then
  StartGenerator.Enabled:=true;
end;

procedure TMainForm.Edit2Click(Sender: TObject);
begin
  ShellExecute( Handle, 'open', 'http://deadelf79.blogspot.ru/', nil, nil, SW_HIDE );
end;

procedure TMainForm.Edit2MouseEnter(Sender: TObject);
begin
  edit2.Font.Style:=[fsunderline];
end;

procedure TMainForm.Edit2MouseLeave(Sender: TObject);
begin
  edit2.Font.Style:=[];
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
label2.Caption:=inttostr(scrollbar1.Position);
end;

procedure TMainForm.Label3Click(Sender: TObject);
begin
  statistics.ShowModal;
end;

procedure TMainForm.Label3MouseEnter(Sender: TObject);
begin
  label3.Font.Style:=[fsUnderline];
end;

procedure TMainForm.Label3MouseLeave(Sender: TObject);
begin
  label3.Font.Style:=[];
end;

procedure TMainForm.ScrollBar1Change(Sender: TObject);
begin
label2.Caption:=inttostr(scrollbar1.Position);
end;

procedure TMainForm.StartGeneratorClick(Sender: TObject);
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
