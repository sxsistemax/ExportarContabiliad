unit uDatosExportacion;

interface

uses
  SysUtils, Classes, JvMemoryDataset, DB, dbisamtb, JvProgressBar, uUtilidadesSPA, StdCtrls;

type
  TdmEC = class(TDataModule)
    SPAConfiguracionExportarContabilidad: TDBISAMTable;
    SPAConfiguracionExportarContabilidadModuloAExportar: TIntegerField;
    SPAConfiguracionExportarContabilidadRutaExportacion: TStringField;
    SPAConfiguracionExportarContabilidadNombreMovimiento: TStringField;
    SPAConfiguracionExportarContabilidadNombreNits: TStringField;
    SPAConfiguracionExportarContabilidadCampoCuentaEnTarjetas: TStringField;
    SPAConfiguracionExportarContabilidadCampoCuentaInstituciones: TStringField;
    SPAConfiguracionExportarContabilidadCampoTerceroUsuarios: TStringField;
    a2CCuentas: TDBISAMTable;
    a2CCuentasCODIGO: TStringField;
    a2CCuentasDESCRIPCION: TStringField;
    a2CCuentasFECHA_APERTURA: TDateField;
    a2CCuentasFECHA_INACTIVA: TDateField;
    a2CCuentasAJUSTE_FISCAL: TSmallintField;
    a2CCuentasSALDO_INICIAL: TCurrencyField;
    a2CCuentasSALDO_ACTUAL: TCurrencyField;
    a2CCuentasAJUSTE_DPC10: TSmallintField;
    a2CCuentasCCOSTO_FIJO: TBooleanField;
    a2CCuentasCCOSTO: TStringField;
    a2CCuentasCONSOLIDACION: TBooleanField;
    a2CCuentasCTA_CONSOLIDADORA: TStringField;
    a2CCuentasCTA_AJUSTE: TStringField;
    a2CCuentasCTA_CORRECCION: TStringField;
    a2CCuentasCTA_GASTO: TStringField;
    a2CCuentasCTA_BANCARIA: TStringField;
    a2CCuentasCMONEDA: TStringField;
    a2CCuentasTIPO_ACTIVIDAD: TSmallintField;
    a2CCuentasTIPO_AUXILIAR: TSmallintField;
    a2CCuentasTIPO_NOMINA: TSmallintField;
    a2CCuentasCONCILIACION: TBooleanField;
    a2CCuentasMOVIMIENTO: TBooleanField;
    a2CCuentasMANEJA_CCOSTO: TBooleanField;
    a2CCuentasMANEJA_PRESUPUESTO: TBooleanField;
    a2CCuentasMANEJA_BASES: TBooleanField;
    a2CCuentasMANEJA_AUXILIAR: TBooleanField;
    a2CCuentasMANEJA_EFECTIVO: TBooleanField;
    a2CCuentasMANEJA_DOC: TBooleanField;
    a2CCuentasMANEJA_FECHADOC: TBooleanField;
    a2CCuentasMONEDA_APERTURA: TCurrencyField;
    a2CCuentasCORRELATIVO_CHEQUE: TIntegerField;
    a2CCuentasMONTO_EFECTIVO_INI: TCurrencyField;
    a2CCuentasMONTO_DEBE_INI: TCurrencyField;
    a2CCuentasMONTO_HABER_INI: TCurrencyField;
    a2CCuentasMONTO_DEBE_ACT: TCurrencyField;
    a2CCuentasMONTO_HABER_ACT: TCurrencyField;
    a2CCuentasMONTO_EXTRA1: TCurrencyField;
    a2CCuentasMONTO_EXTRA2: TCurrencyField;
    a2CCuentasPRESUPUESTO: TBlobField;
    a2CCuentasVISIBLE: TBooleanField;
    a2CCuentasSTATUS: TBooleanField;
    a2CCuentasFLAG: TStringField;
    a2CCuentasBASE_AUTOINCREMENT: TAutoIncField;
    a2CCuentasMONETARIA: TSmallintField;
    a2CCuentasSALDO_INICIALAJUSTADO: TCurrencyField;
    a2CCuentasMONTO_DEBE_INIAJUSTADO: TCurrencyField;
    a2CCuentasMONTO_HABER_INIAJUSTADO: TCurrencyField;
    a2CCuentasMONTO_DEBE_ACTAJUSTADO: TCurrencyField;
    a2CCuentasMONTO_HABER_ACTAJUSTADO: TCurrencyField;
    a2CCuentasTIPO_CUENTA: TSmallintField;
    a2CCuentasP_PRESUPUESTO: TBlobField;
    a2CCuentasP_MONTO_DEBE_INI: TCurrencyField;
    a2CCuentasP_MONTO_HABER_INI: TCurrencyField;
    a2CCuentasP_MONTO_DEBE_ACT: TCurrencyField;
    a2CCuentasP_MONTO_HABER_ACT: TCurrencyField;
    a2CCuentasP_SALDO_INICIAL: TCurrencyField;
    a2CCuentasP_SALDO_INICIALAJUSTADO: TCurrencyField;
    a2CCuentasP_MONTO_DEBE_INIAJUSTADO: TCurrencyField;
    a2CCuentasP_MONTO_HABER_INIAJUSTADO: TCurrencyField;
    a2CCuentasP_MONTO_DEBE_ACTAJUSTADO: TCurrencyField;
    a2CCuentasP_MONTO_HABER_ACTAJUSTADO: TCurrencyField;
    a2CCuentasAUDITORIA: TBooleanField;
    a2CCuentasDOCUMENTOS: TBlobField;
    tbmCuentasContai: TJvMemoryData;
    tbmCuentasContaiCuenta: TStringField;
    tbmCuentasContaiDescripcion: TStringField;
    tbmCuentasContaiManejaMovimiento: TStringField;
    tbmCuentasContaiManejaTercero: TStringField;
    tbmCuentasContaiManejaCentroCostos: TStringField;
    tbmCuentasContaiTipoCuenta: TStringField;
    SPAMovimientoGenerado: TDBISAMTable;
    SPAMovimientoGeneradoCuenta: TStringField;
    SPAMovimientoGeneradoComprobante: TStringField;
    SPAMovimientoGeneradoFecha: TDateField;
    SPAMovimientoGeneradoDocumento: TStringField;
    SPAMovimientoGeneradoDocumentoRef: TStringField;
    SPAMovimientoGeneradoNit: TStringField;
    SPAMovimientoGeneradoDetalle: TStringField;
    SPAMovimientoGeneradoTipo: TSmallintField;
    SPAMovimientoGeneradoValor: TFloatField;
    SPAMovimientoGeneradoBase: TFloatField;
    SPAMovimientoGeneradoCCosto: TStringField;
    SPAMovimientoGeneradoExportado: TBooleanField;
    SPAConfiguracionContableMov: TDBISAMTable;
    SPAConfiguracionContableMovIdConfiguracionContable: TIntegerField;
    SPAConfiguracionContableMovIdConfiguracionContableMov: TAutoIncField;
    SPAConfiguracionContableMovIdTipoOperacion: TIntegerField;
    SPAConfiguracionContableMovIdOrigenMonto: TIntegerField;
    SPAConfiguracionContableMovDetalle: TStringField;
    SPAConfiguracionContableMovCuentaGeneral: TStringField;
    SPAConfiguracionContableMovTipoAsiento: TSmallintField;
    tbTiposComprobantes: TJvMemoryData;
    tbTiposComprobantesIdTipoComprobante: TIntegerField;
    tbTiposComprobantesTipoComprobante: TStringField;
    tbTipoTransaccion: TJvMemoryData;
    tbTipoTransaccionIdTipoTransaccion: TIntegerField;
    tbTipoTransaccionTipoTransaccion: TStringField;
    tbOrigenMonto: TJvMemoryData;
    tbOrigenMontoIdOrigenMonto: TSmallintField;
    tbOrigenMontoOrigenMonto: TStringField;
    tbTipoOperacion: TJvMemoryData;
    tbTipoOperacionIdTipoOperacion: TSmallintField;
    tbTipoOperacionIdTipoComprobante: TSmallintField;
    tbTipoOperacionTipoOperacion: TStringField;
    tbModulos: TJvMemoryData;
    tbModulosIdModulo: TSmallintField;
    tbModulosModulo: TStringField;
    SPAAgrupaciones: TDBISAMTable;
    SPAAgrupacionesIdAgrupacion: TAutoIncField;
    SPAAgrupacionesAgrupacion: TStringField;
    SPAAgrupacionesCuentas: TDBISAMTable;
    SPAAgrupacionesCuentasIdAgrupacionCuenta: TAutoIncField;
    SPAAgrupacionesCuentasIdAgrupacion: TIntegerField;
    SPAAgrupacionesCuentasIdOrigenMonto: TIntegerField;
    SPAAgrupacionesCuentasCuenta: TStringField;
    Susuarios: TDBISAMTable;
    SusuariosNombre: TStringField;
    SusuariosCode: TAutoIncField;
    SusuariosDescripcion: TStringField;
    SusuariosUbicacion: TStringField;
    SusuariosFechaCreacion: TDateField;
    SusuariosFechaCaduca: TDateField;
    SusuariosClave: TStringField;
    SusuariosStatus: TSmallintField;
    SusuariosNameMenuADM: TBlobField;
    SusuariosNameMenuVenta: TBlobField;
    SusuariosNameMenuCompra: TBlobField;
    SusuariosNameMenuBanco: TBlobField;
    SusuariosNameMenuProdu: TBlobField;
    SusuariosNameMenuTaller: TBlobField;
    SusuariosCalendario: TBlobField;
    SusuariosHorario: TStringField;
    SusuariosJornada: TStringField;
    SusuariosAccesoUsuario: TBooleanField;
    SusuariosActivarSonido: TBooleanField;
    SusuariosAccesoAdm: TBooleanField;
    SusuariosAccesoVtas: TBooleanField;
    SusuariosAccesoCompras: TBooleanField;
    SusuariosAccesoBancos: TBooleanField;
    SusuariosAccesoProduc: TBooleanField;
    SusuariosAccesoTaller: TBooleanField;
    SusuariosEmail: TStringField;
    SusuariosModificaEstadistica: TBooleanField;
    SusuariosActivarSombra: TBooleanField;
    SusuariosActivar3D: TBooleanField;
    SusuariosAllowSystem: TBooleanField;
    SusuariosFlagTransaccion: TBlobField;
    SusuariosArrayPrecios: TStringField;
    SusuariosFlagMonedas: TBooleanField;
    SusuariosLoadAllTransaction: TBooleanField;
    SusuariosDirectorioHtml1: TStringField;
    SusuariosDirectorioHtml2: TStringField;
    SusuariosForcePreview: TBooleanField;
    SusuariosHidePrinter: TBooleanField;
    SusuariosPrinterSetup: TBooleanField;
    SusuariosBoldEncabezados: TStringField;
    SusuariosActiveMonedas: TBooleanField;
    SusuariosLastUpdateFactor: TDateField;
    SusuariosDirectorio_Datos: TStringField;
    SusuariosDirectorio_Historia: TStringField;
    SusuariosDirectorio_Sistema: TStringField;
    SusuariosDirectorio_Formas: TStringField;
    SusuariosDirectorio_Formatos: TStringField;
    SusuariosDirectorio_Reportes: TStringField;
    SusuariosDirectorio_Local: TStringField;
    SusuariosGrupo: TStringField;
    SusuariosBase_autoincrement: TAutoIncField;
    SusuariosDirectorio_Contabilidad: TStringField;
    SusuariosCode_Empresa: TStringField;
    SusuariosUsuario_Princial: TStringField;
    SusuariosDirectorio_Manager: TStringField;
    SusuariosAccesoRestaurant: TBooleanField;
    SusuariosFlagTranRestaurant: TBlobField;
    SusuariosNameMenuRestaurant: TBlobField;
    SusuariosNameMenuRestPos: TBlobField;
    SusuariosStatusPos: TSmallintField;
    SusuariosStatusRep: TSmallintField;
    SusuariosTelefonos: TStringField;
    SusuariosLimite: TCurrencyField;
    SusuariosMensajesDeTexto: TBooleanField;
    SusuariosCode_Caja: TStringField;
    SusuariosAccesoHotel: TBooleanField;
    SusuariosFlagTranHotel: TBlobField;
    SusuariosNameMenuHotel: TBlobField;
    SPAConfiguracionContable: TDBISAMTable;
    SPAConfiguracionContableIdConfiguracionContable: TAutoIncField;
    SPAConfiguracionContableComprobante: TStringField;
    SPAConfiguracionContableDescripcion: TStringField;
    SPAConfiguracionContableIdTipoTransaccion: TSmallintField;
    SPAConfiguracionContableIdTipoComprobante: TSmallintField;
    SPAMovimientoGeneradoIdTipoComprobante: TSmallintField;
    SPAMovimientoGeneradoIdTipoTransaccion: TSmallintField;
    SPAMovimientoGeneradoIdTipoOperacion: TSmallintField;
    SPAMovimientoGeneradoIdOrigenMonto: TSmallintField;
    SPAMovimientoGeneradoIdMovimientoGenerado: TAutoIncField;
    qrCompras: TDBISAMQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FMensaje : TLabel;
  public
    { Public declarations }
    procedure AbrirConfiguracion;
    procedure AbrirUsuarios;
    procedure BorrarCuentas;
    procedure AbrirSPAConfiguracionContable;
    procedure AbrirSPAConfiguracionContableMov;
    procedure AbrirSPAAgrupaciones;
    procedure AbrirSPAAgrupacionesCuentas;
    procedure AbrirSPAMovimientoGenerado;
    procedure ProcesarComprobante( P : TJvProgressBar; L : TLabel; IdTipoComprobante, IdTipoTransaccion : SmallInt);
    procedure ProcesarCompras( P : TJvProgressBar; IdTipoTransaccion : SmallInt);
    procedure PonerMensaje( S : string);
  end;

