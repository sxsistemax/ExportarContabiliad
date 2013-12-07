unit uDatosExportacion;

interface

uses
  SysUtils, Classes, JvMemoryDataset, DB, dbisamtb, JvProgressBar,
  uUtilidadesSPA, StdCtrls;

type
  tModulos = (moContai);
  tTiposTransaccion = (ttTodas, ttContado, ttCredito);
  tTiposComprobantes = (tcNinguno, tcInventario, tcCompras, tcVentas,
    tcCuentasxPagar, tcCuentasxCobrar);
  tOrigenMonto = (cmNinguno, omMontoBruto, omComprasGravadas, omComprasExentas,
    omDescuento1, omDescuento2, omFleteCompra, omIva1, omIva2,
    omSaldoOperacion, omTotalCancelado, omFormaPago, omDiferenciaAFavor,
    omDiferenciaEnContra, omDecuentoParcial);
  tTipoConsultas = (tcBorrarCuentas, tcMovimientoTemporal,
    tcBorrarMovimientoTemporal);

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
    tbCuentasContai: TJvMemoryData;
    tbCuentasContaiCuenta: TStringField;
    tbCuentasContaiDescripcion: TStringField;
    tbCuentasContaiManejaMovimiento: TStringField;
    tbCuentasContaiManejaTercero: TStringField;
    tbCuentasContaiManejaCentroCostos: TStringField;
    tbCuentasContaiTipoCuenta: TStringField;
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
    qrDocumentosInventario: TDBISAMQuery;
    SPAConfiguracionExportarContabilidadCampoAgruapacionInventario
      : TStringField;
    Sinventario: TDBISAMTable;
    SinventarioFI_CODIGO: TStringField;
    SinventarioFI_DESCRIPCION: TStringField;
    SinventarioFI_CATEGORIA: TStringField;
    SinventarioFI_DESCRIPCIONDETALLADA: TMemoField;
    SinventarioFI_VENDEDOR: TStringField;
    SinventarioFI_STATUS: TBooleanField;
    SinventarioFI_UNIDAD: TStringField;
    SinventarioFI_TIPOCODIGOBARRA: TSmallintField;
    SinventarioFI_IMAGEN: TGraphicField;
    SinventarioFI_SUSTITUTO1: TStringField;
    SinventarioFI_SUSTITUTO2: TStringField;
    SinventarioFI_SUSTITUTO3: TStringField;
    SinventarioFI_REFERENCIA: TStringField;
    SinventarioFI_MARCA: TStringField;
    SinventarioFI_MONEDA: TStringField;
    SinventarioFI_FACTORCONVERSION: TCurrencyField;
    SinventarioFI_UNDEXISTENCIA2: TStringField;
    SinventarioFI_PUESTO: TStringField;
    SinventarioFI_SUJETOACOMISION: TBooleanField;
    SinventarioFI_MONTOCOMISION: TCurrencyField;
    SinventarioFI_CUENTASCONTABLES: TSmallintField;
    SinventarioFI_PESOPRODUCTO: TCurrencyField;
    SinventarioFI_DIASDEREPOSICION: TSmallintField;
    SinventarioFI_PRESENTACION: TSmallintField;
    SinventarioFI_GARANTIA: TIntegerField;
    SinventarioFI_SUSTITUTO4: TStringField;
    SinventarioFI_SUSTITUTO5: TStringField;
    SinventarioFI_MONTOCOMISIONP: TBooleanField;
    SinventarioFI_DEPOSITOS: TBooleanField;
    SinventarioFI_OFERTAS: TBooleanField;
    SinventarioFI_VENCIMIENTOS: TBooleanField;
    SinventarioFI_CLASIFICACION: TIntegerField;
    SinventarioFI_MANEJOINVENTARIO: TIntegerField;
    SinventarioFI_SERIALES: TBooleanField;
    SinventarioFI_CREACION: TDateField;
    SinventarioFI_INVENTARIOINICIALUNIDADES: TCurrencyField;
    SinventarioFI_INVENTARIOINICIALCOSTO: TCurrencyField;
    SinventarioFI_CAPACIDAD: TCurrencyField;
    SinventarioFI_EXISTDECIMAL: TBooleanField;
    SinventarioFI_COMPUESTOSERIALES: TBooleanField;
    SinventarioFI_VENDEDORFIJO: TStringField;
    SinventarioFI_VENDEDORFIJOACTIVO: TBooleanField;
    SinventarioFI_MODELO: TStringField;
    SinventarioFI_SUBCATEGORIA: TStringField;
    SinventarioFI_PESOAFECTACOSTO: TBooleanField;
    SinventarioFI_IMPRESORA: TStringField;
    SinventarioBASE_AUTOINCREMENT: TAutoIncField;
    SinventarioFI_ZEXTRA1: TCurrencyField;
    SinventarioFI_ZEXTRA2: TCurrencyField;
    SinventarioFI_ZEXTRA3: TCurrencyField;
    SinventarioFI_ZEXTRA4: TCurrencyField;
    SinventarioFI_ZEXTRA5: TCurrencyField;
    SinventarioFI_ZEXTRA6: TCurrencyField;
    SinventarioFI_ZEXTRA1VENTA: TBooleanField;
    SinventarioFI_ZEXTRA2VENTA: TBooleanField;
    SinventarioFI_ZEXTRA3VENTA: TBooleanField;
    SinventarioFI_ZEXTRA4VENTA: TBooleanField;
    SinventarioFI_ZEXTRA5VENTA: TBooleanField;
    SinventarioFI_ZEXTRA6VENTA: TBooleanField;
    SinventarioFI_ZEXTRA1VENTAMOD: TBooleanField;
    SinventarioFI_ZEXTRA2VENTAMOD: TBooleanField;
    SinventarioFI_ZEXTRA3VENTAMOD: TBooleanField;
    SinventarioFI_ZEXTRA4VENTAMOD: TBooleanField;
    SinventarioFI_ZEXTRA5VENTAMOD: TBooleanField;
    SinventarioFI_ZEXTRA6VENTAMOD: TBooleanField;
    SinventarioFI_INTERNET: TBooleanField;
    SinventarioFI_BALANZA: TBooleanField;
    SinventarioFI_CODIGOBARRA: TBooleanField;
    SinventarioFI_PRECIOLISTA: TBooleanField;
    SinventarioFI_APROVECHAPORC: TCurrencyField;
    SinventarioFI_ARANCEL: TStringField;
    SinventarioFI_POSENTREGA: TBooleanField;
    SPAAgrupacionesCuentasIdAgrupacionCuenta: TAutoIncField;
    SPAAgrupacionesCuentasIdAgrupacion: TIntegerField;
    SPAAgrupacionesCuentasIdOrigenMonto: TIntegerField;
    SPAAgrupacionesCuentasCuenta: TStringField;
    SPAMovimientoTemp: TDBISAMTable;
    SPAMovimientoTempIdMovimientoGenerado: TAutoIncField;
    SPAMovimientoTempIdTipoComprobante: TSmallintField;
    SPAMovimientoTempIdTipoTransaccion: TSmallintField;
    SPAMovimientoTempIdTipoOperacion: TSmallintField;
    SPAMovimientoTempIdOrigenMonto: TSmallintField;
    SPAMovimientoTempCuenta: TStringField;
    SPAMovimientoTempComprobante: TStringField;
    SPAMovimientoTempFecha: TDateField;
    SPAMovimientoTempDocumento: TStringField;
    SPAMovimientoTempDocumentoRef: TStringField;
    SPAMovimientoTempNit: TStringField;
    SPAMovimientoTempDetalle: TStringField;
    SPAMovimientoTempTipo: TSmallintField;
    SPAMovimientoTempValor: TFloatField;
    SPAMovimientoTempBase: TFloatField;
    SPAMovimientoTempCCosto: TStringField;
    qrCodificacionGeneral: TDBISAMQuery;
    qrCodificacionGeneralIdTipoComprobante: TSmallintField;
    qrCodificacionGeneralComprobante: TStringField;
    qrCodificacionGeneralIdTipoTransaccion: TSmallintField;
    qrCodificacionGeneralIdTipoOperacion: TIntegerField;
    qrCodificacionGeneralIdOrigenMonto: TIntegerField;
    qrCodificacionGeneralDetalle: TStringField;
    qrCodificacionGeneralCuentaGeneral: TStringField;
    qrCodificacionGeneralTipoAsiento: TSmallintField;
    qrConsulta: TDBISAMQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FMensaje: TLabel;
  public
    { Public declarations }
    procedure AbrirConfiguracion;
    procedure AbrirUsuarios;
    procedure AbrirInventario;
    procedure BorrarCuentas;
    procedure AbrirSPAConfiguracionContable;
    procedure AbrirSPAConfiguracionContableMov;
    procedure AbrirSPAAgrupaciones;
    procedure AbrirSPAAgrupacionesCuentas;
    procedure AbrirSPAMovimientoGenerado;
    procedure ProcesarComprobante(P: TJvProgressBar; L: TLabel;
      IdTipoComprobante, IdTipoTransaccion: SmallInt);
    procedure ProcesarCompras(P: TJvProgressBar;
      IdTipoComprobante, IdTipoTransaccion, IdTipoOperacion: SmallInt);
    procedure PonerMensaje(S: string);
    function BuscarCuentaAgrupacion(IdAgrupacion, IdOrigenMonto: integer;
      Cuenta: string): string;
    procedure CargarCodifcacionGeneral(IdTipoComprobante, IdTipoTransaccion,
      IdTipoOperacion: integer);
    procedure CargarConsultaOperacionsInv(IdTipoComprobante, IdTipoTransaccion,
      IdTipoOperacion: integer);
    procedure InsertarRegistroTemporal(IdTipoComprobante, IdTipoTransaccion,
      IdTipoOperacion, IdOrigenMonto: integer; Cuenta, Comprobante: string;
      Fecha: TDate; Documento, DocumentoRef, Nit, Detalle: string;
      Tipo: integer; Valor, Base: Double; CCosto: String);
    procedure MoverTemporalAGenerado;
    procedure EjecutarConsulta(IdTipoConsulta: tTipoConsultas);
  end;

