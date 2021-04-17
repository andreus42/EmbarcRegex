object RegexToolForm: TRegexToolForm
  Left = 0
  Top = 0
  Caption = 'Regex Demo Tool'
  ClientHeight = 827
  ClientWidth = 1277
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RegexStringEdit: TLabeledEdit
    Left = 120
    Top = 84
    Width = 649
    Height = 21
    EditLabel.Width = 62
    EditLabel.Height = 13
    EditLabel.Caption = 'Regex String'
    LabelPosition = lpLeft
    TabOrder = 0
  end
  object TestStringEdit: TLabeledEdit
    Left = 120
    Top = 40
    Width = 649
    Height = 21
    EditLabel.Width = 52
    EditLabel.Height = 13
    EditLabel.Caption = 'Test String'
    LabelPosition = lpLeft
    TabOrder = 1
  end
  object CountEdit: TLabeledEdit
    Left = 120
    Top = 128
    Width = 121
    Height = 21
    EditLabel.Width = 61
    EditLabel.Height = 13
    EditLabel.Caption = 'Match Count'
    LabelPosition = lpLeft
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 615
    Top = 193
    Width = 565
    Height = 465
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    StyleElements = [seFont, seClient]
    object EnumMemo: TLabledMemo
      Left = 3
      Top = 33
      Width = 560
      Height = 425
      AMemo.Left = 0
      AMemo.Top = 13
      AMemo.Width = 560
      AMemo.Height = 412
      AMemo.Align = alClient
      AMemo.TabOrder = 0
      AMemo.ExplicitWidth = 480
      AMemo.ExplicitHeight = 404
      ALabel.Left = 0
      ALabel.Top = 0
      ALabel.Width = 560
      ALabel.Height = 13
      ALabel.Align = alTop
      ALabel.Caption = 'Enumerated Memo'
      ALabel.Font.Charset = DEFAULT_CHARSET
      ALabel.Font.Color = clWindowText
      ALabel.Font.Height = -11
      ALabel.Font.Name = 'Tahoma'
      ALabel.Font.Style = [fsBold]
      ALabel.ParentFont = False
      ALabel.Layout = tlCenter
      ALabel.ExplicitWidth = 107
      Caption = 'Enumerated Memo'
      Color = clBtnFace
      FieldWidth = 100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      LabelSpacing = 1
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      TabStop = False
      Text = ''
    end
    object ClearEnumMemoButton: TButton
      Left = 426
      Top = 3
      Width = 135
      Height = 24
      Caption = 'Clear Enum Memo'
      TabOrder = 1
      OnClick = ClearResultsButtonClick
    end
    object GetEunumButton: TButton
      Left = 285
      Top = 3
      Width = 135
      Height = 24
      Caption = 'Get Enum'
      TabOrder = 2
      OnClick = GetEunumButtonClick
    end
    object MoveNextButton: TButton
      Left = 3
      Top = 3
      Width = 135
      Height = 24
      Caption = 'Move To Next Enum'
      TabOrder = 3
      OnClick = MoveNextButtonClick
    end
    object EnumCurrentButton: TButton
      Left = 144
      Top = 3
      Width = 135
      Height = 24
      Caption = 'Print Enum Current'
      TabOrder = 4
      OnClick = EnumCurrentButtonClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 38
    Top = 193
    Width = 571
    Height = 465
    Color = clSilver
    ParentBackground = False
    ParentColor = False
    TabOrder = 4
    StyleElements = [seFont, seClient]
    OnClick = GroupBox2Click
    object ResultsMemo: TLabledMemo
      Left = 3
      Top = 34
      Width = 560
      Height = 425
      AMemo.Left = 0
      AMemo.Top = 13
      AMemo.Width = 560
      AMemo.Height = 412
      AMemo.Align = alClient
      AMemo.TabOrder = 0
      AMemo.ExplicitWidth = 100
      AMemo.ExplicitHeight = 90
      ALabel.Left = 0
      ALabel.Top = 0
      ALabel.Width = 560
      ALabel.Height = 13
      ALabel.Align = alTop
      ALabel.Caption = 'Results'
      ALabel.Font.Charset = DEFAULT_CHARSET
      ALabel.Font.Color = clWindowText
      ALabel.Font.Height = -11
      ALabel.Font.Name = 'Tahoma'
      ALabel.Font.Style = [fsBold]
      ALabel.ParentFont = False
      ALabel.Layout = tlCenter
      ALabel.ExplicitWidth = 42
      Caption = 'Results'
      Color = clBtnFace
      FieldWidth = 100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      LabelSpacing = 1
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      TabStop = False
      Text = ''
    end
    object ClearResultsButton: TButton
      Left = 210
      Top = 3
      Width = 82
      Height = 25
      Caption = 'Clear Results'
      TabOrder = 1
      OnClick = ClearResultsButtonClick
    end
    object SecondCollectionButton: TButton
      Left = 106
      Top = 3
      Width = 98
      Height = 25
      Caption = 'Second collection'
      TabOrder = 2
      OnClick = SecondCollectionButtonClick
    end
    object FirstCollectionButton: TButton
      Left = 3
      Top = 3
      Width = 97
      Height = 25
      Caption = 'First Collection'
      TabOrder = 3
      OnClick = FirstCollectionButtonClick
    end
  end
end