type
   tModulos = (moContai);
   tTiposTransaccion = (ttTodas, ttContado, ttCredito);
   tTiposComprobantes = (tcNinguno, tcInventario, tcCompras, tcVentas,
          tcCuentasxPagar, tcCuentasxCobrar);
   tOrigenMonto = (omMontoBruto, omComprasGravadas, omComprasExentas,
                  omDescuento1, omDescuento2, omFleteCompra, omIva1,
                  omIva2, omSaldoOperacion, omTotalCancelado, omFormaPago,
                  omDiferenciaAFavor, omDiferenciaEnContra, omDecuentoParcial);

var
  dmEC: TdmEC;

implementation

uses uBaseDatosA2, Dialogs;

{$R *.dfm}

procedure TdmEC.DataModuleCreate(Sender: TObject);
begin
 try
    tbModulos.Open;

    tbModulos.Append;
    tbModulosIdModulo.Value := Integer( moContai);
    tbModulosModulo.Value := 'Contai';
  except
  end;

  try
    tbTiposComprobantes.Open;

    tbTiposComprobantes.Append;
    tbTiposComprobantesIdTipoComprobante.Value := 0;
    tbTiposComprobantesTipoComprobante.Value := '';

    tbTiposComprobantes.Append;
    tbTiposComprobantesIdTipoComprobante.Value := 1;
    tbTiposComprobantesTipoComprobante.Value := 'Inventario';

    tbTiposComprobantes.Append;
    tbTiposComprobantesIdTipoComprobante.Value := 2;
    tbTiposComprobantesTipoComprobante.Value := 'Compras';

    tbTiposComprobantes.Append;
    tbTiposComprobantesIdTipoComprobante.Value := 3;
    tbTiposComprobantesTipoComprobante.Value := 'Ventas';

    tbTiposComprobantes.Append;
    tbTiposComprobantesIdTipoComprobante.Value := 4;
    tbTiposComprobantesTipoComprobante.Value := 'Cuentas x Pagar';

    tbTiposComprobantes.Append;
    tbTiposComprobantesIdTipoComprobante.Value := 5;
    tbTiposComprobantesTipoComprobante.Value := 'Cuentas x Cobrar';
    tbTiposComprobantes.Post;

  except

  end;

  try
    tbTipoTransaccion.Open;

    tbTipoTransaccion.Append;
    tbTipoTransaccionIdTipoTransaccion.Value := 0;
    tbTipoTransaccionTipoTransaccion.Value := 'Todas';

    tbTipoTransaccion.Append;
    tbTipoTransaccionIdTipoTransaccion.Value := 1;
    tbTipoTransaccionTipoTransaccion.Value := 'Contado';

    tbTipoTransaccion.Append;
    tbTipoTransaccionIdTipoTransaccion.Value := 2;
    tbTipoTransaccionTipoTransaccion.Value := 'Crédito';
    tbTipoTransaccion.Post;
  except
  end;

  try
    tbTipoOperacion.Open;

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoComprobante.Value := 1;
    tbTipoOperacionIdTipoOperacion.Value :=  1;
    tbTipoOperacionTipoOperacion.Value := 'Traslados';

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoComprobante.Value := 1;
    tbTipoOperacionIdTipoOperacion.Value :=  2;
    tbTipoOperacionTipoOperacion.Value := 'Cargos';

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoComprobante.Value := 1;
    tbTipoOperacionIdTipoOperacion.Value :=  3;
    tbTipoOperacionTipoOperacion.Value := 'Descargos';

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoComprobante.Value := 1;
    tbTipoOperacionIdTipoOperacion.Value :=  4;
    tbTipoOperacionTipoOperacion.Value := 'Ajustes';

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoComprobante.Value := 0;
    tbTipoOperacionIdTipoOperacion.Value :=  5;
    tbTipoOperacionTipoOperacion.Value := 'Ordenes de Compra';

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoComprobante.Value := 2;
    tbTipoOperacionIdTipoOperacion.Value :=  6;
    tbTipoOperacionTipoOperacion.Value := 'Compras';

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoComprobante.Value := 2;
    tbTipoOperacionIdTipoOperacion.Value :=  7;
    tbTipoOperacionTipoOperacion.Value := 'Devolución de Compras';

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoComprobante.Value := 0;
    tbTipoOperacionIdTipoOperacion.Value :=  8;
    tbTipoOperacionTipoOperacion.Value := 'Notas de Entregas en Compra';

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoComprobante.Value := 0;
    tbTipoOperacionIdTipoOperacion.Value :=  9;
    tbTipoOperacionTipoOperacion.Value := 'Presupuestos';

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoComprobante.Value := 0;
    tbTipoOperacionIdTipoOperacion.Value :=  10;
    tbTipoOperacionTipoOperacion.Value := 'Pedidos';

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoComprobante.Value := 4;
    tbTipoOperacionIdTipoOperacion.Value :=  11;
    tbTipoOperacionTipoOperacion.Value := 'Facturas';

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoComprobante.Value := 4;
    tbTipoOperacionIdTipoOperacion.Value :=  12;
    tbTipoOperacionTipoOperacion.Value := 'Devolución de Ventas';

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoComprobante.Value := 0;
    tbTipoOperacionIdTipoOperacion.Value :=  13;
    tbTipoOperacionTipoOperacion.Value := 'Notas de Entregas de Ventas';

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoComprobante.Value := 4;
    tbTipoOperacionIdTipoOperacion.Value :=  14;
    tbTipoOperacionTipoOperacion.Value := 'Apartados';

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoComprobante.Value := 0;
    tbTipoOperacionIdTipoOperacion.Value :=  23;
    tbTipoOperacionTipoOperacion.Value := 'Ordenes de Servicios';
    tbTipoOperacion.Post;

  except
  end;

  try
    tbOrigenMonto.Open;

    tbOrigenMonto.Append;
    tbOrigenMontoIdOrigenMonto.Value := 1;
    tbOrigenMontoOrigenMonto.Value := 'Monto Bruto';

    tbOrigenMonto.Append;
    tbOrigenMontoIdOrigenMonto.Value := 2;
    tbOrigenMontoOrigenMonto.Value := 'Compras Gravadas';

    tbOrigenMonto.Append;
    tbOrigenMontoIdOrigenMonto.Value := 3;
    tbOrigenMontoOrigenMonto.Value := 'Compras Exentas';

    tbOrigenMonto.Append;
    tbOrigenMontoIdOrigenMonto.Value := 4;
    tbOrigenMontoOrigenMonto.Value := 'Descuento 1';

    tbOrigenMonto.Append;
    tbOrigenMontoIdOrigenMonto.Value := 5;
    tbOrigenMontoOrigenMonto.Value := 'Descuento 2';

    tbOrigenMonto.Append;
    tbOrigenMontoIdOrigenMonto.Value := 6;
    tbOrigenMontoOrigenMonto.Value := 'Flete en Compra';

    tbOrigenMonto.Append;
    tbOrigenMontoIdOrigenMonto.Value := 7;
    tbOrigenMontoOrigenMonto.Value := 'Iva 1';

    tbOrigenMonto.Append;
    tbOrigenMontoIdOrigenMonto.Value := 8;
    tbOrigenMontoOrigenMonto.Value := 'Iva 2';

    tbOrigenMonto.Append;
    tbOrigenMontoIdOrigenMonto.Value := 9;
    tbOrigenMontoOrigenMonto.Value := 'Saldo Operación';

    tbOrigenMonto.Append;
    tbOrigenMontoIdOrigenMonto.Value := 10;
    tbOrigenMontoOrigenMonto.Value := 'Total Cancelado';

    tbOrigenMonto.Append;
    tbOrigenMontoIdOrigenMonto.Value := 11;
    tbOrigenMontoOrigenMonto.Value := 'Forma de Pago';

    tbOrigenMonto.Append;
    tbOrigenMontoIdOrigenMonto.Value := 12;
    tbOrigenMontoOrigenMonto.Value := 'Diferencia a Favor';

    tbOrigenMonto.Append;
    tbOrigenMontoIdOrigenMonto.Value := 13;
    tbOrigenMontoOrigenMonto.Value := 'Diferencia en Contra';

    tbOrigenMonto.Append;
    tbOrigenMontoIdOrigenMonto.Value := 14;
    tbOrigenMontoOrigenMonto.Value := 'Decuento Parcial';

    tbOrigenMonto.Post;

  except
  end;
