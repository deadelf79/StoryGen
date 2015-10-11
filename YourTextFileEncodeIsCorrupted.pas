unit YourTextFileEncodeIsCorrupted;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TCurruptedEncoding_HelpFrame = class(TForm)
    Panel2: TPanel;
    Shape1: TShape;
    Label2: TLabel;
    Label1: TLabel;
    Panel1: TPanel;
    Ok: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CurruptedEncoding_HelpFrame: TCurruptedEncoding_HelpFrame;

implementation

{$R *.dfm}

end.
