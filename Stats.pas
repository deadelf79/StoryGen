unit Stats;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.ValEdit;

type
  TStatistics = class(TForm)
    OkCancelPanel: TPanel;
    Ok: TButton;
    info: TValueListEditor;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Statistics: TStatistics;

implementation
uses Unit3;

{$R *.dfm}

procedure TStatistics.FormCreate(Sender: TObject);
begin
  //Global event counter
  info.Values[info.Keys[4]]:=inttostr(
    EventsLists.DetectiveList.Items.Count+
    EventsLists.CyberpunkList.Items.Count+
    EventsLists.LoveList.Items.Count+
    EventsLists.HorrorList.Items.Count+
    EventsLists.CosmoList.Items.Count+
    EventsLists.ScifiList.Items.Count+
    EventsLists.FantasyList.Items.Count
  );
end;

end.