end;

procedure TdmEC.PonerMensaje(S: string);
begin
  FMensaje.Caption := S;
  FMensaje.Refresh;
end;

procedure TdmEC.ProcesarCompras(P: TJvProgressBar; IdTipoTransaccion: SmallInt);
var
  Documento : string;
begin
  PonerMensaje( 'Iniciando consulta...');
  qrCompras.Close;
  qrCompras.Open;

  PonerMensaje( 'Iniciando lectura...');
  qrCompras.First;
  P.Min := 0;
  P.Position := 0;
  P.Max := qrCompras.RecordCount;
  while not qrCompras.Eof do
  begin
    Documento := qrCompras.FieldByName('Documento').Value;
    PonerMensaje( 'Documento ' + Documento);
    while not qrCompras.Eof and ( Documento = qrCompras.FieldByName('Documento').Value)do
    begin
      P.Position := P.Position + 1;
      qrCompras.Next;
    end;
  end;
  PonerMensaje( 'Finalizado');

end;

procedure TdmEC.ProcesarComprobante(P: TJvProgressBar; L : TLabel; IdTipoComprobante,
  IdTipoTransaccion: SmallInt);
begin
  FMensaje := L;
  case tTiposComprobantes( IdTipoComprobante) of
    tcInventario :
      begin

      end;
    tcCompras :
      begin
         ProcesarCompras( P, IdTipoTransaccion);
      end;
    tcVentas :
      begin

      end;
    tcCuentasxPagar :
      begin

      end;
    tcCuentasxCobrar :
      begin

      end;
  end;
