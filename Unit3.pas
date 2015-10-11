unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TEventsLists = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    DetectiveList: TListBox;
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    CyberpunkList: TListBox;
    GroupBox3: TGroupBox;
    LoveList: TListBox;
    GroupBox4: TGroupBox;
    HorrorList: TListBox;
    GroupBox5: TGroupBox;
    CosmoList: TListBox;
    GroupBox6: TGroupBox;
    ScifiList: TListBox;
    GroupBox7: TGroupBox;
    FantasyList: TListBox;
    Instruction: TGroupBox;
    Memo1: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EventsLists: TEventsLists;
implementation

{$R *.dfm}

end.
