unit OpenDialogExt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.FileCtrl, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TOpenDialog = class(TForm)
    Panel1: TPanel;
    OkCancelPanel: TPanel;
    Ok: TButton;
    Cancel: TButton;
    DriveComboBox1: TDriveComboBox;
    Panel2: TPanel;
    DirectoryListBox1: TDirectoryListBox;
    FilterComboBox1: TFilterComboBox;
    FileListBox1: TFileListBox;
    Panel3: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OpenDialog: TOpenDialog;

implementation

{$R *.dfm}

end.