end;

procedure TdmEC.AbrirSPAAgrupaciones;

begin
 // Si no existe el erachivo debe crearlo
  if Not FileExists(IncludeTrailingPathDelimiter(dmBasesDatos.dbA2.Directory) + SPAAgrupaciones.TableName + '.dat')  then
    SPAAgrupaciones.CreateTable();

  SPAAgrupaciones.Open;
end;

procedure TdmEC.AbrirSPAAgrupacionesCuentas;
var
  C : TStringField;
begin
  // Si no existe el erachivo debe crearlo
  if Not FileExists(IncludeTrailingPathDelimiter(dmBasesDatos.dbA2.Directory) + SPAAgrupacionesCuentas.TableName + '.dat')  then
    SPAAgrupacionesCuentas.CreateTable();

  // NombreCuenta
  C := TStringField.Create(SPAAgrupacionesCuentas);
  C.Name := 'SPAAgrupacionesCuentasNombreCuenta';
  C.FieldName := 'NombreCuenta';
  C.KeyFields := 'Cuenta';
  C.LookupDataSet := dmEC.a2CCuentas;
  C.LookupKeyFields := 'Codigo';
  C.LookupResultField := 'Descripcion';
  C.FieldKind := fkLookup;
  C.Dataset := SPAAgrupacionesCuentas;

  // Origen Movimiento
  C := TStringField.Create(SPAAgrupacionesCuentas);
  C.Name := 'SPAAgrupacionesCuentasOrigenMonto';
  C.FieldName := 'OrigenMonto';
  C.KeyFields := 'IdOrigenMonto';
  C.LookupDataSet := tbOrigenMonto;
  C.LookupKeyFields := 'IdOrigenMonto';
  C.LookupResultField := 'OrigenMonto';
  C.FieldKind := fkLookup;
  C.Dataset := SPAAgrupacionesCuentas;

  SPAAgrupacionesCuentas.Open;

