unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, XPMan, Vcl.Buttons, shellapi, Vcl.ComCtrls,
  System.Actions, Vcl.ActnList, Vcl.StdActns, Vcl.ExtActns,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  TMainForm = class(TForm)
    variantslist: TListBox;
    GroupBox1: TGroupBox;
    LoadFromTemplate: TButton;
    DeleteEvent: TButton;
    StoryMakerPanel: TPanel;
    Edit1: TEdit;
    AddNewEvent: TButton;
    GroupBox2: TGroupBox;
    ScrollBar1: TScrollBar;
    Label1: TLabel;
    StartGenerator: TButton;
    Label2: TLabel;
    XPManifest1: TXPManifest;
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    SaveAs: TBitBtn;
    Panel4: TPanel;
    Edit2: TEdit;
    Label3: TLabel;
    GeneratorPages: TPageControl;
    Story: TTabSheet;
    Chars: TTabSheet;
    EnableEditor: TCheckBox;
    MyStory: TRichEdit;
    editoroptions: TPanel;
    Bold: TButton;
    Manager: TActionManager;
    FormatRichEditBold2: TRichEditBold;
    Italic: TButton;
    FormatRichEditItalic1: TRichEditItalic;
    FormatRichEditUnderline1: TRichEditUnderline;
    FormatRichEditStrikeOut1: TRichEditStrikeOut;
    FormatRichEditBullets1: TRichEditBullets;
    FormatRichEditAlignLeft1: TRichEditAlignLeft;
    FormatRichEditAlignRight1: TRichEditAlignRight;
    FormatRichEditAlignCenter1: TRichEditAlignCenter;
    Underline: TButton;
    Strike: TButton;
    CharaMakerPanel: TPanel;
    GroupBox3: TGroupBox;
    Panel1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Panel5: TPanel;
    ScrollBar3: TScrollBar;
    Panel6: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    GroupBox4: TGroupBox;
    Panel7: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    ScrollBar2: TScrollBar;
    Panel8: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    GroupBox5: TGroupBox;
    Panel9: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    ScrollBar4: TScrollBar;
    Panel10: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    GroupBox6: TGroupBox;
    Panel11: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    IntelScroll: TScrollBar;
    Panel12: TPanel;
    Label18: TLabel;
    IntelLabel: TLabel;
    GroupBox7: TGroupBox;
    Panel13: TPanel;
    Label20: TLabel;
    Label21: TLabel;
    ScrollBar6: TScrollBar;
    Panel14: TPanel;
    Label22: TLabel;
    Label23: TLabel;
    GroupBox8: TGroupBox;
    Panel15: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    ScrollBar7: TScrollBar;
    Panel16: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    GroupBox10: TGroupBox;
    Panel19: TPanel;
    Label32: TLabel;
    Label33: TLabel;
    ScrollBar9: TScrollBar;
    Panel20: TPanel;
    Label34: TLabel;
    Label35: TLabel;
    Towns: TTabSheet;
    procedure LoadFromTemplateClick(Sender: TObject);
    procedure DeleteEventClick(Sender: TObject);
    procedure AddNewEventClick(Sender: TObject);
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
    procedure EnableEditorClick(Sender: TObject);
    procedure BoldClick(Sender: TObject);
    procedure ItalicClick(Sender: TObject);
    procedure UnderlineClick(Sender: TObject);
    procedure StrikeClick(Sender: TObject);
    procedure variantslistClick(Sender: TObject);
    procedure GeneratorPagesChange(Sender: TObject);
    procedure IntelScrollChange(Sender: TObject);
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
  mainform.MyStory.Lines:=EventsLists.Memo1.Lines;
end;

procedure TMainForm.LoadFromTemplateClick(Sender: TObject);
begin
  GenreForm.ShowModal;
end;

procedure TMainForm.DeleteEventClick(Sender: TObject);
var index:integer;
begin
if variantslist.ItemIndex<>-1 then
  begin
    // Delete one line
    //variantslist.Items.Delete(variantslist.ItemIndex);
    // Try to multiline deleting
    index:=0;
    while variantslist.SelCount>0 do
      begin
        if (variantslist.count-1)<index then
          index:=0;
        if variantslist.Selected[index] then
          variantslist.Items.Delete(index);
        index:=index+1;
      end;
    variantslist.ItemIndex:=-1;
    DeleteEvent.Enabled:=false;
  end;
