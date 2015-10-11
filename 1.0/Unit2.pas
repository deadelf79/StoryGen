unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    genrelist: TListBox;
    Button1: TButton;
    Button2: TButton;
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
uses main;

{$R *.dfm}

procedure TForm2.Button2Click(Sender: TObject);
begin
form2.Close;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
if form2.genrelist.ItemIndex<>-1 then
  begin
    form1.variantslist.Items.Clear;
    case form2.genrelist.ItemIndex of
      0:begin//��������
        form1.variantslist.Items.Add('�������������');
        form1.variantslist.Items.Add('��������');
        form1.variantslist.Items.Add('����� ����������');
        form1.variantslist.Items.Add('������ ��������������');
        form1.variantslist.Items.Add('������');
        form1.variantslist.Items.Add('�����');
        form1.variantslist.Items.Add('�������� �������');
        form1.variantslist.Items.Add('���������� ������� ����');
        form1.variantslist.Items.Add('����� ��������� ����');
        form1.variantslist.Items.Add('����� ����');
        form1.variantslist.Items.Add('�����������');
        form1.variantslist.Items.Add('������� �������');
        form1.variantslist.Items.Add('����������');
        form1.variantslist.Items.Add('�������� � �����');
        form1.variantslist.Items.Add('����� �������� � ����');
        form1.variantslist.Items.Add('����� ����������');
        form1.variantslist.Items.Add('����������');
        form1.variantslist.Items.Add('�������� �� ������');
        form1.variantslist.Items.Add('������������ � ���������');
        form1.variantslist.Items.Add('�����������');
        form1.variantslist.Items.Add('������ ��� ����������');
        form1.variantslist.Items.Add('����� ������� �����');
        form1.variantslist.Items.Add('��������� �� �����');
        form1.variantslist.Items.Add('����������� �������');
        form1.variantslist.Items.Add('������ ���������');
        form1.variantslist.Items.Add('����� �����');
        form1.variantslist.Items.Add('�������� � ����');
        form1.variantslist.Items.Add('������ ������');
        form1.variantslist.Items.Add('���������������� ���');
        form1.variantslist.Items.Add('����� ������������ ��������');
        form1.variantslist.Items.Add('��������� ������� �������');
        form1.variantslist.Items.Add('�������������');
        form1.variantslist.Items.Add('��������� �� ��������');
        form1.variantslist.Items.Add('����� ����������');
        form1.variantslist.Items.Add('������ ���������');
        form1.variantslist.Items.Add('������������');
        form1.variantslist.Items.Add('���������');
        form1.variantslist.Items.Add('��������');
        form1.variantslist.Items.Add('�����');
        form1.variantslist.Items.Add('������������ ��������� � �������');
        form1.variantslist.Items.Add('����������� ���������');
        form1.variantslist.Items.Add('���������� �����������');
        form1.variantslist.Items.Add('����������');
        form1.variantslist.Items.Add('����������');
        form1.variantslist.Items.Add('����������');
        form1.variantslist.Items.Add('����������� ������');
        end;
      1:begin//���������
        form1.variantslist.Items.Add('��������');
        form1.variantslist.Items.Add('����������');
        form1.variantslist.Items.Add('�������������');
        form1.variantslist.Items.Add('�����������');
        form1.variantslist.Items.Add('�������� �������');
        form1.variantslist.Items.Add('��������� �����');
        form1.variantslist.Items.Add('���������');
        form1.variantslist.Items.Add('�����������������');
        form1.variantslist.Items.Add('����������� ������');
        form1.variantslist.Items.Add('����� ������');
        form1.variantslist.Items.Add('�����');
        form1.variantslist.Items.Add('����������');
        form1.variantslist.Items.Add('�������');
        end;
      2:begin//�������� �����
        form1.variantslist.Items.Add('�������������');
        form1.variantslist.Items.Add('��������� ������');
        form1.variantslist.Items.Add('�������������� ������');
        form1.variantslist.Items.Add('������������');
        form1.variantslist.Items.Add('������������� ������');
        form1.variantslist.Items.Add('��������');
        form1.variantslist.Items.Add('�����');
        form1.variantslist.Items.Add('��������');
        form1.variantslist.Items.Add('���������');
        form1.variantslist.Items.Add('������������');
        form1.variantslist.Items.Add('�����');
        form1.variantslist.Items.Add('��������� � �����');
        form1.variantslist.Items.Add('����� � ������(-��)');
        form1.variantslist.Items.Add('����');
        form1.variantslist.Items.Add('����������');
      end;
      3:begin//����� ������
        form1.variantslist.Items.Add('������');
        form1.variantslist.Items.Add('������� ����������');
        form1.variantslist.Items.Add('������� ��������');
        form1.variantslist.Items.Add('��������');
        form1.variantslist.Items.Add('�����������');
        form1.variantslist.Items.Add('��������� �������');
        form1.variantslist.Items.Add('����������');
        form1.variantslist.Items.Add('��������');
        form1.variantslist.Items.Add('������');
        form1.variantslist.Items.Add('������������');
        form1.variantslist.Items.Add('�����');
        form1.variantslist.Items.Add('�����������');
        form1.variantslist.Items.Add('������ ����');
        form1.variantslist.Items.Add('������');
        form1.variantslist.Items.Add('���������');
        form1.variantslist.Items.Add('�����������');
        form1.variantslist.Items.Add('������������� �������');
        form1.variantslist.Items.Add('�����');
        form1.variantslist.Items.Add('�������� �� ������ ����������');
        form1.variantslist.Items.Add('������� � ������ ����� � ����');
        form1.variantslist.Items.Add('���������� ������');
        form1.variantslist.Items.Add('��� � ���������� �����');
        form1.variantslist.Items.Add('��� � ������ ����');
        form1.variantslist.Items.Add('�������� ����');
        form1.variantslist.Items.Add('������ ��������');
        form1.variantslist.Items.Add('��������� ��������');
        form1.variantslist.Items.Add('���������');
        form1.variantslist.Items.Add('��������� ��������� ������');
        form1.variantslist.Items.Add('�����������');
        form1.variantslist.Items.Add('��������');
        form1.variantslist.Items.Add('�������� ���');
        form1.variantslist.Items.Add('������ ���� ������������');
        form1.variantslist.Items.Add('������ � �������� ��������');
        form1.variantslist.Items.Add('����� � �����������');
        form1.variantslist.Items.Add('����� ��������� �� ������');
        form1.variantslist.Items.Add('��������� (��� �����)');
        form1.variantslist.Items.Add('������������');
        form1.variantslist.Items.Add('������������ ���������');
        form1.variantslist.Items.Add('������������ ������');
        form1.variantslist.Items.Add('��������� �������');
        form1.variantslist.Items.Add('����������');
        form1.variantslist.Items.Add('����� � ������� ����������');
        form1.variantslist.Items.Add('��������� ������� ���');
        form1.variantslist.Items.Add('��������� �������');
        form1.variantslist.Items.Add('���� �� �������');
        form1.variantslist.Items.Add('������ � ����');
      end;
      4:begin//����������� ����������
        form1.variantslist.Items.Add('�����');
        form1.variantslist.Items.Add('����� � ��������������');
        form1.variantslist.Items.Add('����������� �����������');
        form1.variantslist.Items.Add('������� ���������');
        form1.variantslist.Items.Add('����������� �� ������������ �������');
        form1.variantslist.Items.Add('����������� �����');
        form1.variantslist.Items.Add('������ ����������');
        form1.variantslist.Items.Add('�������������� ��������');
        form1.variantslist.Items.Add('��������� �� ������ �������');
        form1.variantslist.Items.Add('�����');
        form1.variantslist.Items.Add('����� ����');
        form1.variantslist.Items.Add('�������������');
        form1.variantslist.Items.Add('������������� ���������');
        form1.variantslist.Items.Add('�����������');
        form1.variantslist.Items.Add('������ ����');
        form1.variantslist.Items.Add('����� ��������');
        form1.variantslist.Items.Add('������� � ��������� ������������');
        form1.variantslist.Items.Add('����������� �� ������ �������');
        form1.variantslist.Items.Add('�������� ������� �����/�������');
        form1.variantslist.Items.Add('����������� �������');
        form1.variantslist.Items.Add('����������� (�����) �������');
        form1.variantslist.Items.Add('�������� ����������');
        form1.variantslist.Items.Add('�����');
      end;
      5:begin//������� ����������
        form1.variantslist.Items.Add('����������');
        form1.variantslist.Items.Add('������ � �����');
        form1.variantslist.Items.Add('����������� ����� ��������');
        form1.variantslist.Items.Add('�������');
        form1.variantslist.Items.Add('����������� ��������');
        form1.variantslist.Items.Add('������ ��������');
      end;
      6:begin//�������
        form1.variantslist.Items.Add('�������� ������� �������');
        form1.variantslist.Items.Add('������� �������� �����');
        form1.variantslist.Items.Add('�������� �� �������');
        form1.variantslist.Items.Add('���������� ������� ������');
        form1.variantslist.Items.Add('����');
        form1.variantslist.Items.Add('��������� � �����');
        form1.variantslist.Items.Add('������ � �����');
        form1.variantslist.Items.Add('����� �����');
        form1.variantslist.Items.Add('����� � ������');
        form1.variantslist.Items.Add('����� � ���������');
        form1.variantslist.Items.Add('�����');
        form1.variantslist.Items.Add('����������� ������');
        form1.variantslist.Items.Add('������ ������� ������� �����');
        form1.variantslist.Items.Add('����������� � ������������/�������');
        form1.variantslist.Items.Add('����� ����� ����');
        form1.variantslist.Items.Add('������ � ������');
        form1.variantslist.Items.Add('������������ ������');
        form1.variantslist.Items.Add('���� ������������');
        form1.variantslist.Items.Add('����� �������� � ����');
        form1.variantslist.Items.Add('�����������');
        form1.variantslist.Items.Add('�����');
        form1.variantslist.Items.Add('������� ������');
        form1.variantslist.Items.Add('�������� ����������');
        form1.variantslist.Items.Add('�������� �����');
        form1.variantslist.Items.Add('������� �����');
        form1.variantslist.Items.Add('����� ��������');
        form1.variantslist.Items.Add('������������� � ���� ����������');
        form1.variantslist.Items.Add('�������������');
        form1.variantslist.Items.Add('����������� �����');
        form1.variantslist.Items.Add('��������� �������');
        form1.variantslist.Items.Add('��������� ��������');
        form1.variantslist.Items.Add('����� ������ ������ �������');
        form1.variantslist.Items.Add('�������� ���������/������');
        form1.variantslist.Items.Add('�������� � ��������');
        form1.variantslist.Items.Add('������������ �������');
        form1.variantslist.Items.Add('��������� ������ ����������');
        form1.variantslist.Items.Add('��������� � �����');
        form1.variantslist.Items.Add('������� �������� �����');
        form1.variantslist.Items.Add('������ ������������ ������� ��������');
        form1.variantslist.Items.Add('�������� ������� ���������� ����');
        form1.variantslist.Items.Add('�������� � ��������');
        form1.variantslist.Items.Add('������ � �����');
        form1.variantslist.Items.Add('���������� ����� � ����������� ������');
        form1.variantslist.Items.Add('����� �� ��������');
      end;
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