end;

procedure TdmEC.AbrirConfiguracion;
var
  C : TStringField;
  S : string;
begin
  S := IncludeTrailingPathDelimiter(dmBasesDatos.dbA2.Directory);

  S := S + SPAConfiguracionExportarContabilidad.TableName + '.dat';

  // Si no existe el erachivo debe crearlo
  if Not FileExists( S)  then
  begin
    SPAConfiguracionExportarContabilidad.CreateTable();
  end;

  // Modulo
  C := TStringField.Create(SPAConfiguracionExportarContabilidad);
  C.Name := 'SPAConfiguracionExportarContabilidadModulo';
  C.FieldName := 'Modulo';
  C.KeyFields := 'ModuloAExportar';
  C.LookupDataSet := tbModulos;
  C.LookupKeyFields := 'IdModulo';
  C.LookupResultField := 'Modulo';
  C.FieldKind := fkLookup;
  C.Dataset := SPAConfiguracionExportarContabilidad;


  if not SPAConfiguracionExportarContabilidad.Active then
    SPAConfiguracionExportarContabilidad.Open;

  if SPAConfiguracionExportarContabilidad.RecordCount = 0 then
  begin
    SPAConfiguracionExportarContabilidad.Insert;
    SPAConfiguracionExportarContabilidad.Post;
  end;

