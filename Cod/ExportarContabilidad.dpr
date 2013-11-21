program ExportarContabilidad;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  uDatos in 'uDatos.pas' {dm: TDataModule},
  uBaseDatosA2 in '..\..\CompartidosA2\uBaseDatosA2.pas' {dmBasesDatos: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TdmBasesDatos, dmBasesDatos);
  Application.Run;
end.