var
  dmEC: TdmEC;

implementation

uses uBaseDatosA2, Dialogs, Variants, uTablasConBlobAdministrativo;
{$R *.dfm}

procedure TdmEC.DataModuleCreate(Sender: TObject);
begin
  try
    tbModulos.Open;

    tbModulos.Append;
    tbModulosIdModulo.Value := integer(moContai);
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
    tbTipoOperacionIdTipoOperacion.Value := 1;
    tbTipoOperacionTipoOperacion.Value := 'Traslados';

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoComprobante.Value := 1;
    tbTipoOperacionIdTipoOperacion.Value := 2;
    tbTipoOperacionTipoOperacion.Value := 'Cargos';

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoComprobante.Value := 1;
    tbTipoOperacionIdTipoOperacion.Value := 3;
    tbTipoOperacionTipoOperacion.Value := 'Descargos';

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoComprobante.Value := 1;
    tbTipoOperacionIdTipoOperacion.Value := 4;
    tbTipoOperacionTipoOperacion.Value := 'Ajustes';

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoComprobante.Value := 0;
    tbTipoOperacionIdTipoOperacion.Value := 5;
    tbTipoOperacionTipoOperacion.Value := 'Ordenes de Compra';

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoComprobante.Value := 2;
    tbTipoOperacionIdTipoOperacion.Value := 6;
    tbTipoOperacionTipoOperacion.Value := 'Compras';

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoComprobante.Value := 2;
    tbTipoOperacionIdTipoOperacion.Value := 7;
    tbTipoOperacionTipoOperacion.Value := 'Devolución de Compras';

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoComprobante.Value := 0;
    tbTipoOperacionIdTipoOperacion.Value := 8;
    tbTipoOperacionTipoOperacion.Value := 'Notas de Entregas en Compra';

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoComprobante.Value := 0;
    tbTipoOperacionIdTipoOperacion.Value := 9;
    tbTipoOperacionTipoOperacion.Value := 'Presupuestos';

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoComprobante.Value := 0;
    tbTipoOperacionIdTipoOperacion.Value := 10;
    tbTipoOperacionTipoOperacion.Value := 'Pedidos';

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoComprobante.Value := 4;
    tbTipoOperacionIdTipoOperacion.Value := 11;
    tbTipoOperacionTipoOperacion.Value := 'Facturas';

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoComprobante.Value := 4;
    tbTipoOperacionIdTipoOperacion.Value := 12;
    tbTipoOperacionTipoOperacion.Value := 'Devolución de Ventas';

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoComprobante.Value := 0;
    tbTipoOperacionIdTipoOperacion.Value := 13;
    tbTipoOperacionTipoOperacion.Value := 'Notas de Entregas de Ventas';

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoComprobante.Value := 4;
    tbTipoOperacionIdTipoOperacion.Value := 14;
    tbTipoOperacionTipoOperacion.Value := 'Apartados';

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoComprobante.Value := 0;
    tbTipoOperacionIdTipoOperacion.Value := 23;
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