end;

procedure TdmEC.AbrirSPAConfiguracionContable;
var
  C : TStringField;
begin
  try
    // Si no existe el erachivo debe crearlo
    if Not FileExists(IncludeTrailingPathDelimiter(dmBasesDatos.dbA2.Directory) + SPAConfiguracionContable.TableName + '.dat')  then
      SPAConfiguracionContable.CreateTable();

    // Adiciona manualmente los campos lookup

    // Tipo Comprobante
    C := TStringField.Create(SPAConfiguracionContable);
    C.Name := 'SPAConfiguracionContableTipoComprobante';
    C.FieldName := 'TipoComprobante';
    C.KeyFields := 'IdTipoComprobante';
    C.LookupDataSet := tbTiposComprobantes;
    C.LookupKeyFields := 'IdTipoComprobante';
    C.LookupResultField := 'TipoComprobante';
    C.FieldKind := fkLookup;
    C.Dataset := SPAConfiguracionContable;

    // Tipo Transaccion
    C := TStringField.Create(SPAConfiguracionContable);
    C.Name := 'SPAConfiguracionContableTipoTransaccion';
    C.FieldName := 'TipoTransaccion';
    C.KeyFields := 'IdTipoTransaccion';
    C.LookupDataSet := tbTipoTransaccion;
    C.LookupKeyFields := 'IdTipoTransaccion';
    C.LookupResultField := 'TipoTransaccion';
    C.FieldKind := fkLookup;
    C.Dataset := SPAConfiguracionContable;

    // Abre el archivo
    SPAConfiguracionContable.Open;
  except
    ShowMessage('Acurrió un error abriendo la tabla SPAConfiguracionContable.');
  end;

