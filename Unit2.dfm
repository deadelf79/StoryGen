object GenreForm: TGenreForm
  Left = 192
  Top = 124
  BorderStyle = bsToolWindow
  Caption = #1042#1099#1073#1086#1088' '#1096#1072#1073#1083#1086#1085#1072
  ClientHeight = 260
  ClientWidth = 447
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
  object LeftPanel: TPanel
    Left = 0
    Top = 35
    Width = 185
    Height = 200
    Align = alLeft
    Caption = 'LeftPanel'
    TabOrder = 0
    object genrelist: TListBox
      Left = 1
      Top = 1
      Width = 183
      Height = 198
      Align = alClient
      ItemHeight = 13
      Items.Strings = (
        #1044#1077#1090#1077#1082#1090#1080#1074
        #1050#1080#1073#1077#1088#1087#1072#1085#1082
        #1051#1102#1073#1086#1074#1085#1099#1081' '#1088#1086#1084#1072#1085
        #1056#1086#1084#1072#1085' '#1091#1078#1072#1089#1086#1074
        #1060#1072#1085#1090#1072#1089#1090#1080#1082#1072' ('#1082#1086#1089#1084#1080#1095#1077#1089#1082#1072#1103')'
        #1060#1072#1085#1090#1072#1089#1090#1080#1082#1072' ('#1085#1072#1091#1095#1085#1072#1103')'
        #1060#1101#1085#1090#1077#1079#1080)
      Sorted = True
      TabOrder = 0
    end
  end
  object UserFilePanel: TPanel
    Left = 185
    Top = 35
    Width = 262
    Height = 200
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 260
      Height = 173
      Align = alClient
      Caption = #1055#1086#1089#1083#1077#1076#1085#1080#1077' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1085#1099#1077':'
      Enabled = False
      TabOrder = 0
      object last_files: TListBox
        Left = 2
        Top = 15
        Width = 256
        Height = 156
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemHeight = 13
        ParentFont = False
        TabOrder = 0
      end
    end
    object LoadFile: TButton
      Left = 1
      Top = 174
      Width = 260
      Height = 25
      Align = alBottom
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1085#1086#1074#1099#1081'...'
      Enabled = False
      TabOrder = 1
      OnClick = LoadFileClick
    end
  end
  object OkCancelPanel: TPanel
    Left = 0
    Top = 235
    Width = 447
    Height = 25
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Ok: TButton
      Left = 1
      Top = 1
      Width = 75
      Height = 23
      Align = alLeft
      Caption = #1054#1082
      TabOrder = 0
      OnClick = OkClick
    end
    object Button2: TButton
      Left = 371
      Top = 1
      Width = 75
      Height = 23
      Align = alRight
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object SelectGenreLoader: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 35
    Align = alTop
    TabOrder = 3
    object RadioGroup1: TRadioGroup
      Left = 1
      Top = 1
      Width = 370
      Height = 33
      Align = alClient
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #1042#1089#1090#1088#1086#1077#1085#1085#1099#1077
        #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100#1089#1082#1080#1077)
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
    object BitBtn1: TBitBtn
      Left = 371
      Top = 1
      Width = 75
      Height = 33
      Hint = 
        #1053#1072#1078#1084#1080#1090#1077', '#1077#1089#1083#1080' '#1091' '#1074#1072#1089' '#1085#1077#1087#1088#1072#1074#1080#1083#1100#1085#1086' '#1086#1090#1086#1073#1088#1072#1078#1072#1077#1090#1089#1103' '#1090#1077#1082#1089#1090' '#1074' '#1089#1087#1080#1089#1082#1077' '#1089#1086#1073#1099 +
        #1090#1080#1081
      Align = alRight
      Caption = #1055#1086#1084#1086#1097#1100
      Kind = bkHelp
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
end