procedure TdmEC.InsertarRegistroTemporal(IdTipoComprobante, IdTipoTransaccion,
  IdTipoOperacion, IdOrigenMonto: integer; Cuenta, Comprobante: string;
  Fecha: TDate; Documento, DocumentoRef, Nit, Detalle: string; Tipo: integer;
  Valor, Base: Double; CCosto: String);
begin
  // valida que no se inserte un valor en 0 con base
  if ( Valor = 0) and ( Base <> 0)  then
    exit;

  SPAMovimientoTemp.Insert;
  SPAMovimientoTempIdTipoComprobante.Value := IdTipoComprobante;
  SPAMovimientoTempIdTipoTransaccion.Value := IdTipoTransaccion;
  SPAMovimientoTempIdTipoOperacion.Value := IdTipoOperacion;
  SPAMovimientoTempIdOrigenMonto.Value := IdOrigenMonto;
  SPAMovimientoTempCuenta.Value := Cuenta;
  SPAMovimientoTempComprobante.Value := Comprobante;
  SPAMovimientoTempFecha.Value := Fecha;
  SPAMovimientoTempDocumento.Value := Documento;
  SPAMovimientoTempDocumentoRef.Value := DocumentoRef;
  SPAMovimientoTempNit.Value := Nit;
  SPAMovimientoTempDetalle.Value := Detalle;
  SPAMovimientoTempTipo.Value := Tipo;
  SPAMovimientoTempValor.Value := Valor;
  SPAMovimientoTempBase.Value := Base;
  SPAMovimientoTempCCosto.Value := CCosto + '';
  SPAMovimientoTemp.Post;
