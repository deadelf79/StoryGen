object Form2: TForm2
  Left = 192
  Top = 124
  BorderStyle = bsToolWindow
  Caption = #1042#1099#1073#1086#1088' '#1096#1072#1073#1083#1086#1085#1072
  ClientHeight = 159
  ClientWidth = 168
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object genrelist: TListBox
    Left = 0
    Top = 0
    Width = 161
    Height = 129
    ItemHeight = 13
    Items.Strings = (
      #1044#1077#1090#1077#1082#1090#1080#1074
      #1050#1080#1073#1077#1088#1087#1072#1085#1082
      #1056#1086#1084#1072#1085' '#1087#1088#1086' '#1083#1102#1073#1086#1074#1100
      #1056#1086#1084#1072#1085' '#1091#1078#1072#1089#1086#1074
      #1060#1072#1085#1090#1072#1089#1090#1080#1082#1072' ('#1082#1086#1089#1084#1080#1095#1077#1089#1082#1072#1103')'
      #1060#1072#1085#1090#1072#1089#1090#1080#1082#1072' ('#1085#1072#1091#1095#1085#1072#1103')'
      #1060#1101#1085#1090#1101#1079#1080)
    TabOrder = 0
  end
  object Button1: TButton
    Left = 0
    Top = 128
    Width = 75
    Height = 25
    Caption = #1054#1082
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 80
    Top = 128
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    OnClick = Button2Click
  end
end
