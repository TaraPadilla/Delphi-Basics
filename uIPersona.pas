unit uIPersona;

interface

  type TTiposDoc = (CC, NIT, RUT);
  type TAnioNacimiento = 1950..2024;

  type IPersona = interface
   function Nombre(const Value: string): IPersona; overload;
   function Nombre: string; overload;

   function Pais: string;  overload;
   function Pais(const Value: string): IPersona; overload;

   function Documento(const Value: Double): IPersona; overload;
   function Documento: Double;  overload;

   function TipoDocumento: TTiposDoc; overload;
   function TipoDocumento(const Value: TTiposDoc): IPersona; overload;
  end;

implementation

end.
