unit uViewPersona;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  uIPersona, uNatural, uJuridica, uSingleton;

  type
    TForm1 = class(TForm)
      edNombre: TLabeledEdit;
      edDocumento: TLabeledEdit;
      Button1: TButton;
      cmbTipo: TComboBox;
      edPais: TLabeledEdit;
      edTipoDoc: TLabeledEdit;
      edAnio: TLabeledEdit;
    btCrear: TButton;
    cmbPersonas: TComboBox;
      function TipoDocToStr(Tipo: TTiposDoc): string;
    procedure btCrearClick(Sender: TObject);
    procedure cmbPersonasChange(Sender: TObject);
    private
      { Private declarations }
      FPersona: IPersona;
      APersonas: Array of IPersona;
    public
      { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  uPersonaWrapper;


{$R *.dfm}

procedure TForm1.cmbPersonasChange(Sender: TObject);
var
  Wrapper: TPersonaWrapper;
  Persona: IPersona;
begin
  if cmbPersonas.ItemIndex > -1 then
  begin
    Wrapper := TPersonaWrapper(cmbPersonas.Items.Objects[cmbPersonas.ItemIndex]);
    if Assigned(Wrapper) then
    begin
      Persona := Wrapper.Persona;
      edPais.Text := Persona.Pais;
      edNombre.Text := Persona.nombre;
      edTipoDoc.Text := TipoDocToStr(Persona.TipoDocumento);
      edDocumento.Text := Persona.Documento.ToString;
    end;
  end;
end;

procedure TForm1.btCrearClick(Sender: TObject);
begin
  case cmbTipo.ItemIndex of
    0:
      begin
        FPersona := TNaturalSingleton.GetInstance;
      end;
    1:
      begin
        FPersona := TJuridicaSingleton.GetInstance;
      end;
  else
    raise Exception.Create('Seleccione un tipo');
  end;

  FPersona.Documento(StrToFloat(edDocumento.Text))
          .Nombre(edNombre.Text)
          .Pais(edPais.Text)
          .TipoDocumento(TTiposDoc.CC);

  cmbPersonas.AddItem(FPersona.Nombre,TPersonaWrapper.Create(FPersona));
  cmbPersonas.ItemIndex := Pred(cmbPersonas.Items.Count);

end;

function TForm1.TipoDocToStr(Tipo: TTiposDoc): string;
begin
  case Tipo of
    CC: Result := 'Cédula de Ciudadanía';
    NIT: Result := 'NIT';
    RUT: Result := 'RUT';
  else
    Result := 'Desconocido';
  end;
end;

end.
