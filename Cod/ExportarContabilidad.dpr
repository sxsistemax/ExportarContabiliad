program ExportarContabilidad;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {frPrincipal},
  uBaseDatosA2 in '..\..\CompartidosA2\uBaseDatosA2.pas' {dmBasesDatos: TDataModule},
  uUtilidadesSPA in '..\..\CompartidosA2\uUtilidadesSPA.pas',
  uTablasConBlobAdministrativo in '..\..\CompartidosA2\uTablasConBlobAdministrativo.pas' {dmAdministrativo: TDataModule},
  uImportarCuentas in 'uImportarCuentas.pas' {frImportarCuentas},
  uConfiguracionContable in 'uConfiguracionContable.pas' {frConfiguracionContable},
  uCuentas in 'uCuentas.pas' {frCuentas},
  uConfiguracionContableMov in 'uConfiguracionContableMov.pas' {frConfiguracionContableMov},
  uAgrupaciones in 'uAgrupaciones.pas' {frAgrupaciones},
  uAgrupacionesCuentas in 'uAgrupacionesCuentas.pas' {frAgrupacionesCuentas},
  uDatosExportacion in 'uDatosExportacion.pas' {dmEC: TDataModule},
  uGenerarMovimientoContable in 'uGenerarMovimientoContable.pas' {frGenerarMovimientoContable},
  uConsecutivos in 'uConsecutivos.pas' {frConsecutivos},
  uCentrosCuentas in 'uCentrosCuentas.pas' {frCentrosCuentas},
  uCuentasClasificaciones in 'uCuentasClasificaciones.pas' {frCuentasClasifiaciones},
  uPendientesDeExportar in 'uPendientesDeExportar.pas' {frPendientesDeExportar},
  MantenimientoSPA in 'C:\Vcl\Comun\MantenimientoSPA.pas' {fmBaseMantenimiento},
  uClasificaciones in 'uClasificaciones.pas' {fmClasificaciones};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'SAP Exportar Contabilidad';
  Application.CreateForm(TdmBasesDatos, dmBasesDatos);
  Application.CreateForm(TdmAdministrativo, dmAdministrativo);
  Application.CreateForm(TdmEC, dmEC);
  Application.CreateForm(TfrPrincipal, frPrincipal);
  Application.Run;
end.
