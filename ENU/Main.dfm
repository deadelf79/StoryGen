object MainForm: TMainForm
  Left = 151
  Top = 117
  BorderStyle = bsSingle
  Caption = 'Story Generator'
  ClientHeight = 424
  ClientWidth = 644
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 209
    Height = 424
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object Button1: TButton
      Left = 0
      Top = 0
      Width = 209
      Height = 25
      Align = alTop
      Caption = 'Load from Templates...'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 0
      Top = 212
      Width = 209
      Height = 25
      Align = alTop
      Caption = 'Delete event'
      TabOrder = 1
      OnClick = Button2Click
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 25
      Width = 209
      Height = 187
      Align = alTop
      Caption = 'Available events:'
      TabOrder = 2
      object variantslist: TListBox
        Left = 2
        Top = 15
        Width = 205
        Height = 170
        Align = alClient
        ItemHeight = 13
        TabOrder = 0
      end
    end
    object Edit1: TEdit
      Left = 0
      Top = 237
      Width = 209
      Height = 21
      Align = alTop
      TabOrder = 3
      Text = 'Event text'
      TextHint = 'Type your text here'
    end
    object Button3: TButton
      Left = 0
      Top = 258
      Width = 209
      Height = 25
      Align = alTop
      Caption = 'Add event to list'
      TabOrder = 4
      OnClick = Button3Click
    end
    object GroupBox2: TGroupBox
      Left = 0
      Top = 283
      Width = 209
      Height = 69
      Align = alTop
      Caption = 'Events in story:'
      TabOrder = 5
      object Label1: TLabel
        Left = 8
        Top = 48
        Width = 87
        Height = 13
        Caption = 'Now select:'
      end
      object Label2: TLabel
        Left = 64
        Top = 48
        Width = 30
        Height = 13
        Caption = 'num'
      end
      object ScrollBar1: TScrollBar
        Left = 8
        Top = 24
        Width = 121
        Height = 17
        Align = alCustom
        Max = 30
        Min = 3
        PageSize = 0
        Position = 3
        TabOrder = 0
        OnChange = ScrollBar1Change
      end
    end
    object StartGenerator: TButton
      Left = 0
      Top = 352
      Width = 209
      Height = 25
      Align = alTop
      Caption = 'Start'
      Enabled = False
      TabOrder = 6
      OnClick = StartGeneratorClick
    end
    object Panel4: TPanel
      Left = 0
      Top = 377
      Width = 209
      Height = 47
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 7
      object Label3: TLabel
        Left = 3
        Top = 10
        Width = 128
        Height = 13
        Caption = 'About this program'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = Label3Click
        OnMouseEnter = Label3MouseEnter
        OnMouseLeave = Label3MouseLeave
      end
      object Edit2: TEdit
        AlignWithMargins = True
        Left = 3
        Top = 29
        Width = 203
        Height = 15
        Hint = 'Go to developer'#39's blog'
        Align = alBottom
        BevelOuter = bvNone
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = 'http://deadelf79.blogspot.ru/'
        OnClick = Edit2Click
        OnMouseEnter = Edit2MouseEnter
        OnMouseLeave = Edit2MouseLeave
      end
    end
  end
  object GeneratorPages: TPageControl
    Left = 209
    Top = 0
    Width = 435
    Height = 424
    ActivePage = Story
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Story: TTabSheet
      Caption = 'Story'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 427
        Height = 396
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel2'
        TabOrder = 0
        object Panel3: TPanel
          Left = 0
          Top = 362
          Width = 427
          Height = 34
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          object BitBtn1: TBitBtn
            Left = 331
            Top = 0
            Width = 96
            Height = 34
            Align = alRight
            Caption = '&Help'
            Kind = bkHelp
            NumGlyphs = 2
            TabOrder = 0
            OnClick = BitBtn1Click
          end
          object SaveAs: TBitBtn
            Left = 219
            Top = 0
            Width = 112
            Height = 34
            Align = alRight
            Caption = 'Export'
            Enabled = False
            Kind = bkOK
            NumGlyphs = 2
            TabOrder = 1
          end
          object EnableEditor: TCheckBox
            Left = 0
            Top = 0
            Width = 97
            Height = 34
            Align = alLeft
            Caption = 'Editable'
            TabOrder = 2
            OnClick = EnableEditorClick
          end
        end
        object MyStory: TRichEdit
          Left = 0
          Top = 27
          Width = 427
          Height = 335
          Align = alClient
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Lines.Strings = (
            #1048#1085#1089#1090#1088#1091#1082#1094#1080#1103':'
            '0'
            
              '   '#1042#1099#1073#1077#1088#1080#1090#1077' '#1085#1091#1078#1085#1099#1081' '#1074#1072#1084' '#1078#1072#1085#1088' '#1087#1086' '#1085#1072#1078#1072#1090#1080#1102' '#1082#1085#1086#1087#1082#1080' "'#1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1096#1072#1073#1083#1086#1085'"' +
              ', '#1074' '
            
              #1089#1087#1080#1089#1082#1077' '#1074#1072#1088#1080#1072#1085#1090#1086#1074' '#1089#1086#1073#1099#1090#1080#1081' '#1089#1088#1072#1079#1091' '#1087#1086#1103#1074#1090#1089#1103' '#1074#1089#1077' '#1076#1086#1089#1090#1091#1087#1085#1099#1077' '#1074#1072#1088#1080#1072#1085#1090#1099' '#1089#1086 +
              #1073#1099#1090#1080#1081'. '
            
              '   '#1045#1089#1083#1080' '#1074#1099' '#1093#1086#1090#1080#1090#1077', '#1095#1090#1086#1073#1099' '#1082#1072#1082#1086#1077'-'#1083#1080#1073#1086' '#1089#1086#1073#1099#1090#1080#1077' '#1085#1077' '#1087#1086#1103#1074#1083#1103#1083#1086#1089#1100' '#1085#1080#1082#1086#1075#1076 +
              #1072', '#1074#1072#1084' '
            
              #1085#1091#1078#1085#1086' '#1074#1099#1073#1088#1072#1090#1100' '#1101#1090#1086' '#1089#1086#1073#1099#1090#1080#1077' '#1074' '#1089#1087#1080#1089#1082#1077' '#1074#1072#1088#1080#1072#1085#1090#1086#1074' '#1080' '#1085#1072#1078#1072#1090#1100' '#1082#1085#1086#1087#1082#1091' "'#1059#1076 +
              #1072#1083#1080#1090#1100' '
            #1074#1072#1088#1080#1072#1085#1090'".'
            
              '   '#1045#1089#1083#1080' '#1078#1077' '#1074#1072#1084' '#1085#1091#1078#1085#1086' '#1076#1086#1073#1072#1074#1080#1090#1100' '#1089#1074#1086#1081' '#1074#1072#1088#1080#1072#1085#1090', '#1074#1074#1077#1076#1080#1090#1077' '#1090#1077#1082#1089#1090' '#1074' '#1087#1086#1083#1077 +
              ' "'#1058#1077#1082#1089#1090' '
            
              #1074#1072#1088#1080#1072#1085#1090#1072'" '#1080' '#1085#1072#1078#1084#1080#1090#1077' '#1082#1085#1086#1087#1082#1091' "'#1044#1086#1073#1072#1074#1080#1090#1100' '#1074#1072#1088#1080#1072#1085#1090'", '#1086#1085' '#1087#1086#1103#1074#1080#1090#1089#1103' '#1074' '#1089#1087#1080 +
              #1089#1082#1077'.'
            
              '   '#1042#1089#1077' '#1080#1089#1090#1086#1088#1080#1080' '#1085#1072#1095#1080#1085#1072#1102#1090#1089#1103' '#1089' '#1089#1086#1073#1099#1090#1080#1103' "'#1047#1072#1074#1103#1079#1082#1072'" '#1080' '#1079#1072#1082#1072#1085#1095#1080#1074#1072#1102#1090#1089#1103' '#1089#1086 +
              #1073#1099#1090#1080#1103#1084#1080' '
            
              '"'#1056#1072#1079#1074#1103#1079#1082#1072'" '#1080' "'#1069#1087#1080#1083#1086#1075'". '#1053#1072#1083#1080#1095#1080#1077' '#1101#1087#1080#1083#1086#1075#1072' '#1074' '#1074#1072#1096#1077#1084' '#1088#1072#1089#1089#1082#1072#1079#1077'/'#1088#1086#1084#1072#1085#1077' '#1087 +
              #1088#1080' '#1101#1090#1086#1084' '
            #1089#1086#1074#1077#1088#1096#1077#1085#1085#1086' '#1085#1077' '#1086#1073#1103#1079#1072#1090#1077#1083#1100#1085#1086'.'
            
              '   '#1042#1077#1088#1086#1103#1090#1085#1086#1089#1090#1100' '#1087#1086#1103#1074#1083#1077#1085#1080#1103' '#1083#1102#1073#1086#1075#1086' '#1089#1086#1073#1099#1090#1080#1103' '#1080#1079' '#1089#1087#1080#1089#1082#1072' '#1074#1072#1088#1080#1072#1085#1090#1086#1074' '#1088#1072#1074#1085 +
              #1103#1077#1090#1089#1103' '
            
              '1/'#1095#1080#1089#1083#1086' '#1074#1072#1088#1080#1072#1085#1090#1086#1074'. '#1042#1072#1088#1080#1072#1085#1090#1099' '#1074#1099#1073#1080#1088#1072#1102#1090#1089#1103' '#1089#1083#1091#1095#1072#1081#1085#1099#1084' '#1086#1073#1088#1072#1079#1086#1084' '#1089' '#1086#1076#1085#1080#1084 +
              ' '#1083#1080#1096#1100' '
            
              #1091#1089#1083#1086#1074#1080#1077#1084' - '#1082#1072#1078#1076#1099#1081' '#1089#1083#1077#1076#1091#1102#1097#1080#1081' '#1074#1072#1088#1080#1072#1085#1090' '#1085#1077' '#1076#1086#1083#1078#1077#1085' '#1087#1086#1074#1090#1086#1088#1103#1090#1100' '#1087#1088#1077#1076#1099#1076#1091#1097 +
              #1080#1081'. '
            #1058#1077#1084' '#1085#1077' '#1084#1077#1085#1077#1077', '#1087#1086#1074#1090#1086#1088#1077#1085#1080#1077' '#1089#1086#1073#1099#1090#1080#1103' '#1074' '#1090#1077#1095#1077#1085#1080#1077' '#1089#1102#1078#1077#1090#1072' '#1074#1086#1079#1084#1086#1078#1085#1086'.'
            '   '#1042#1099' '#1084#1086#1078#1077#1090#1077' '#1080#1079#1084#1077#1085#1080#1090#1100' '#1088#1072#1079#1084#1077#1088' '#1075#1077#1085#1077#1088#1080#1088#1091#1077#1084#1086#1075#1086' '#1089#1102#1078#1077#1090#1072' '#1089' '#1087#1086#1084#1086#1097#1100#1102' '
            
              #1091#1074#1077#1083#1080#1095#1077#1085#1080#1103' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072' '#1089#1086#1073#1099#1090#1080#1081'. '#1052#1080#1085#1080#1084#1072#1083#1100#1085#1086#1077' '#1095#1080#1089#1083#1086' '#1089#1086#1073#1099#1090#1080#1081', '#1086#1073#1088#1072#1079#1091 +
              #1102#1097#1080#1093' '
            #1089#1102#1078#1077#1090' - 3, '#1084#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1077' - 30.')
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssBoth
          TabOrder = 1
          WantTabs = True
        end
        object editoroptions: TPanel
          Left = 0
          Top = 0
          Width = 427
          Height = 27
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Visible = False
          object Bold: TButton
            Left = 1
            Top = 1
            Width = 39
            Height = 25
            Hint = 'Bold'
            Align = alLeft
            Caption = 'B'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ImageIndex = 31
            ParentFont = False
            TabOrder = 0
            TabStop = False
            OnClick = BoldClick
          end
          object Italic: TButton
            Left = 40
            Top = 1
            Width = 41
            Height = 25
            Align = alLeft
            Caption = 'I'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = [fsItalic]
            ParentFont = False
            TabOrder = 1
            OnClick = ItalicClick
          end
        end
      end
    end
    object Chars: TTabSheet
      Caption = 'Characters'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
  object XPManifest1: TXPManifest
    Left = 592
    Top = 296
  end
  object Manager: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = FormatRichEditBold2
            ImageIndex = 31
            ShortCut = 16450
          end
          item
            Action = FormatRichEditItalic1
            ImageIndex = 29
            ShortCut = 16457
          end
          item
            Action = FormatRichEditUnderline1
            ImageIndex = 28
            ShortCut = 16469
          end
          item
            Action = FormatRichEditStrikeOut1
            ImageIndex = 44
          end
          item
            Action = FormatRichEditBullets1
            Caption = 'Bu&llets'
            ImageIndex = 38
          end
          item
            Action = FormatRichEditAlignLeft1
            Caption = '&Align Left'
            ImageIndex = 35
          end
          item
            Action = FormatRichEditAlignCenter1
            ImageIndex = 37
          end
          item
            Action = FormatRichEditAlignRight1
            ImageIndex = 36
          end>
      end>
    State = asSuspended
    Left = 253
    Top = 336
    StyleName = 'Platform Default'
    object FormatRichEditBold2: TRichEditBold
      Category = 'Format'
      AutoCheck = True
      Caption = '&Bold'
      Hint = 'Bold'
      ImageIndex = 31
      ShortCut = 16450
    end
    object FormatRichEditItalic1: TRichEditItalic
      Category = 'Format'
      AutoCheck = True
      Caption = '&Italic'
      Hint = 'Italic'
      ImageIndex = 29
      ShortCut = 16457
    end
    object FormatRichEditUnderline1: TRichEditUnderline
      Category = 'Format'
      AutoCheck = True
      Caption = '&Underline'
      Hint = 'Underline'
      ImageIndex = 28
      ShortCut = 16469
    end
    object FormatRichEditStrikeOut1: TRichEditStrikeOut
      Category = 'Format'
      AutoCheck = True
      Caption = '&Strikeout'
      Hint = 'Strikeout'
      ImageIndex = 44
    end
    object FormatRichEditBullets1: TRichEditBullets
      Category = 'Format'
      AutoCheck = True
      Caption = '&Bullets'
      Hint = 'Bullets|Inserts a bullet on the current line'
      ImageIndex = 38
    end
    object FormatRichEditAlignLeft1: TRichEditAlignLeft
      Category = 'Format'
      AutoCheck = True
      Caption = 'Align &Left'
      Hint = 'Align Left|Aligns text at the left indent'
      ImageIndex = 35
    end
    object FormatRichEditAlignRight1: TRichEditAlignRight
      Category = 'Format'
      AutoCheck = True
      Caption = 'Align &Right'
      Hint = 'Align Right|Aligns text at the right indent'
      ImageIndex = 36
    end
    object FormatRichEditAlignCenter1: TRichEditAlignCenter
      Category = 'Format'
      AutoCheck = True
      Caption = '&Center'
      Hint = 'Center|Centers text between margins'
      ImageIndex = 37
    end
  end
end
