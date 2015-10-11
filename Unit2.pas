unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TGenreForm = class(TForm)
    genrelist: TListBox;
    Ok: TButton;
    Button2: TButton;
    OkCancelPanel: TPanel;
    LeftPanel: TPanel;
    UserFilePanel: TPanel;
    GroupBox1: TGroupBox;
    LoadFile: TButton;
    last_files: TListBox;
    SelectGenreLoader: TPanel;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    procedure Button2Click(Sender: TObject);
    procedure OkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LoadFileClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function GetFilename(filename:string):string;
  function equalstr(string1,string2:string):boolean;
var
  GenreForm: TGenreForm;

implementation
uses main, unit3, OpenDialogExt,YouNotSelectTheFile,FilePathes,
YourTextFileEncodeIsCorrupted;

{$R *.dfm}

procedure TGenreForm.BitBtn1Click(Sender: TObject);
begin
  CurruptedEncoding_HelpFrame.showmodal;
end;

procedure TGenreForm.Button2Click(Sender: TObject);
begin
  GenreForm.Close;
end;

function GetFilename(filename:string):string;
var filename_index:integer;
filename_buffer,filename_buffer2:string;
begin
  //showmessage(filename+':'+inttostr(filename.Length));
  for filename_index := filename.Length downto 0 do
    begin
      if filename[filename_index]<>'\' then
        filename_buffer:=filename_buffer+filename[filename_index]
      else
        break;
      //showmessage(inttostr(filename_index)+':'+filename_buffer);
    end;
  filename_buffer2:='';
  for filename_index := filename_buffer.Length downto 0 do
    filename_buffer2:=filename_buffer2+filename_buffer[filename_index];
  //showmessage(filename_buffer+':'+filename_buffer2);
  getfilename:=filename_buffer2;
end;

function equalstr(string1,string2:string):boolean;
var index:integer;
is_equal:boolean;
begin
  is_equal:=true;
  if string1.Length<>string2.Length then
     is_equal:=false
  else
  for index := 0 to string1.length do
     if string1[index]<>string2[index] then
        is_equal:=false;
  equalstr:=is_equal;
end;

procedure TGenreForm.LoadFileClick(Sender: TObject);
var index:integer;
filename:string;
begin
  OpenDialog.ShowModal;
  if OpenDialog.ModalResult=mrOk then
    if last_files.Items.Count>0 then
      for index := 0 to last_files.items.count-1 do
        begin
        filename:=opendialog.FileListBox1.FileName;
        FilePathAssociations.keys.InsertRow(getfilename(filename),filename,true);
        if last_files.Items[index]<>getfilename(filename) then
            last_files.Items.Add(getfilename(filename))
        end
    else
      begin
        filename:=opendialog.FileListBox1.FileName;
        FilePathAssociations.keys.InsertRow(getfilename(filename),filename,true);
        last_files.Items.Add(getfilename(filename));
      end;
end;

procedure TGenreForm.OkClick(Sender: TObject);
var index:integer;
my_file:textfile;
line:string;
begin
// Надо придумать, как связать пункты не с конкретными жанрами,
// а именно с листами (списками)
  if radiogroup1.ItemIndex=0 then
    begin
      if GenreForm.genrelist.ItemIndex<>-1 then
        begin
          MainForm.variantslist.Items.Clear;
          case GenreForm.genrelist.ItemIndex of
            0://Детектив
              MainForm.variantslist.Items:=EventsLists.detectivelist.Items;
            1://Киберпанк
              MainForm.variantslist.Items:=EventsLists.cyberpunklist.Items;
            2://Любовный роман
              MainForm.variantslist.Items:=EventsLists.lovelist.Items;
            3://Роман ужасов
              MainForm.variantslist.Items:=EventsLists.horrorlist.Items;
            4://Космическая фантастика
              MainForm.variantslist.Items:=EventsLists.cosmolist.Items;
            5://Научная фантастика
              MainForm.variantslist.Items:=EventsLists.scifilist.Items;
            6://Фентези
              MainForm.variantslist.Items:=EventsLists.fantasylist.Items;
          end;
        end;
        MainForm.StartGenerator.Enabled:=true;
        GenreForm.Close;
    end
   else
    if last_files.ItemIndex=-1 then
      begin
        twice:=twice+1;
        if twice=2 then
          begin
            noSelectFile_ErrorForm.Ok.Visible:=false;
            noSelectFile_ErrorForm.Ok2.Visible:=true;
            noSelectFile_ErrorForm.Ok3.Visible:=false;
          end
        else
          if twice>2 then
            begin
              noSelectFile_ErrorForm.Ok.Visible:=false;
              noSelectFile_ErrorForm.Ok2.Visible:=false;
              noSelectFile_ErrorForm.Ok3.Visible:=true;
              noSelectFile_ErrorForm.Shape1.Brush.Color:=clRed;
            end;
        noSelectFile_ErrorForm.ShowModal;
      end
    else
      begin
        for index := 0 to FilePathAssociations.keys.RowCount-1 do
          if equalstr(last_files.items[last_files.itemindex],FilePathAssociations.keys.Keys[index]) then
            break;
        //Error was here
        // I don't know why, but now it works
        if index>FilePathAssociations.keys.RowCount-1 then
          index:=index-1;
        //No error
        assignfile(my_file,FilePathAssociations.keys.Values[
                  FilePathAssociations.keys.Keys[index]
                ]);
        reset(my_file);
        MainForm.variantslist.items.Clear;
          while not Eof(my_file) do
            begin
              ReadLn(my_file, line);
              MainForm.variantslist.items.add(line);
            end;
        closefile(my_file);
        MainForm.StartGenerator.Enabled:=true;
        GenreForm.Close;
      end;
end;

procedure TGenreForm.RadioGroup1Click(Sender: TObject);
begin
  if radiogroup1.ItemIndex=0 then
    begin
      //user panel
      groupbox1.Enabled:=false;
      loadfile.Enabled:=false;
      //program panel
      genrelist.enabled:=true;
    end
  else
    begin
      //user panel
      groupbox1.Enabled:=true;
      loadfile.Enabled:=true;
      //program panel
      genrelist.enabled:=false;
    end
end;

procedure TGenreForm.FormCreate(Sender: TObject);
begin
  GenreForm.genrelist.ItemIndex:=0;
end;

end.
