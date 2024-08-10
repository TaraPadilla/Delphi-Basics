program Interfaces;

uses
  Vcl.Forms,
  uViewPersona in 'uViewPersona.pas' {Form1},
  uIPersona in 'uIPersona.pas',
  uNatural in 'uNatural.pas',
  uJuridica in 'uJuridica.pas',
  uSingleton in 'uSingleton.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