if variantslist.Items.Count<=2 then
  StartGenerator.Enabled:=false;
end;

procedure TMainForm.AddNewEventClick(Sender: TObject);
begin
if edit1.Text<>'' then
  variantslist.Items.Add(edit1.Text);
if variantslist.Items.Count>2 then
  StartGenerator.Enabled:=true;
end;

procedure TMainForm.BoldClick(Sender: TObject);
begin
  if not(fsBold in mystory.SelAttributes.Style) then
    begin
      mystory.SelAttributes.Style:=mystory.SelAttributes.Style+[fsBold];
      Bold.Tag:=1;
    end
  else
    begin
      mystory.SelAttributes.Style:=mystory.SelAttributes.Style-[fsBold];
      Bold.Tag:=0;
    end;
  mystory.SetFocus;
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

procedure TMainForm.EnableEditorClick(Sender: TObject);
begin
  editoroptions.Visible:=enableeditor.Checked;
  if enableeditor.checked then
    manager.State:=asNormal
  else
    manager.State:=asSuspended;
  mystory.ReadOnly:=not(enableeditor.Checked);
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
MainForm.Width:=640;
label2.Caption:=inttostr(scrollbar1.Position);
generatorpages.ActivePage:=Story;
  IntelLabel.Caption:=inttostr(IntelScroll.Position);
end;

procedure TMainForm.GeneratorPagesChange(Sender: TObject);
begin
  if GeneratorPages.ActivePage=Story then
    begin
      StoryMakerPanel.Visible:=true;
      CharaMakerPanel.Visible:=false;
    end
  else
    begin
      StoryMakerPanel.Visible:=false;
      CharaMakerPanel.Visible:=true;
    end;
end;

procedure TMainForm.ItalicClick(Sender: TObject);
begin
  if not(fsItalic in mystory.SelAttributes.Style) then
    begin
      mystory.SelAttributes.Style:=mystory.SelAttributes.Style+[fsItalic];
      Bold.Tag:=1;
    end
  else
    begin
      mystory.SelAttributes.Style:=mystory.SelAttributes.Style-[fsItalic];
      Bold.Tag:=0;
    end;
  mystory.SetFocus;
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

procedure TMainForm.IntelScrollChange(Sender: TObject);
begin
  IntelLabel.Caption:=inttostr(IntelScroll.Position);
end;

procedure TMainForm.StartGeneratorClick(Sender: TObject);
var kolvo,variant,last,line:integer;
begin
MyStory.Lines.Clear;
MyStory.Lines.Add('Список событий:');
MyStory.Lines.Add('1. Завязка');
line:=2;
last:=0;
randomize;
for kolvo:=1 to scrollbar1.Position do
  begin
    repeat
      variant:=random(variantslist.Items.Count-1);
    until variant<>last;
    MyStory.Lines.Add(inttostr(line)+'. '+variantslist.Items[variant]);
    last:=variant;
    line:=line+1;
  end;
line:=line+1;
MyStory.Lines.Add(inttostr(line)+'. Развязка');
line:=line+1;
MyStory.Lines.Add(inttostr(line)+'. Эпилог');
end;

procedure TMainForm.StrikeClick(Sender: TObject);
begin
  if not(fsStrikeOut in mystory.SelAttributes.Style) then
    begin
      mystory.SelAttributes.Style:=mystory.SelAttributes.Style+[fsStrikeOut];
      Bold.Tag:=1;
    end
  else
    begin
      mystory.SelAttributes.Style:=mystory.SelAttributes.Style-[fsStrikeOut];
      Bold.Tag:=0;
    end;
  mystory.SetFocus;
end;

procedure TMainForm.UnderlineClick(Sender: TObject);
begin
  if not(fsUnderline in mystory.SelAttributes.Style) then
    begin
      mystory.SelAttributes.Style:=mystory.SelAttributes.Style+[fsUnderline];
      Bold.Tag:=1;
    end
  else
    begin
      mystory.SelAttributes.Style:=mystory.SelAttributes.Style-[fsUnderline];
      Bold.Tag:=0;
    end;
  mystory.SetFocus;
end;

procedure TMainForm.variantslistClick(Sender: TObject);
begin
  if VariantsList.ItemIndex<>-1 then
    DeleteEvent.Enabled:=true;
end;

end.
