unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ExtCtrls, Buttons, JvBaseDlg, JvSelectDirectory,
  StdCtrls, DBCtrls, Mask, dbisamtb, JvDialogs, ActnList, ToolWin, ActnMan,
  ActnCtrls, PlatformDefaultStyleActnCtrls, uSeguridad, OnGuard,
  JvComponentBase, JvFormPlacement, JvAppStorage, JvAppRegistryStorage;

type
  TfrPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    dsConfiguracion: TDataSource;
    Label2: TLabel;
    RutaExportacion: TDBEdit;
    Label3: TLabel;
    NombreMovimiento: TDBEdit;
    Label4: TLabel;
    NombreNits: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    CampoCuentaEnTarjetas: TDBComboBox;
    CampoCuentaInstituciones: TDBComboBox;
    CampoTerceroUsuarios: TDBComboBox;
    dgSeleccionarDiretorio: TJvSelectDirectory;
    SpeedButton1: TSpeedButton;
    pAcciones: TPanel;
    amAcciones: TActionManager;
    aImportarCuentas: TAction;
    ActionToolBar2: TActionToolBar;
    aGenerarMovimientoContable: TAction;
    aConfiguracionContable: TAction;
    DBLookupComboBox1: TDBLookupComboBox;
    aAgrupaciones: TAction;
    Label9: TLabel;
    CampoAgrupacionInventario: TDBComboBox;
    Panel3: TPanel;
    btCancelar: TBitBtn;
    btGuardar: TBitBtn;
    BitBtn1: TBitBtn;
    RutaConsecutivos: TDBEdit;
    Label10: TLabel;
    SpeedButton2: TSpeedButton;
    aConsecutivos: TAction;
    Label11: TLabel;
    PorcentajeCREE: TDBEdit;
    aPendientesDeExportar: TAction;
    bRegistro: TBitBtn;
    aClasificaciones: TAction;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btGuardarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure aImportarCuentasExecute(Sender: TObject);
    procedure aConfiguracionContableExecute(Sender: TObject);
    procedure aAgrupacionesExecute(Sender: TObject);
    procedure aGenerarMovimientoContableExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure aConsecutivosExecute(Sender: TObject);
    procedure dsConfiguracionStateChange(Sender: TObject);
    procedure aPendientesDeExportarExecute(Sender: TObject);
    procedure bRegistroClick(Sender: TObject);
    procedure aClasificacionesExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CargarCamposComboBox( T : TDBISAMTable; var CB :TDBComboBox );
    procedure ConfiguracionContable;
    procedure Agrupaciones;
    procedure ProcesoGenerar;
    procedure Consecutivos;
    procedure Clasificaciones;
    procedure PendienteDeExportar;
    procedure CargarDatosAplicaion;
  end;

var
  frPrincipal: TfrPrincipal;

implementation

uses uDatosExportacion, uBaseDatosA2, uTablasConBlobAdministrativo, uUtilidadesSPA,
  uImportarCuentas, uCuentas, uConfiguracionContable, uAgrupaciones,
  uGenerarMovimientoContable, uConsecutivos, uCentrosCuentas,
  uPendientesDeExportar, uClasificaciones;

Const
  IdentificadorAplicacion : TKey = ($8D,$B9,$9C,$9F,$3C,$91,$19,$55,$C3,$4D,$D5,$3E,$FD,$08,$2A,$DD);


{$R *.dfm}

procedure TfrPrincipal.CargarDatosAplicaion;
begin
  // Se debe sobre escribir para llenar los datos necesaros de la aplicación

  // Ejemplo el identificador para validar el registro.
  Key := IdentificadorAplicacion;
end;


procedure TfrPrincipal.aAgrupacionesExecute(Sender: TObject);
begin
  Agrupaciones;
end;

procedure TfrPrincipal.aClasificacionesExecute(Sender: TObject);
begin
  Clasificaciones;
end;

procedure TfrPrincipal.aConfiguracionContableExecute(Sender: TObject);
begin
  ConfiguracionContable;
end;

procedure TfrPrincipal.aConsecutivosExecute(Sender: TObject);
begin
  Consecutivos;
end;

procedure TfrPrincipal.aGenerarMovimientoContableExecute(Sender: TObject);
begin
  ProcesoGenerar;
end;
procedure TfrPrincipal.Clasificaciones;
begin
  TfmClasificaciones.prMantenimiento(dmEC.SClasificacion, 'FCL_Codigo');
end;

procedure TfrPrincipal.Agrupaciones;
begin
  TfrAgrupaciones.prMantenimiento(dmEc.SPAAgrupaciones, 'IdAgrupaciones');
end;

procedure TfrPrincipal.aImportarCuentasExecute(Sender: TObject);
begin
  ImportarCuentas;
end;

procedure TfrPrincipal.aPendientesDeExportarExecute(Sender: TObject);
begin
  PendienteDeExportar;
end;

procedure TfrPrincipal.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrPrincipal.bRegistroClick(Sender: TObject);
begin
  MostrarRegistrado;
end;

procedure TfrPrincipal.btCancelarClick(Sender: TObject);
begin
  if dsConfiguracion.State = dsEdit then
    dsConfiguracion.DataSet.Cancel;
end;

procedure TfrPrincipal.btGuardarClick(Sender: TObject);
begin
  if dsConfiguracion.State = dsEdit then
    dsConfiguracion.DataSet.Post;
end;