end;

procedure TdmEC.MoverTemporalAGenerado;
begin
  // Llama la consulta general
  EjecutarConsulta(tcMovimientoTemporal);

  qrConsulta.First;
  while not qrConsulta.Eof do
  begin
    SPAMovimientoGenerado.Insert;
    SPAMovimientoGeneradoIdTipoComprobante.Value := qrConsulta.FieldByName
      ('IdTipoComprobante').Value;
    SPAMovimientoGeneradoIdTipoTransaccion.Value := qrConsulta.FieldByName
      ('IdTipoTransaccion').Value;
    SPAMovimientoGeneradoIdTipoOperacion.Value := qrConsulta.FieldByName
      ('IdTipoOperacion').Value;
    SPAMovimientoGeneradoIdOrigenMonto.Value := qrConsulta.FieldByName
      ('IdOrigenMonto').Value;
    SPAMovimientoGeneradoCuenta.Value := qrConsulta.FieldByName('Cuenta').Value;
    SPAMovimientoGeneradoComprobante.Value := qrConsulta.FieldByName
      ('Comprobante').Value;
    SPAMovimientoGeneradoFecha.Value := qrConsulta.FieldByName('Fecha').Value;
    SPAMovimientoGeneradoDocumento.Value := qrConsulta.FieldByName('Documento')
      .Value;
    SPAMovimientoGeneradoDocumentoRef.Value := qrConsulta.FieldByName
      ('DocumentoRef').Value;
    SPAMovimientoGeneradoNit.Value := qrConsulta.FieldByName('Nit').Value;
    SPAMovimientoGeneradoDetalle.Value := qrConsulta.FieldByName('Detalle')
      .Value;
    SPAMovimientoGeneradoTipo.Value := qrConsulta.FieldByName('Tipo').Value;
    SPAMovimientoGeneradoValor.Value := Trunc( qrConsulta.FieldByName('Valor').Value);
    SPAMovimientoGeneradoBase.Value := Trunc( qrConsulta.FieldByName('Base').Value);
    SPAMovimientoGeneradoCCosto.Value := VarToStr( qrConsulta.FieldByName('CCosto').Value);
    SPAMovimientoGeneradoExportado.Value := False;
    SPAMovimientoGenerado.Post;
    qrConsulta.Next;
  end;
  EjecutarConsulta(tcBorrarMovimientoTemporal);

end;

procedure TdmEC.PonerMensaje(S: string);
begin
  FMensaje.Caption := S;
  FMensaje.Refresh;
end;

procedure TdmEC.ProcesarComprobante(P: TJvProgressBar; L: TLabel;
  IdTipoComprobante, IdTipoTransaccion: SmallInt);
begin
  FMensaje := L;
  case tTiposComprobantes(IdTipoComprobante) of
    tcInventario:
      begin

      end;
    tcCompras:
      begin
        ProcesarCompras(P, IdTipoComprobante, IdTipoTransaccion,
          integer(toiCompras));
      end;
    tcVentas:
      begin

      end;
    tcCuentasxPagar:
      begin

      end;
    tcCuentasxCobrar:
      begin

      end;
  end;
end;

procedure TdmEC.AbrirSPAAgrupaciones;

begin
  // Si no existe el erachivo debe crearlo
  if Not FileExists(IncludeTrailingPathDelimiter(dmBasesDatos.dbA2.Directory)
      + SPAAgrupaciones.TableName + '.dat') then
    SPAAgrupaciones.CreateTable();

  SPAAgrupaciones.Open;
end;

procedure TdmEC.AbrirSPAAgrupacionesCuentas;
var
  C: TStringField;
begin
  // Si no existe el erachivo debe crearlo
  if Not FileExists(IncludeTrailingPathDelimiter(dmBasesDatos.dbA2.Directory)
      + SPAAgrupacionesCuentas.TableName + '.dat') then
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
  C: TStringField;
  S: string;
