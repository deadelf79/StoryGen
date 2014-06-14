object FilePathAssociations: TFilePathAssociations
  Left = 0
  Top = 0
  Caption = #1040#1089#1089#1086#1094#1080#1080#1088#1086#1074#1072#1085#1080#1077' '#1087#1091#1090#1077#1081' '#1080' '#1092#1072#1081#1083#1086#1074
  ClientHeight = 301
  ClientWidth = 437
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 437
    Height = 51
    Align = alTop
    Caption = 'These form never show to user and uses for debug.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
    ExplicitWidth = 432
  end
  object keys: TValueListEditor
    Left = 0
    Top = 51
    Width = 437
    Height = 250
    Align = alClient
    KeyOptions = [keyEdit, keyAdd]
    TabOrder = 0
    TitleCaptions.Strings = (
      'File name'
      'Absolute path to file')
    ColWidths = (
      112
      319)
  end
end
