program StoryGen;

{$R *.dres}

uses
  Forms,
  Main in 'Main.pas' {MainForm},
  Unit2 in 'Unit2.pas' {GenreForm},
  Unit3 in 'Unit3.pas' {EventsLists},
  Vcl.Themes,
  Vcl.Styles,
  OpenDialogExt in 'OpenDialogExt.pas' {OpenDialog},
  YouNotSelectTheFile in 'YouNotSelectTheFile.pas' {NoSelectFile_ErrorForm},
  FilePathes in 'FilePathes.pas' {FilePathAssociations},
  Stats in 'Stats.pas' {Statistics},
  YourTextFileEncodeIsCorrupted in 'YourTextFileEncodeIsCorrupted.pas' {CurruptedEncoding_HelpFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TGenreForm, GenreForm);
  Application.CreateForm(TEventsLists, EventsLists);
  Application.CreateForm(TOpenDialog, OpenDialog);
  Application.CreateForm(TNoSelectFile_ErrorForm, NoSelectFile_ErrorForm);
  Application.CreateForm(TFilePathAssociations, FilePathAssociations);
  Application.CreateForm(TStatistics, Statistics);
  Application.CreateForm(TCurruptedEncoding_HelpFrame, CurruptedEncoding_HelpFrame);
  Application.Run;
end.