begin
  S := IncludeTrailingPathDelimiter(dmBasesDatos.dbA2.Directory);

  S := S + SPAConfiguracionExportarContabilidad.TableName + '.dat';

  // Si no existe el erachivo debe crearlo
  if Not FileExists(S) then
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
  C: TStringField;
begin
  try
    // Si no existe el erachivo debe crearlo
    if Not FileExists(IncludeTrailingPathDelimiter(dmBasesDatos.dbA2.Directory)
        + SPAConfiguracionContable.TableName + '.dat') then
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
  C: TStringField;
begin
  try
    // Si no existe el erachivo debe crearlo
    if Not FileExists(IncludeTrailingPathDelimiter(dmBasesDatos.dbA2.Directory)
        + SPAConfiguracionContableMov.TableName + '.dat') then
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
  C: TStringField;
begin
  try
    // Si no existe el erachivo debe crearlo
    if Not FileExists(IncludeTrailingPathDelimiter(dmBasesDatos.dbA2.Directory)
        + SPAMovimientoGenerado.TableName + '.dat') then
      SPAMovimientoGenerado.CreateTable();

    // Si no existe el erachivo debe crearlo
    if Not FileExists(IncludeTrailingPathDelimiter(dmBasesDatos.dbA2.Directory)
        + SPAMovimientoTemp.TableName + '.dat') then
      SPAMovimientoTemp.CreateTable();

    SPAMovimientoGenerado.Open;
    SPAMovimientoTemp.Open;
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

procedure TdmEC.EjecutarConsulta(IdTipoConsulta: tTipoConsultas);
var
  SQL: string;
begin
  qrConsulta.Close;

  case IdTipoConsulta of
    tcMovimientoTemporal:
      SQL := 'SELECT                                    ' +
        '   SPAMovimientoTemp.IdTipoComprobante,   ' +
        '   SPAMovimientoTemp.IdTipoTransaccion,   ' +
        '   SPAMovimientoTemp.IdTipoOperacion,     ' +
        '   SPAMovimientoTemp.IdOrigenMonto,       ' +
        '   SPAMovimientoTemp.Cuenta,              ' +
        '   SPAMovimientoTemp.Comprobante,         ' +
        '   SPAMovimientoTemp.Fecha,               ' +
        '   SPAMovimientoTemp.Documento,           ' +
        '   SPAMovimientoTemp.DocumentoRef,        ' +
        '   SPAMovimientoTemp.Nit,                 ' +
        '   SPAMovimientoTemp.Detalle,             ' +
        '   SPAMovimientoTemp.Tipo,                ' +
        '   SPAMovimientoTemp.CCosto,              ' +
        '   SUM(SPAMovimientoTemp.Valor) AS Valor, ' +
        '   SUM(SPAMovimientoTemp.Base) AS Base    ' +
        ' FROM                                     ' +
        '  SPAMovimientoTemp                       ' +
        ' GROUP BY                                 ' +
        '   SPAMovimientoTemp.IdTipoComprobante,   ' +
        '   SPAMovimientoTemp.IdTipoTransaccion,   ' +
        '   SPAMovimientoTemp.IdTipoOperacion,     ' +
        '   SPAMovimientoTemp.IdOrigenMonto,       ' +
        '   SPAMovimientoTemp.Cuenta,              ' +
        '   SPAMovimientoTemp.Comprobante,         ' +
        '   SPAMovimientoTemp.Fecha,               ' +
        '   SPAMovimientoTemp.Documento,           ' +
        '   SPAMovimientoTemp.DocumentoRef,        ' +
        '   SPAMovimientoTemp.Nit,                 ' +
        '   SPAMovimientoTemp.Detalle,             ' +
        '   SPAMovimientoTemp.Tipo,                ' +
        '   SPAMovimientoTemp.CCosto';
    tcBorrarMovimientoTemporal:
      SQL := 'delete from SPAMovimientoTemp';
    tcBorrarCuentas:
      SQL := 'delete from a2Cuentas';
  end;

  qrConsulta.SQL.Text := SQL;
  if IdTipoConsulta in [tcBorrarMovimientoTemporal, tcBorrarCuentas] then
    qrConsulta.ExecSQL
  else
    qrConsulta.Open;
end;

procedure TdmEC.AbrirInventario;
begin
  try
    if not Sinventario.Active then
      Sinventario.Open;
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

function TdmEC.BuscarCuentaAgrupacion(IdAgrupacion, IdOrigenMonto: integer;
  Cuenta: string): string;