end;

procedure TdmEC.AbrirSPAConfiguracionContableMov;
var
  C : TStringField;
begin
  try
    // Si no existe el erachivo debe crearlo
    if Not FileExists(IncludeTrailingPathDelimiter(dmBasesDatos.dbA2.Directory) + SPAConfiguracionContableMov.TableName + '.dat')  then
      SPAConfiguracionContableMov.CreateTable();

    // Adiciona manualmente los campos lookup

    // Tipo Comprobante
    C := TStringField.Create(SPAConfiguracionContableMov);
    C.Name := 'SPAConfiguracionContableMovTipoOperacion';
    C.FieldName := 'TipoOperacion';
    C.KeyFields := 'IdTipoOperacion';
    C.LookupDataSet := tbTipoOperacion;
    C.LookupKeyFields := 'IdTipoOperacion';
    C.LookupResultField := 'TipoOperacion';
    C.FieldKind := fkLookup;
    C.Dataset := SPAConfiguracionContableMov;

    // Origen Movimiento
    C := TStringField.Create(SPAConfiguracionContableMov);
    C.Name := 'SPAConfiguracionContableMovOrigenMonto';
    C.FieldName := 'OrigenMonto';
    C.KeyFields := 'IdOrigenMonto';
    C.LookupDataSet := tbOrigenMonto;
    C.LookupKeyFields := 'IdOrigenMonto';
    C.LookupResultField := 'OrigenMonto';
    C.FieldKind := fkLookup;
    C.Dataset := SPAConfiguracionContableMov;

    // NombreCuenta
    C := TStringField.Create(SPAConfiguracionContableMov);
    C.Name := 'SPAConfiguracionContableMovNombreCuenta';
    C.FieldName := 'NombreCuenta';
    C.KeyFields := 'CuentaGeneral';
    C.LookupDataSet := dmEC.a2CCuentas;
    C.LookupKeyFields := 'Codigo';
    C.LookupResultField := 'Descripcion';
    C.FieldKind := fkLookup;
    C.Dataset := SPAConfiguracionContableMov;

    // Abre el archivo
    SPAConfiguracionContableMov.Open;
  except
    ShowMessage('Acurrió un error abriendo la tabla SPAConfiguracionContable.');
  end;
end;

procedure TdmEC.AbrirSPAMovimientoGenerado;
var
  C : TStringField;
begin
  try
    // Si no existe el erachivo debe crearlo
    if Not FileExists(IncludeTrailingPathDelimiter(dmBasesDatos.dbA2.Directory) + SPAMovimientoGenerado.TableName + '.dat')  then
      SPAMovimientoGenerado.CreateTable();

    SPAMovimientoGenerado.Open;
  except
  end;

end;

procedure TdmEC.AbrirUsuarios;
begin
  try
    if not Susuarios.Active then
      Susuarios.Open;
  except
  end;
end;

procedure TdmEC.BorrarCuentas;
begin
  if not a2CCuentas.Active then
    a2CCuentas.Open;

  a2CCuentas.Last;
  while Not a2CCuentas.BOF do
  begin
    a2CCuentas.Delete;
  end;
end;



end.
