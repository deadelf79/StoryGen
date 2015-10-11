unit FilePathes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.ValEdit;

type
  TFilePathAssociations = class(TForm)
    keys: TValueListEditor;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FilePathAssociations: TFilePathAssociations;

implementation

{$R *.dfm}

end.
