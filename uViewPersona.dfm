object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 189
  ClientWidth = 609
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object edNombre: TLabeledEdit
    Left = 32
    Top = 32
    Width = 121
    Height = 23
    EditLabel.Width = 44
    EditLabel.Height = 15
    EditLabel.Caption = 'Nombre'
    TabOrder = 0
    Text = ''
  end
  object edDocumento: TLabeledEdit
    Left = 208
    Top = 88
    Width = 145
    Height = 23
    EditLabel.Width = 63
    EditLabel.Height = 15
    EditLabel.Caption = 'Documento'
    TabOrder = 1
    Text = ''
  end
  object Button1: TButton
    Left = 400
    Top = 111
    Width = 121
    Height = 25
    Caption = 'Cargar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object cmbTipo: TComboBox
    Left = 208
    Top = 32
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
    Left = 32
    Top = 144
    Width = 121
    Height = 23
    EditLabel.Width = 21
    EditLabel.Height = 15
    EditLabel.Caption = 'Pais'
    TabOrder = 4
    Text = ''
  end
  object edTipoDoc: TLabeledEdit
    Left = 32
    Top = 88
    Width = 121
    Height = 23
    EditLabel.Width = 89
    EditLabel.Height = 15
    EditLabel.Caption = 'Tipo Documento'
    TabOrder = 5
    Text = ''
  end
  object edAnio: TLabeledEdit
    Left = 208
    Top = 136
    Width = 145
    Height = 23
    EditLabel.Width = 25
    EditLabel.Height = 15
    EditLabel.Caption = 'A'#241'o '
    TabOrder = 6
    Text = ''
  end
  object btCrear: TButton
    Left = 400
    Top = 80
    Width = 121
    Height = 25
    Caption = 'Crear'
    TabOrder = 7
    OnClick = btCrearClick
  end
end
