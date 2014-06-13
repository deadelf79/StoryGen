unit YouNotSelectTheFile;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TNoSelectFile_ErrorForm = class(TForm)
    Panel1: TPanel;
    Ok: TButton;
    Label1: TLabel;
    Panel2: TPanel;
    Shape1: TShape;
    Label2: TLabel;
    ok2: TButton;
    ok3: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NoSelectFile_ErrorForm: TNoSelectFile_ErrorForm;
  twice:integer;

implementation

{$R *.dfm}

end.