procedure TfrPrincipal.CargarCamposComboBox(T: TDBISAMTable; var CB: TDBComboBox);
var
  F : TField;
begin
  CB.Items.Clear;
  for F  in T.Fields do
  begin
    CB.Items.Add(F.FieldName);
  end;
end;

procedure TfrPrincipal.ConfiguracionContable;
begin
  TfrConfiguracionContable.prMantenimiento(dmEC.SPAConfiguracionContable, 'IdConfiguracionContable');
end;

procedure TfrPrincipal.Consecutivos;
begin
  TfrConsecutivos.prMantenimiento(dmEC.SPAConsecutivos, 'IdConsecutivo');
end;

procedure TfrPrincipal.dsConfiguracionStateChange(Sender: TObject);
begin
  btGuardar.Enabled := dsConfiguracion.State in [dsEdit];
  btCancelar.Enabled := dsConfiguracion.State in [dsEdit];
end;

procedure TfrPrincipal.FormCreate(Sender: TObject);
begin
  CargarDatosAplicaion;

  ModoDemo := True;

  ValidarRegistro( ModoDemo) ;

  OpcionParametro;

  // Hace la verificación de sEmpresa.Dat
  if dmBasesDatos.ExisteSEmpresa then
  Begin
    // Abre empresas
    dmBasesDatos.AbrirSEmpresa;

    // Conecta la base de datos
    dmBasesDatos.ConectarDB(dmBasesDatos.sEmpresaFE_DIRDATOS.Value);

    // Abre tarjetas
    dmAdministrativo.AbrirSTarjeta;

    // Carga los datos de combobox
    CargarCamposComboBox(dmAdministrativo.Starjetas, CampoCuentaEnTarjetas);

    // Abre instituciones
    dmAdministrativo.AbrirSInstitucion;

    // Carga las instutuciones en el combox
    CargarCamposComboBox(dmAdministrativo.SInstitucion, CampoCuentaInstituciones);

    // Abre Usuarios
    dmEC.AbrirUsuarios;

    // Carga las instutuciones en el combox
    CargarCamposComboBox(dmEC.Susuarios, CampoTerceroUsuarios);

    // Abre Usuarios
    dmEC.AbrirInventario;

    // Carga las instutuciones en el combox
    CargarCamposComboBox(dmEC.Sinventario, CampoAgrupacionInventario);

    // Abre configuracion
    dmEC.AbrirConfiguracion;

    // pone en edicion la configuracion
    //dmEC.SPAConfiguracionExportarContabilidad.Edit;

    // Crea las tablas del sistema
    dmEC.AbrirSPAConsecutivos;
    dmEC.AbrirSPAConfiguracionContable;
    dmEC.AbrirSPAConfiguracionContableMov;
    dmEC.AbrirSPAAgrupaciones;
    dmEC.AbrirSPAAgrupacionesCuentas;
    dmEC.AbrirSPAMovimientoGenerado;
    dmEC.AbrirSPACuentasCentros;
    dmEC.AbrirSPAClasificacionCuentas;
  End
  Else
  begin
    ShowMessage(
      'No se encontro el archivo sEmpresas.dat, no puede ejecutar el programa'
      );
     Halt(1);
  end;

  Case OpcionA2 of
    100 : Begin
            pAcciones.Visible := True;
          End;
      1 : pAcciones.Visible := false;
      2 : begin
            Self.Visible := false;
            ImportarCuentas;
            if not ModoPruebas then
              Halt(1);
          end;
      3 : begin
            Self.Visible := false;
            ConfiguracionContable;
            if not ModoPruebas then
              Halt(1);
          end;
      4 : begin
            Self.Visible := false;
            Agrupaciones;
            if not ModoPruebas then
              Halt(1);
          end;
      5 : begin
            Self.Visible := false;
            ProcesoGenerar;
            if not ModoPruebas then
              Halt(1);
          end;
      6 : begin
            Self.Visible := false;
            Consecutivos;
            if not ModoPruebas then
              Halt(1);
          end;
      7 : begin
            Self.Visible := false;
            PendienteDeExportar;
            if not ModoPruebas then
              Halt(1);
          end;
      8 : begin
            Self.Visible := false;
            Clasificaciones;
            if not ModoPruebas then
              Halt(1);
          end;
    else  begin
            ShowMessage('La opción no esta implementada.');
            halt(1);
          end;
  End;
end;

procedure TfrPrincipal.PendienteDeExportar;
begin
  dmEC.SPAMovimientoGenerado.Filter := 'Exportado = False';
  dmEC.SPAMovimientoGenerado.Filtered := True;
  TfrPendientesDeExportar.prMantenimiento(dmEC.SPAMovimientoGenerado, 'IdMovimientoGenerado');
  dmEC.SPAMovimientoGenerado.Filter := '';
  dmEC.SPAMovimientoGenerado.Filtered := False;
end;

procedure TfrPrincipal.ProcesoGenerar;
begin
  GenerarMovimientoContable;
end;

procedure TfrPrincipal.SpeedButton1Click(Sender: TObject);
begin
  if dgSeleccionarDiretorio.Execute then
  begin
    RutaExportacion.Text := dgSeleccionarDiretorio.Directory;
  end;
end;

procedure TfrPrincipal.SpeedButton2Click(Sender: TObject);
begin
  if dgSeleccionarDiretorio.Execute then
  begin
    RutaConsecutivos.Text := dgSeleccionarDiretorio.Directory;
  end;
end;

end.
