object Statistics: TStatistics
  Left = 0
  Top = 0
  Caption = #1054#1073#1097#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
  ClientHeight = 275
  ClientWidth = 366
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object OkCancelPanel: TPanel
    Left = 0
    Top = 248
    Width = 366
    Height = 27
    Align = alBottom
    TabOrder = 0
    object Ok: TButton
      Left = 1
      Top = 1
      Width = 75
      Height = 25
      Align = alLeft
      Caption = #1054#1082
      ModalResult = 1
      TabOrder = 0
    end
  end
  object info: TValueListEditor
    Left = 0
    Top = 0
    Width = 366
    Height = 248
    Align = alClient
    Ctl3D = False
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
    ParentCtl3D = False
    ScrollBars = ssVertical
    Strings.Strings = (
      #1056#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082'=DeadElf79'
      #1042#1077#1088#1089#1080#1103'=1.0.4'
      #1041#1083#1086#1075' '#1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082#1072'=http://deadelf79.blogspot.ru/'
      #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1074#1086#1079#1084#1086#1078#1085#1099#1093' '#1089#1086#1073#1099#1090#1080#1081'=<0>'
      #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1074#1089#1090#1088#1086#1077#1085#1085#1099#1093' '#1078#1072#1085#1088#1086#1074'=7')
    TabOrder = 1
    TitleCaptions.Strings = (
      #1050#1072#1090#1077#1075#1086#1088#1080#1103
      #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103)
    ColWidths = (
      176
      186)
  end
end
