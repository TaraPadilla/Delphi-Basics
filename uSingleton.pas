unit uSingleton;

interface
  type TSingleton<T: Class, constructor> = class
    strict private
      FNumero: Integer;
      class var FInstance: T;
    public
      class function GetInstance: T;
  end;

implementation

{ TSingleton<T> }

class function TSingleton<T>.GetInstance: T;
begin
  if not Assigned(Self.FInstance) then
    self.FInstance := T.Create;

  Result := Self.FInstance;
end;

end.
