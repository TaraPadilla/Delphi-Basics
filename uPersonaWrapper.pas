unit uPersonaWrapper;

interface

uses
  uIPersona;

type
  TPersonaWrapper = class(TObject)
  private
    FPersona: IPersona;
  public
    constructor Create(APersona: IPersona);
    property Persona: IPersona read FPersona;
  end;

implementation

{ TPersonaWrapper }

constructor TPersonaWrapper.Create(APersona: IPersona);
begin
  FPersona := APersona;
end;



end.
