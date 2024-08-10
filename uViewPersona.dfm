object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 245
  ClientWidth = 613
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object edNombre: TLabeledEdit
    Left = 88
    Top = 72
    Width = 121
    Height = 23
    EditLabel.Width = 44
    EditLabel.Height = 15
    EditLabel.Caption = 'Nombre'
    TabOrder = 0
    Text = ''
  end
  object edDocumento: TLabeledEdit
    Left = 264
    Top = 128
    Width = 145
    Height = 23
    EditLabel.Width = 63
    EditLabel.Height = 15
    EditLabel.Caption = 'Documento'
    TabOrder = 1
    Text = ''
  end
  object Button1: TButton
    Left = 456
    Top = 151
    Width = 121
    Height = 25
    Caption = 'Cargar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object cmbTipo: TComboBox
    Left = 264
    Top = 72
    Width = 145
    Height = 23
    ItemIndex = 0
    TabOrder = 3
    Text = 'Natural'
    Items.Strings = (
      'Natural'
      'Juridica')
  end
  object edPais: TLabeledEdit
    Left = 88
    Top = 184
    Width = 121
    Height = 23
    EditLabel.Width = 21
    EditLabel.Height = 15
    EditLabel.Caption = 'Pais'
    TabOrder = 4
    Text = ''
  end
  object edTipoDoc: TLabeledEdit
    Left = 88
    Top = 128
    Width = 121
    Height = 23
    EditLabel.Width = 89
    EditLabel.Height = 15
    EditLabel.Caption = 'Tipo Documento'
    TabOrder = 5
    Text = ''
  end
  object edAnio: TLabeledEdit
    Left = 264
    Top = 176
    Width = 145
    Height = 23
    EditLabel.Width = 25
    EditLabel.Height = 15
    EditLabel.Caption = 'A'#241'o '
    TabOrder = 6
    Text = ''
  end
  object btCrear: TButton
    Left = 456
    Top = 120
    Width = 121
    Height = 25
    Caption = 'Crear'
    TabOrder = 7
    OnClick = btCrearClick
  end
end
