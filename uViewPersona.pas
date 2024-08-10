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
      procedure Button1Click(Sender: TObject);
      function TipoDocToStr(Tipo: TTiposDoc): string;
    procedure btCrearClick(Sender: TObject);
    private
      { Private declarations }
      FPersonaNat: IPersona;
      FPersonaJuridica: IPersona;
      FPersonaJuridica1: IPersona;
    public
      { Public declarations }
  end;

var
  Form1: TForm1;

implementation


{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  case cmbTipo.ItemIndex of
    0:
      begin
        edPais.Text := FPersonaNat.Pais;
        edNombre.Text := FPersonaNat.nombre;
        edTipoDoc.Text := TipoDocToStr(FPersonaNat.TipoDocumento);
        edDocumento.Text := FPersonaNat.Documento.ToString;
      end;
    1:
      begin
        edPais.Text := FPersonaJuridica.Pais;
        edNombre.Text := FPersonaJuridica.nombre;
        edTipoDoc.Text := TipoDocToStr(FPersonaJuridica.TipoDocumento);
        edDocumento.Text := FPersonaJuridica.Documento.ToString;
      end;
  end;

end;

procedure TForm1.btCrearClick(Sender: TObject);
begin
  FPersonaNat := TNatural.Create;
  FPersonaJuridica := TJuridicaSingleton.GetInstance;
  FPersonaJuridica1 := TJuridicaSingleton.GetInstance;


  FPersonaNat.documento(80749963)
             .Pais('Colombia')  //Como funcion
             .Nombre('Juan')
             .TipoDocumento(CC);

  FPersonaJuridica.documento(123456)
                  .Pais('Italia')
                  .Nombre('Empresa')
                  .TipoDocumento(NIT);

  FPersonaJuridica1.documento(900786543)
                  .Pais('Chile')
                  .Nombre('FPersonaJuridica1')
                  .TipoDocumento(TTiposDoc.RUT);
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
