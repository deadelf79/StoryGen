object OpenDialog: TOpenDialog
  Left = 0
  Top = 0
  Caption = 'OpenDialog'
  ClientHeight = 281
  ClientWidth = 534
  Color = clBtnFace
  Constraints.MinHeight = 320
  Constraints.MinWidth = 550
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 534
    Height = 281
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 64
    ExplicitTop = 56
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 184
      Height = 251
      Align = alLeft
      Caption = 'Panel2'
      TabOrder = 0
      ExplicitTop = -4
      ExplicitHeight = 238
      object DriveComboBox1: TDriveComboBox
        Left = 1
        Top = 1
        Width = 182
        Height = 19
        Align = alTop
        DirList = DirectoryListBox1
        TabOrder = 0
        TextCase = tcUpperCase
        ExplicitLeft = 40
        ExplicitTop = 24
        ExplicitWidth = 145
      end
      object DirectoryListBox1: TDirectoryListBox
        Left = 1
        Top = 20
        Width = 182
        Height = 230
        Align = alClient
        FileList = FileListBox1
        TabOrder = 1
        ExplicitLeft = -3
        ExplicitTop = 16
        ExplicitHeight = 217
      end
    end
    object OkCancelPanel: TPanel
      Left = 1
      Top = 252
      Width = 532
      Height = 28
      Align = alBottom
      TabOrder = 1
      ExplicitTop = 240
      ExplicitWidth = 524
      object Ok: TButton
        Left = 1
        Top = 1
        Width = 75
        Height = 26
        Align = alLeft
        Caption = #1054#1082
        ModalResult = 1
        TabOrder = 0
        ExplicitHeight = 27
      end
      object Cancel: TButton
        Left = 456
        Top = 1
        Width = 75
        Height = 26
        Align = alRight
        Cancel = True
        Caption = #1054#1090#1084#1077#1085#1072
        ModalResult = 2
        TabOrder = 1
        ExplicitLeft = 109
        ExplicitHeight = 39
      end
    end
    object Panel3: TPanel
      Left = 185
      Top = 1
      Width = 348
      Height = 251
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 2
      ExplicitLeft = 224
      ExplicitTop = 56
      ExplicitWidth = 185
      ExplicitHeight = 41
      object FilterComboBox1: TFilterComboBox
        Left = 1
        Top = 229
        Width = 346
        Height = 21
        Align = alBottom
        FileList = FileListBox1
        Filter = #1042#1089#1077' '#1092#1072#1081#1083#1099' (*.*)|*.*|'#1058#1077#1082#1089#1090#1086#1074#1099#1077' (*.txt)|*.txt'
        TabOrder = 0
        ExplicitTop = 218
        ExplicitWidth = 524
      end
      object FileListBox1: TFileListBox
        Left = 1
        Top = 1
        Width = 346
        Height = 228
        Align = alClient
        FileType = [ftReadOnly, ftHidden, ftSystem, ftArchive, ftNormal]
        ItemHeight = 13
        TabOrder = 1
        ExplicitWidth = 338
        ExplicitHeight = 215
      end
    end
  end
end
