unit uJuridica;

interface
 uses uIPersona, uSingleton;

  type TJuridica = class(TInterfacedObject, IPersona)
  strict private
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

  TJuridicaSingleton = TSingleton<TJuridica>;

implementation

{ TJuridica }

function TJuridica.Documento: Double;
begin
  Result := FDocumento;
end;

function TJuridica.Nombre: string;
begin
  Result := FNombre;
end;

function TJuridica.Pais(const Value: string): IPersona;
begin
  FPais := Value;
  Result := Self;
end;

function TJuridica.TipoDocumento(const Value: TTiposDoc): IPersona;
begin
 FTipoDoc := Value;
 Result := Self;
end;

function TJuridica.TipoDocumento: TTiposDoc;
begin
  Result := FTipoDoc;
end;

function TJuridica.Pais: string;
begin
  Result := FPais;
end;

function TJuridica.Documento(const Value: Double): IPersona;
begin
  FDocumento := Value;
  Result := Self;
end;

function TJuridica.Nombre(const Value: string): IPersona;
begin
  FNombre := Value;
  Result := Self;
end;

end.