begin
  Result := Cuenta;
  if SPAAgrupacionesCuentas.Locate('IdAgrupacion;IdOrigenMonto',
    VarArrayOf([IdAgrupacion, IdOrigenMonto]), []) then
  begin
    Result := SPAAgrupacionesCuentasCuenta.Value;
  end;

end;

procedure TdmEC.CargarCodifcacionGeneral(IdTipoComprobante, IdTipoTransaccion,
  IdTipoOperacion: integer);
begin
  qrCodificacionGeneral.Close;
  qrCodificacionGeneral.ParamByName('IdTipoComprobante').Value := IdTipoComprobante;
  qrCodificacionGeneral.ParamByName('IdTipoTransaccion').Value := IdTipoTransaccion;
  qrCodificacionGeneral.ParamByName('IdTipoOperacion').Value   := IdTipoOperacion;
  qrCodificacionGeneral.Open;
end;

procedure TdmEC.CargarConsultaOperacionsInv(IdTipoComprobante, IdTipoTransaccion,
  IdTipoOperacion: integer);
var
  SQL: string;
begin
  case tTiposComprobantes(IdTipoComprobante) of
    tcCompras:
      begin
          SQL := 'SELECT ' +
            '  SOperacionInv.FTI_DOCUMENTO AS Documento,                                               '         +
            '  SOperacionInv.FTI_FECHAEMISION AS Fecha,                                                '         +
            '  SOperacionInv.FTI_TOTALCOSTO AS TotalCosto,                                             '         +
            '  SOperacionInv.FTI_TOTALCOSTOREAL AS TotalCostoReal,                                     '         +
            '  SOperacionInv.FTI_TOTALBRUTO AS TotalBruto,                                             '         +
            '  SOperacionInv.FTI_DESCUENTO1MONTO AS Descuento1,                                        '         +
            '  SOperacionInv.FTI_DESCUENTO2MONTO AS Descuento2,                                        '         +
            '  SOperacionInv.FTI_BASEIMPONIBLE AS BaseImpuesto,                                        '         +
            '  SOperacionInv.FTI_IMPUESTO1MONTO AS Impuesto,                                           '         +
            '  SOperacionInv.FTI_TOTALNETO AS TotalNeto,                                               '         +
            '  SOperacionInv.FTI_RESPONSABLE AS Nit,                                                    '         +
            '  SOperacionInv.FTI_PERSONACONTACTO AS Contacto,                                          '         +
            '  SOperacionInv.FTI_TELEFONOCONTACTO AS Telefono,                                         '         +
            '  SOperacionInv.FTI_SALDOOPERACION AS SaldoOperacion,                                     '        +
            '  SOperacionInv.FTI_FORMADEPAGO AS FormaPago,                                             '        +
            '  SOperacionInv.FTI_FLETEMONEDA AS Flete,                                                 ' +
            '  SOperacionInv.FTI_MONTOPAGADO AS MontoPagado,                                           ' +
            SPAConfiguracionExportarContabilidadCampoAgruapacionInventario.Value + ' AS IdAgrupacion,  ' +
            '  SDetalleCompra.FDI_CANTIDAD AS Cantidad,                                                ' +
            '  SDetalleCompra.FDI_COSTOOPERACION AS Costo,                                                      ' +
            '  SDetalleCompra.FDI_CANTIDAD * SDetalleCompra.FDI_COSTOOPERACION AS TotalItem,                    ' +
            '  SOperacionInv.FTI_CTOCOSTO AS CCosto,                                                   ' +
            '  SDetalleCompra.FDI_MONTOIMPUESTO1 AS Impuesto1,                                         ' +
            '  SDetalleCompra.FDI_CANTIDAD * SDetalleCompra.FDI_MONTOIMPUESTO1 AS TotalImpuestoItem    ' +
            'FROM                                                                                      ' +
            ' SOperacionInv                                                                            ' +
            ' INNER JOIN SDetalleCompra ON (SOperacionInv.FTI_TIPO=SDetalleCompra.FDI_TIPOOPERACION)   ' +
            '  AND (SOperacionInv.FTI_DOCUMENTO=SDetalleCompra.FDI_DOCUMENTO)                          ' +
            ' INNER JOIN Sinventario ON (SDetalleCompra.FDI_CODIGO=Sinventario.FI_CODIGO)              ' +
            'WHERE                                                                                     ' +
            '  FTI_DOCUMENTO = ''3139''  And ' +
            '  (SOperacionInv.FTI_TIPO = ' + IntToStr(IdTipoOperacion) + ')';
        case tTiposTransaccion( IdTipoTransaccion) of
          ttContado : SQL := SQL + 'and FTI_SALDOOPERACION = 0';
          ttCredito : SQL := SQL + 'and FTI_SALDOOPERACION <> 0';
        end;

      end;
  end;

  qrDocumentosInventario.Close;
  qrDocumentosInventario.SQL.Text := SQL;
  qrDocumentosInventario.Open;

