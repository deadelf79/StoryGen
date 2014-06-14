object MainForm: TMainForm
  Left = 151
  Top = 117
  Caption = #1043#1077#1085#1077#1088#1072#1090#1086#1088' '#1089#1102#1078#1077#1090#1072
  ClientHeight = 441
  ClientWidth = 928
  Color = clBtnFace
  Constraints.MinHeight = 480
  Constraints.MinWidth = 640
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
  object StoryMakerPanel: TPanel
    Left = 0
    Top = 0
    Width = 200
    Height = 441
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object LoadFromTemplate: TButton
      Left = 0
      Top = 0
      Width = 200
      Height = 25
      Align = alTop
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1080#1079' '#1096#1072#1073#1083#1086#1085#1072
      TabOrder = 0
      OnClick = LoadFromTemplateClick
    end
    object DeleteEvent: TButton
      Left = 0
      Top = 212
      Width = 200
      Height = 25
      Align = alTop
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1074#1072#1088#1080#1072#1085#1090
      Enabled = False
      TabOrder = 1
      OnClick = DeleteEventClick
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 25
      Width = 200
      Height = 187
      Align = alTop
      Caption = #1042#1072#1088#1080#1072#1085#1090#1099' '#1089#1086#1073#1099#1090#1080#1081':'
      TabOrder = 2
      object variantslist: TListBox
        Left = 2
        Top = 15
        Width = 196
        Height = 170
        Align = alClient
        ItemHeight = 13
        MultiSelect = True
        TabOrder = 0
        OnClick = variantslistClick
      end
    end
    object Edit1: TEdit
      Left = 0
      Top = 237
      Width = 200
      Height = 21
      Align = alTop
      TabOrder = 3
      Text = #1058#1077#1082#1089#1090' '#1074#1072#1088#1080#1072#1085#1090#1072
      TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1089#1074#1086#1081' '#1090#1077#1082#1089#1090
    end
    object AddNewEvent: TButton
      Left = 0
      Top = 258
      Width = 200
      Height = 25
      Align = alTop
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074#1072#1088#1080#1072#1085#1090
      TabOrder = 4
      OnClick = AddNewEventClick
    end
    object GroupBox2: TGroupBox
      Left = 0
      Top = 283
      Width = 200
      Height = 54
      Align = alTop
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1086#1073#1099#1090#1080#1081':'
      TabOrder = 5
      object ScrollBar1: TScrollBar
        Left = 2
        Top = 15
        Width = 196
        Height = 17
        Align = alTop
        Max = 30
        Min = 3
        PageSize = 0
        Position = 3
        TabOrder = 0
        OnChange = ScrollBar1Change
      end
      object Panel5: TPanel
        Left = 2
        Top = 32
        Width = 196
        Height = 17
        Align = alTop
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 1
        object Label2: TLabel
          Left = 87
          Top = 0
          Width = 30
          Height = 17
          Align = alLeft
          Caption = #1085#1086#1084#1077#1088
          ExplicitHeight = 13
        end
        object Label1: TLabel
          Left = 0
          Top = 0
          Width = 87
          Height = 17
          Align = alLeft
          Caption = #1057#1077#1081#1095#1072#1089' '#1074#1099#1073#1088#1072#1085#1086':'
          ExplicitHeight = 13
        end
      end
    end
    object StartGenerator: TButton
      Left = 0
      Top = 337
      Width = 200
      Height = 25
      Align = alTop
      Caption = #1047#1072#1087#1091#1089#1090#1080#1090#1100' '#1075#1077#1085#1077#1088#1072#1090#1086#1088
      Enabled = False
      TabOrder = 6
      OnClick = StartGeneratorClick
    end
    object Panel4: TPanel
      Left = 0
      Top = 362
      Width = 200
      Height = 79
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 7
      object Label3: TLabel
        Left = 3
        Top = 10
        Width = 128
        Height = 13
        Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
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
        Top = 61
        Width = 194
        Height = 15
        Hint = #1055#1077#1088#1077#1081#1090#1080' '#1085#1072' '#1089#1090#1088#1072#1085#1080#1094#1091' '#1073#1083#1086#1075#1072' '#1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082#1072
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
    Left = 400
    Top = 0
    Width = 528
    Height = 441
    ActivePage = Towns
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnChange = GeneratorPagesChange
    object Story: TTabSheet
      Caption = #1057#1086#1073#1099#1090#1080#1103
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 520
        Height = 413
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel2'
        TabOrder = 0
        object Panel3: TPanel
          Left = 0
          Top = 379
          Width = 520
          Height = 34
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          object BitBtn1: TBitBtn
            Left = 424
            Top = 0
            Width = 96
            Height = 34
            Align = alRight
            Caption = #1057#1087#1088#1072#1074#1082#1072
            Kind = bkHelp
            NumGlyphs = 2
            TabOrder = 0
            OnClick = BitBtn1Click
          end
          object SaveAs: TBitBtn
            Left = 312
            Top = 0
            Width = 112
            Height = 34
            Align = alRight
            Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
            Default = True
            Enabled = False
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333333333333330000333333333333333333333333F33333333333
              00003333344333333333333333388F3333333333000033334224333333333333
              338338F3333333330000333422224333333333333833338F3333333300003342
              222224333333333383333338F3333333000034222A22224333333338F338F333
              8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
              33333338F83338F338F33333000033A33333A222433333338333338F338F3333
              0000333333333A222433333333333338F338F33300003333333333A222433333
              333333338F338F33000033333333333A222433333333333338F338F300003333
              33333333A222433333333333338F338F00003333333333333A22433333333333
              3338F38F000033333333333333A223333333333333338F830000333333333333
              333A333333333333333338330000333333333333333333333333333333333333
              0000}
            NumGlyphs = 2
            TabOrder = 1
          end
          object EnableEditor: TCheckBox
            Left = 0
            Top = 0
            Width = 97
            Height = 34
            Align = alLeft
            Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
            TabOrder = 2
            OnClick = EnableEditorClick
          end
        end
        object MyStory: TRichEdit
          AlignWithMargins = True
          Left = 1
          Top = 30
          Width = 518
          Height = 346
          Margins.Left = 1
          Margins.Right = 1
          Align = alClient
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Lines.Strings = (
            #1048#1085#1089#1090#1088#1091#1082#1094#1080#1103':'
            '----------------'
            
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
          Width = 520
          Height = 27
          Align = alTop
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Visible = False
          object Bold: TButton
            Left = 0
            Top = 0
            Width = 39
            Height = 27
            Hint = #1057#1076#1077#1083#1072#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1081' '#1090#1077#1082#1089#1090' '#1087#1086#1083#1091#1078#1080#1088#1085#1099#1084' '#1080#1083#1080' '#1086#1090#1084#1077#1085#1080#1090#1100' '#1101#1092#1092#1077#1082#1090
            Align = alLeft
            Caption = 'B'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ImageIndex = 31
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TabStop = False
            OnClick = BoldClick
          end
          object Italic: TButton
            Left = 39
            Top = 0
            Width = 39
            Height = 27
            Hint = #1057#1076#1077#1083#1072#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1081' '#1090#1077#1082#1089#1090' '#1082#1091#1088#1089#1080#1074#1085#1099#1084' '#1080#1083#1080' '#1086#1090#1084#1077#1085#1080#1090#1100' '#1101#1092#1092#1077#1082#1090
            Align = alLeft
            Caption = 'I'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = [fsItalic]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = ItalicClick
          end
          object Underline: TButton
            Left = 78
            Top = 0
            Width = 39
            Height = 27
            Hint = #1057#1076#1077#1083#1072#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1081' '#1090#1077#1082#1089#1090' '#1087#1086#1076#1095#1077#1088#1082#1085#1091#1090#1099#1084' '#1080#1083#1080' '#1086#1090#1084#1077#1085#1080#1090#1100' '#1101#1092#1092#1077#1082#1090
            Align = alLeft
            Caption = 'U'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = [fsUnderline]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = UnderlineClick
          end
          object Strike: TButton
            Left = 117
            Top = 0
            Width = 39
            Height = 27
            Hint = #1057#1076#1077#1083#1072#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1081' '#1090#1077#1082#1089#1090' '#1079#1072#1095#1077#1088#1082#1085#1091#1090#1099#1084' '#1080#1083#1080' '#1086#1090#1084#1077#1085#1080#1090#1100' '#1101#1092#1092#1077#1082#1090
            Align = alLeft
            Caption = ' S '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = [fsStrikeOut]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = StrikeClick
          end
        end
      end
    end
    object Chars: TTabSheet
      Caption = #1055#1077#1088#1089#1086#1085#1072#1078#1080
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
    object Towns: TTabSheet
      Caption = #1043#1086#1088#1086#1076#1072
      ImageIndex = 2
    end
  end
  object CharaMakerPanel: TPanel
    Left = 200
    Top = 0
    Width = 200
    Height = 441
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 2
    Visible = False
    object GroupBox3: TGroupBox
      Left = 0
      Top = 100
      Width = 200
      Height = 50
      Align = alTop
      Caption = #1048#1085#1090#1091#1080#1094#1080#1103
      TabOrder = 0
      object Panel1: TPanel
        Left = 2
        Top = 15
        Width = 196
        Height = 36
        Align = alTop
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 0
        object Label4: TLabel
          Left = 0
          Top = 35
          Width = 99
          Height = 1
          Align = alLeft
          Caption = #1058#1077#1082#1091#1097#1077#1077' '#1079#1085#1072#1095#1077#1085#1080#1077':'
          ExplicitHeight = 13
        end
        object Label5: TLabel
          Left = 99
          Top = 35
          Width = 25
          Height = 1
          Align = alLeft
          Caption = 'some'
          ExplicitLeft = 98
          ExplicitHeight = 13
        end
        object ScrollBar3: TScrollBar
          Left = 0
          Top = 0
          Width = 196
          Height = 17
          Align = alTop
          Max = 10
          Min = 1
          PageSize = 0
          Position = 5
          TabOrder = 0
        end
        object Panel6: TPanel
          Left = 0
          Top = 17
          Width = 196
          Height = 18
          Align = alTop
          AutoSize = True
          BevelOuter = bvNone
          TabOrder = 1
          object Label6: TLabel
            Left = 0
            Top = 0
            Width = 99
            Height = 18
            Align = alLeft
            Caption = #1058#1077#1082#1091#1097#1077#1077' '#1079#1085#1072#1095#1077#1085#1080#1077':'
            ExplicitHeight = 13
          end
          object Label7: TLabel
            Left = 99
            Top = 0
            Width = 25
            Height = 18
            Align = alLeft
            Caption = 'some'
            ExplicitLeft = 98
            ExplicitHeight = 13
          end
        end
      end
    end
    object GroupBox4: TGroupBox
      Left = 0
      Top = 150
      Width = 200
      Height = 50
      Align = alTop
      Caption = #1048#1085#1076#1080#1074#1080#1076#1091#1072#1083#1100#1085#1086#1089#1090#1100
      TabOrder = 1
      object Panel7: TPanel
        Left = 2
        Top = 15
        Width = 196
        Height = 36
        Align = alTop
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 0
        object Label8: TLabel
          Left = 0
          Top = 35
          Width = 99
          Height = 1
          Align = alLeft
          Caption = #1058#1077#1082#1091#1097#1077#1077' '#1079#1085#1072#1095#1077#1085#1080#1077':'
          ExplicitHeight = 13
        end
        object Label9: TLabel
          Left = 99
          Top = 35
          Width = 25
          Height = 1
          Align = alLeft
          Caption = 'some'
          ExplicitLeft = 98
          ExplicitHeight = 13
        end
        object ScrollBar2: TScrollBar
          Left = 0
          Top = 0
          Width = 196
          Height = 17
          Align = alTop
          Max = 10
          Min = 1
          PageSize = 0
          Position = 5
          TabOrder = 0
        end
        object Panel8: TPanel
          Left = 0
          Top = 17
          Width = 196
          Height = 18
          Align = alTop
          AutoSize = True
          BevelOuter = bvNone
          TabOrder = 1
          object Label10: TLabel
            Left = 0
            Top = 0
            Width = 99
            Height = 18
            Align = alLeft
            Caption = #1058#1077#1082#1091#1097#1077#1077' '#1079#1085#1072#1095#1077#1085#1080#1077':'
            ExplicitHeight = 13
          end
          object Label11: TLabel
            Left = 99
            Top = 0
            Width = 25
            Height = 18
            Align = alLeft
            Caption = 'some'
            ExplicitLeft = 98
            ExplicitHeight = 13
          end
        end
      end
    end
    object GroupBox5: TGroupBox
      Left = 0
      Top = 50
      Width = 200
      Height = 50
      Align = alTop
      Caption = #1057#1080#1083#1072' '#1074#1086#1083#1080
      TabOrder = 2
      object Panel9: TPanel
        Left = 2
        Top = 15
        Width = 196
        Height = 36
        Align = alTop
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 0
        object Label12: TLabel
          Left = 0
          Top = 35
          Width = 99
          Height = 1
          Align = alLeft
          Caption = #1058#1077#1082#1091#1097#1077#1077' '#1079#1085#1072#1095#1077#1085#1080#1077':'
          ExplicitHeight = 13
        end
        object Label13: TLabel
          Left = 99
          Top = 35
          Width = 25
          Height = 1
          Align = alLeft
          Caption = 'some'
          ExplicitLeft = 98
          ExplicitHeight = 13
        end
        object ScrollBar4: TScrollBar
          Left = 0
          Top = 0
          Width = 196
          Height = 17
          Align = alTop
          Max = 10
          Min = 1
          PageSize = 0
          Position = 5
          TabOrder = 0
        end
        object Panel10: TPanel
          Left = 0
          Top = 17
          Width = 196
          Height = 18
          Align = alTop
          AutoSize = True
          BevelOuter = bvNone
          TabOrder = 1
          object Label14: TLabel
            Left = 0
            Top = 0
            Width = 99
            Height = 18
            Align = alLeft
            Caption = #1058#1077#1082#1091#1097#1077#1077' '#1079#1085#1072#1095#1077#1085#1080#1077':'
            ExplicitHeight = 13
          end
          object Label15: TLabel
            Left = 99
            Top = 0
            Width = 25
            Height = 18
            Align = alLeft
            Caption = 'some'
            ExplicitLeft = 98
            ExplicitHeight = 13
          end
        end
      end
    end
    object GroupBox6: TGroupBox
      Left = 0
      Top = 0
      Width = 200
      Height = 50
      Align = alTop
      Caption = #1048#1085#1090#1077#1083#1083#1077#1082#1090
      TabOrder = 3
      object Panel11: TPanel
        Left = 2
        Top = 15
        Width = 196
        Height = 36
        Align = alTop
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 0
        object Label16: TLabel
          Left = 0
          Top = 35
          Width = 99
          Height = 1
          Align = alLeft
          Caption = #1058#1077#1082#1091#1097#1077#1077' '#1079#1085#1072#1095#1077#1085#1080#1077':'
          ExplicitHeight = 13
        end
        object Label17: TLabel
          Left = 99
          Top = 35
          Width = 25
          Height = 1
          Align = alLeft
          Caption = 'some'
          ExplicitLeft = 98
          ExplicitHeight = 13
        end
        object IntelScroll: TScrollBar
          Left = 0
          Top = 0
          Width = 196
          Height = 17
          Align = alTop
          Max = 10
          Min = 1
          PageSize = 0
          Position = 5
          TabOrder = 0
          OnChange = IntelScrollChange
        end
        object Panel12: TPanel
          Left = 0
          Top = 17
          Width = 196
          Height = 18
          Align = alTop
          AutoSize = True
          BevelOuter = bvNone
          TabOrder = 1
          object Label18: TLabel
            Left = 0
            Top = 0
            Width = 99
            Height = 18
            Align = alLeft
            Caption = #1058#1077#1082#1091#1097#1077#1077' '#1079#1085#1072#1095#1077#1085#1080#1077':'
            ExplicitHeight = 13
          end
          object IntelLabel: TLabel
            Left = 99
            Top = 0
            Width = 25
            Height = 18
            Align = alLeft
            Caption = 'some'
            ExplicitLeft = 98
            ExplicitHeight = 13
          end
        end
      end
    end
    object GroupBox7: TGroupBox
      Left = 0
      Top = 250
      Width = 200
      Height = 50
      Align = alTop
      Caption = #1054#1090#1085#1086#1096#1077#1085#1080#1077' '#1082' '#1089#1077#1073#1077
      TabOrder = 4
      object Panel13: TPanel
        Left = 2
        Top = 15
        Width = 196
        Height = 36
        Align = alTop
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 0
        object Label20: TLabel
          Left = 0
          Top = 35
          Width = 99
          Height = 1
          Align = alLeft
          Caption = #1058#1077#1082#1091#1097#1077#1077' '#1079#1085#1072#1095#1077#1085#1080#1077':'
          ExplicitHeight = 13
        end
        object Label21: TLabel
          Left = 99
          Top = 35
          Width = 25
          Height = 1
          Align = alLeft
          Caption = 'some'
          ExplicitLeft = 98
          ExplicitHeight = 13
        end
        object ScrollBar6: TScrollBar
          Left = 0
          Top = 0
          Width = 196
          Height = 17
          Align = alTop
          Max = 10
          Min = 1
          PageSize = 0
          Position = 5
          TabOrder = 0
        end
        object Panel14: TPanel
          Left = 0
          Top = 17
          Width = 196
          Height = 18
          Align = alTop
          AutoSize = True
          BevelOuter = bvNone
          TabOrder = 1
          object Label22: TLabel
            Left = 0
            Top = 0
            Width = 99
            Height = 18
            Align = alLeft
            Caption = #1058#1077#1082#1091#1097#1077#1077' '#1079#1085#1072#1095#1077#1085#1080#1077':'
            ExplicitHeight = 13
          end
          object Label23: TLabel
            Left = 99
            Top = 0
            Width = 25
            Height = 18
            Align = alLeft
            Caption = 'some'
            ExplicitLeft = 98
            ExplicitHeight = 13
          end
        end
      end
    end
    object GroupBox8: TGroupBox
      Left = 0
      Top = 200
      Width = 200
      Height = 50
      Align = alTop
      Caption = #1054#1090#1085#1086#1096#1077#1085#1080#1077' '#1082' '#1083#1102#1076#1103#1084
      TabOrder = 5
      object Panel15: TPanel
        Left = 2
        Top = 15
        Width = 196
        Height = 36
        Align = alTop
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 0
        object Label24: TLabel
          Left = 0
          Top = 35
          Width = 99
          Height = 1
          Align = alLeft
          Caption = #1058#1077#1082#1091#1097#1077#1077' '#1079#1085#1072#1095#1077#1085#1080#1077':'
          ExplicitHeight = 13
        end
        object Label25: TLabel
          Left = 99
          Top = 35
          Width = 25
          Height = 1
          Align = alLeft
          Caption = 'some'
          ExplicitLeft = 98
          ExplicitHeight = 13
        end
        object ScrollBar7: TScrollBar
          Left = 0
          Top = 0
          Width = 196
          Height = 17
          Align = alTop
          Max = 10
          Min = 1
          PageSize = 0
          Position = 5
          TabOrder = 0
        end
        object Panel16: TPanel
          Left = 0
          Top = 17
          Width = 196
          Height = 18
          Align = alTop
          AutoSize = True
          BevelOuter = bvNone
          TabOrder = 1
          object Label26: TLabel
            Left = 0
            Top = 0
            Width = 99
            Height = 18
            Align = alLeft
            Caption = #1058#1077#1082#1091#1097#1077#1077' '#1079#1085#1072#1095#1077#1085#1080#1077':'
            ExplicitHeight = 13
          end
          object Label27: TLabel
            Left = 99
            Top = 0
            Width = 25
            Height = 18
            Align = alLeft
            Caption = 'some'
            ExplicitLeft = 98
            ExplicitHeight = 13
          end
        end
      end
    end
    object GroupBox10: TGroupBox
      Left = 0
      Top = 300
      Width = 200
      Height = 50
      Align = alTop
      Caption = #1054#1090#1085#1086#1096#1077#1085#1080#1077' '#1082' '#1090#1088#1091#1076#1091
      TabOrder = 6
      object Panel19: TPanel
        Left = 2
        Top = 15
        Width = 196
        Height = 36
        Align = alTop
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 0
        object Label32: TLabel
          Left = 0
          Top = 35
          Width = 99
          Height = 1
          Align = alLeft
          Caption = #1058#1077#1082#1091#1097#1077#1077' '#1079#1085#1072#1095#1077#1085#1080#1077':'
          ExplicitHeight = 13
        end
        object Label33: TLabel
          Left = 99
          Top = 35
          Width = 25
          Height = 1
          Align = alLeft
          Caption = 'some'
          ExplicitLeft = 98
          ExplicitHeight = 13
        end
        object ScrollBar9: TScrollBar
          Left = 0
          Top = 0
          Width = 196
          Height = 17
          Align = alTop
          Max = 10
          Min = 1
          PageSize = 0
          Position = 5
          TabOrder = 0
        end
        object Panel20: TPanel
          Left = 0
          Top = 17
          Width = 196
          Height = 18
          Align = alTop
          AutoSize = True
          BevelOuter = bvNone
          TabOrder = 1
          object Label34: TLabel
            Left = 0
            Top = 0
            Width = 99
            Height = 18
            Align = alLeft
            Caption = #1058#1077#1082#1091#1097#1077#1077' '#1079#1085#1072#1095#1077#1085#1080#1077':'
            ExplicitHeight = 13
          end
          object Label35: TLabel
            Left = 99
            Top = 0
            Width = 25
            Height = 18
            Align = alLeft
            Caption = 'some'
            ExplicitLeft = 98
            ExplicitHeight = 13
          end
        end
      end
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
    Left = 125
    Top = 208
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
