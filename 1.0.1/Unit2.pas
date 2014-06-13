unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    genrelist: TListBox;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
uses main, unit3;

{$R *.dfm}

procedure TForm2.Button2Click(Sender: TObject);
begin
form2.Close;
end;

procedure TForm2.Button1Click(Sender: TObject);
//var index:integer;
begin
if form2.genrelist.ItemIndex<>-1 then
  begin
    form1.variantslist.Items.Clear;
    case form2.genrelist.ItemIndex of
      0://Детектив
        form1.variantslist.Items:=form3.detectivelist.Items;
      1://Киберпанк
        form1.variantslist.Items:=form3.cyberpunklist.Items;
      2://Любовный роман
        form1.variantslist.Items:=form3.lovelist.Items;
      3://Роман ужасов
        form1.variantslist.Items:=form3.horrorlist.Items;
      4://Космическая фантастика
        form1.variantslist.Items:=form3.cosmolist.Items;
      5://Научная фантастика
        form1.variantslist.Items:=form3.scifilist.Items;
      6://Фентези
        form1.variantslist.Items:=form3.fantasylist.Items;
    end;
  end;
form1.button4.Enabled:=true;
form2.Close;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
form2.genrelist.ItemIndex:=0;
end;

end.