end;

procedure TdmEC.ProcesarCompras(P: TJvProgressBar;
  IdTipoComprobante, IdTipoTransaccion, IdTipoOperacion: SmallInt);
var
  Documento: string;
  TotalDocumento: Double;
  Cuenta: string;
  ProcesarSaldo,
  ProcesarTotal : boolean;
begin
  PonerMensaje('Iniciando consulta compras...');

  // Hace la consulta de los documentos por la transacción
  CargarConsultaOperacionsInv(IdTipoComprobante, IdTipoTransaccion, IdTipoOperacion);

  //Borra el temporal
  EjecutarConsulta( tcBorrarMovimientoTemporal);

  PonerMensaje('Iniciando lectura compras...');

  // Recorre el resultado de la consulta
  qrDocumentosInventario.First;
  P.Min := 0;
  P.Position := 0;
  P.Max := qrDocumentosInventario.RecordCount;
  while not qrDocumentosInventario.Eof do
  begin
    // Procesa el documento
    TotalDocumento := 0;
    ProcesarTotal := true;
    ProcesarSaldo := true;
    Documento := qrDocumentosInventario.FieldByName('Documento').Value;
    PonerMensaje('Documento ' + Documento);
    while not qrDocumentosInventario.Eof and
      (Documento = qrDocumentosInventario.FieldByName
        ('Documento').Value) do
    begin
      // Busca la codificación del comprobante
      CargarCodifcacionGeneral(IdTipoComprobante, IdTipoTransaccion,
        IdTipoOperacion);

      // Procesa la codificacion general
      qrCodificacionGeneral.First;
      while not qrCodificacionGeneral.Eof do
      begin
        // Busca la cuenta
        Cuenta := BuscarCuentaAgrupacion(qrDocumentosInventario.FieldByName
            ('IdAgrupacion').Value, qrCodificacionGeneralIdOrigenMonto.Value,
          qrCodificacionGeneralCuentaGeneral.Value);

        // Inserta el detalles
        case tOrigenMonto(qrCodificacionGeneralIdOrigenMonto.Value) of
          omMontoBruto:
            InsertarRegistroTemporal(IdTipoComprobante, IdTipoTransaccion,
              IdTipoOperacion, qrCodificacionGeneralIdOrigenMonto.Value,
              Cuenta, qrCodificacionGeneralComprobante.Value,
              qrDocumentosInventario.FieldByName('Fecha').Value,
              qrDocumentosInventario.FieldByName('Documento').Value,
              qrDocumentosInventario.FieldByName('Documento').Value,
              qrDocumentosInventario.FieldByName('Nit').Value,
              qrCodificacionGeneralDetalle.Value + ' ' +
                qrDocumentosInventario.FieldByName('Documento').Value,
              qrCodificacionGeneralTipoAsiento.Value,
              qrDocumentosInventario.FieldByName('TotalItem').Value, 0,
              VarToStr( qrDocumentosInventario.FieldByName('CCosto').Value));

          omIva1:
            InsertarRegistroTemporal(IdTipoComprobante, IdTipoTransaccion,
              IdTipoOperacion, qrCodificacionGeneralIdOrigenMonto.Value,
              Cuenta, qrCodificacionGeneralComprobante.Value,
              qrDocumentosInventario.FieldByName('Fecha').Value,
              qrDocumentosInventario.FieldByName('Documento').Value,
              qrDocumentosInventario.FieldByName('Documento').Value,
              qrDocumentosInventario.FieldByName('Nit').Value,
              qrCodificacionGeneralDetalle.Value + ' ' +
                qrDocumentosInventario.FieldByName('Documento').Value,
              qrCodificacionGeneralTipoAsiento.Value,
              qrDocumentosInventario.FieldByName('TotalImpuestoItem').Value,
              qrDocumentosInventario.FieldByName('TotalItem').Value,
              VarToStr( qrDocumentosInventario.FieldByName('CCosto').Value));

          omComprasGravadas, omComprasExentas :
            InsertarRegistroTemporal(IdTipoComprobante, IdTipoTransaccion,
              IdTipoOperacion, qrCodificacionGeneralIdOrigenMonto.Value,
              Cuenta, qrCodificacionGeneralComprobante.Value,
              qrDocumentosInventario.FieldByName('Fecha').Value,
              qrDocumentosInventario.FieldByName('Documento').Value,
              qrDocumentosInventario.FieldByName('Documento').Value,
              qrDocumentosInventario.FieldByName('Nit').Value,
              qrCodificacionGeneralDetalle.Value + ' ' +
                qrDocumentosInventario.FieldByName('Documento').Value,
              qrCodificacionGeneralTipoAsiento.Value,
              qrDocumentosInventario.FieldByName('TotalItem').Value +
                qrDocumentosInventario.FieldByName('TotalImpuestoItem').Value, 0,
              VarToStr( qrDocumentosInventario.FieldByName('CCosto').Value));
          omSaldoOperacion :
            if ProcesarSaldo then
            begin
              ProcesarSaldo := False;

              // Guarda saldo operacion
              if qrDocumentosInventario.FieldByName('SaldoOperacion').Value <> 0 then
              begin
                InsertarRegistroTemporal(IdTipoComprobante, IdTipoTransaccion,
                  IdTipoOperacion, qrCodificacionGeneralIdOrigenMonto.Value,
                  Cuenta, qrCodificacionGeneralComprobante.Value,
                  qrDocumentosInventario.FieldByName('Fecha').Value,
                  qrDocumentosInventario.FieldByName('Documento').Value,
                  qrDocumentosInventario.FieldByName('Documento').Value,
                  qrDocumentosInventario.FieldByName('Nit').Value,
                  qrCodificacionGeneralDetalle.Value + ' ' +
                  qrDocumentosInventario.FieldByName('Documento').Value,
                  qrCodificacionGeneralTipoAsiento.Value,
                  qrDocumentosInventario.FieldByName('SaldoOperacion').Value,
                  0,
                  VarToStr( qrDocumentosInventario.FieldByName('CCosto').Value));
              end;
            end;
          omTotalCancelado :
            if ProcesarTotal then
            begin
              ProcesarTotal := False;

              // Guarda el total de la operacion
              if qrDocumentosInventario.FieldByName('TotalNeto').Value -
                 qrDocumentosInventario.FieldByName('SaldoOperacion').Value > 0 then
              begin

                // Carga las formas de pago
                dmAdministrativo.CargarTablaFormasPago( SPAConfiguracionContable,
                      qrDocumentosInventario.FieldByName('FormaPago') as TBlobField);

                dmAdministrativo.tbFormaPago.First;
                while not dmAdministrativo.tbFormaPago.EOF do
                begin
                  case tFormasPago(dmAdministrativo.tbFormaPagoTipoPago.Value) of
                    fpEfectivo :
                      InsertarRegistroTemporal(IdTipoComprobante, IdTipoTransaccion,
                        IdTipoOperacion, qrCodificacionGeneralIdOrigenMonto.Value,
                        Cuenta, qrCodificacionGeneralComprobante.Value,
                        qrDocumentosInventario.FieldByName('Fecha').Value,
                        qrDocumentosInventario.FieldByName('Documento').Value,
                        qrDocumentosInventario.FieldByName('Documento').Value,
                        qrDocumentosInventario.FieldByName('Nit').Value,
                        qrCodificacionGeneralDetalle.Value + ' ' +
                        qrDocumentosInventario.FieldByName('Documento').Value,
                        qrCodificacionGeneralTipoAsiento.Value,
                        qrDocumentosInventario.FieldByName('TotalNeto').Value -
                        qrDocumentosInventario.FieldByName('SaldoOperacion').Value,
                        0,
                        VarToStr( qrDocumentosInventario.FieldByName('CCosto').Value));

                    fpCheque :
                      begin
                        Cuenta := 'Cheque';
                        InsertarRegistroTemporal(IdTipoComprobante, IdTipoTransaccion,
                          IdTipoOperacion, qrCodificacionGeneralIdOrigenMonto.Value,
                          Cuenta, qrCodificacionGeneralComprobante.Value,
                          qrDocumentosInventario.FieldByName('Fecha').Value,
                          qrDocumentosInventario.FieldByName('Documento').Value,
                          qrDocumentosInventario.FieldByName('Documento').Value,
                          qrDocumentosInventario.FieldByName('Nit').Value,
                          qrCodificacionGeneralDetalle.Value + ' ' +
                          qrDocumentosInventario.FieldByName('Documento').Value,
                          qrCodificacionGeneralTipoAsiento.Value,
                          qrDocumentosInventario.FieldByName('TotalNeto').Value -
                          qrDocumentosInventario.FieldByName('SaldoOperacion').Value,
                          0,
                          VarToStr( qrDocumentosInventario.FieldByName('CCosto').Value));
                      end;
                  end;
                  dmAdministrativo.tbFormaPago.Next;
                end;

              end;


            end;
        end;
        qrCodificacionGeneral.Next;
      end;
      P.Position := P.Position + 1;
      qrDocumentosInventario.Next;
    end;

    MoverTemporalAGenerado;
  end;
  PonerMensaje('Finalizado');

end;

end.
