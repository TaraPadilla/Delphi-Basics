unit uNatural;

interface
uses
  uIPersona, uSingleton;

  type TNatural = class(TInterfacedObject,IPersona)
  private
    FNombre: string;
    FDocumento: Double;
    FPais: string;
    FTipoDoc: TTiposDoc;

    function Nombre(const Value: string): IPersona; overload;
    function Nombre: string; overload;

    function Pais: string;  overload;
    function Pais(const Value: string): IPersona; overload;

    function Documento(const Value: Double): IPersona; overload;
    function Documento: Double; overload;

    function TipoDocumento: TTiposDoc; overload;
    function TipoDocumento(const Value: TTiposDoc): IPersona; overload;
  end;

  TNaturalSingleton = TSingleton<TNatural>;

implementation



{ TNatural }

function TNatural.Documento: Double;
begin
  Result := FDocumento;
end;

function TNatural.Nombre: string;
begin
  Result := FNombre;
end;

function TNatural.Pais(const Value: string): IPersona;
begin
  FPais := Value;
  Result := Self;
end;

function TNatural.TipoDocumento(const Value: TTiposDoc): IPersona;
begin
  FTipoDoc := Value;
  Result := Self;
end;

function TNatural.TipoDocumento: TTiposDoc;
begin
  Result := FTipoDoc;
end;

function TNatural.Pais: string;
begin
  Result := FPais;
end;

function TNatural.Documento(const Value: Double): IPersona;
begin
  FDocumento := Value;
  Result := Self;
end;

function TNatural.nombre(const Value: string): IPersona;
begin
  Fnombre := Value;
  Result := Self;
end;

end.
