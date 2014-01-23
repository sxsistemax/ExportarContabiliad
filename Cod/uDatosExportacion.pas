unit uDatosExportacion;

interface

uses
  SysUtils, Classes, JvMemoryDataset, DB, dbisamtb, JvProgressBar,
  uUtilidadesSPA, StdCtrls, uTablasConBlobAdministrativo, Dialogs, JvBaseDlg,
  JvProgressDialog;

type
  tModulos = (moContai);
  tTiposComprobantes = (tcNinguno, tcInventario, tcCompras, tcVentas,
    tcCuentasxPagar, tcCuentasxCobrar);
  tOrigenMonto = (cmNinguno, omValorBruto, omValorGrabado, omValorExento,
    omDescuento1, omDescuento2, omFleteCompra, omIva1, omIva2,
    omSaldoOperacion, omValorCancelado, omDiferenciaAFavor,
    omDiferenciaEnContra, omCree, omRetencionEnFormasPago, omCreePorPagar);
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
    SPAConfiguracionContableMovIdOrigenMonto: TIntegerField;
    SPAConfiguracionContableMovDetalle: TStringField;
    SPAConfiguracionContableMovCuentaGeneral: TStringField;
    SPAConfiguracionContableMovTipoAsiento: TSmallintField;
    tbOrigenMonto: TJvMemoryData;
    tbOrigenMontoIdOrigenMonto: TSmallintField;
    tbOrigenMontoOrigenMonto: TStringField;
    tbTipoOperacion: TJvMemoryData;
    tbTipoOperacionIdTipoOperacion: TSmallintField;
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
    qrCodificacionGeneralComprobante: TStringField;
    qrCodificacionGeneralIdOrigenMonto: TIntegerField;
    qrCodificacionGeneralDetalle: TStringField;
    qrCodificacionGeneralCuentaGeneral: TStringField;
    qrCodificacionGeneralTipoAsiento: TSmallintField;
    qrConsulta: TDBISAMQuery;
    dbConsecutivos: TDBISAMDatabase;
    SPAConfiguracionExportarContabilidadRutaConsecutivos: TStringField;
    SPAConsecutivos: TDBISAMTable;
    SPAConsecutivosIdConsecutivo: TAutoIncField;
    SPAConsecutivosDescripcion: TStringField;
    SPAConfiguracionContableIdConsecutivo: TIntegerField;
    a2CCostos: TDBISAMTable;
    a2CCostosCODIGO: TStringField;
    a2CCostosDESCRIPCION: TStringField;
    a2CCostosTIPO: TSmallintField;
    a2CCostosCGRUPO: TStringField;
    a2CCostosCSUBGRUPO: TStringField;
    a2CCostosMANEJA_PRESUPUESTO: TBooleanField;
    a2CCostosMOVIMIENTO: TBooleanField;
    a2CCostosREFERENCIA: TStringField;
    a2CCostosSTATUS: TBooleanField;
    a2CCostosFLAG: TStringField;
    a2CCostosBASE_AUTOINCREMENT: TAutoIncField;
    SPACuentasxCentro: TDBISAMTable;
    SPAAgrupacionesCuentasIdTipoOperacion: TIntegerField;
    SPAConfiguracionExportarContabilidadPorcentajeCREE: TFloatField;
    SPACuentasxCentroIdConfiguracionContable: TAutoIncField;
    SPACuentasxCentroIdCuentasxCentro: TAutoIncField;
    SPACuentasxCentroIdOrigenMonto: TIntegerField;
    SPACuentasxCentroCuenta: TStringField;
    SPAClasificacionCuentas: TDBISAMTable;
    SPAClasificacionCuentasIdClasificacionCuenta: TAutoIncField;
    SPAClasificacionCuentasIdConfiguracionContable: TAutoIncField;
    SPAClasificacionCuentasIdOrigenMonto: TIntegerField;
    SPAClasificacionCuentasCuenta: TStringField;
    SPAConfiguracionContableIdTipoOperacion: TIntegerField;
    Sclasificacion: TDBISAMTable;
    SclasificacionFCL_CODIGO: TAutoIncField;
    SclasificacionFCL_NOMBRE: TStringField;
    SclasificacionFCL_DESCRIPCION: TMemoField;
    SclasificacionFCL_TIPO: TIntegerField;
    SPACuentasxCentroCentroCostos: TStringField;
    SPACuentasxCentroNombreCentroCostos: TStringField;
    SPAClasificacionCuentasIdClasificacion: TStringField;
    SPAClasificacionCuentasClasificacion: TStringField;
    SPAMovimientoGeneradoIdConfiguracionContable: TIntegerField;
    SPAMovimientoTempIdConfiguracionContable: TIntegerField;
    SPAMovimientoGeneradoIdDocumento: TIntegerField;
    SPAMovimientoTempIdDocumento: TIntegerField;
    qrCompras: TDBISAMQuery;
    SPAMovimientoTempIdTipoOperacion: TIntegerField;
    SPAMovimientoGeneradoIdTipoOperacion: TIntegerField;
    SPAMovimientoGeneradoIdClasificacion: TIntegerField;
    qrMovimientoTemporal: TDBISAMQuery;
    SPAConsecutivosUltimoNumero: TIntegerField;
    SPAAgrupacionesCuentasSubCentro: TStringField;
    SPAConfiguracionContableSubCentro: TStringField;
    SPAClasificacionCuentasSubCentro: TStringField;
    SPAMovimientoGeneradoNombreCuenta: TStringField;
    tbNits: TJvMemoryData;
    tbNitsNit: TStringField;
    tbNitsNombre: TStringField;
    SPAMovimientoGeneradoNitNombre: TStringField;
    SPAMovimientoTempNitNombre: TStringField;
    pdProceso: TJvProgressDialog;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FMensaje: TLabel;
    FProgreso: TJvProgressBar;
  public
    { Public declarations }
    procedure AbrirConfiguracion;
    procedure AbrirUsuarios;
    procedure AbrirInventario;
    procedure AbrirClasificacion;
    procedure BorrarCuentas;
    procedure AbrirSPAConfiguracionContable;
    procedure AbrirSPAConfiguracionContableMov;
    procedure AbrirSPAAgrupaciones;
    procedure AbrirSPAAgrupacionesCuentas;
    procedure AbrirSPAMovimientoGenerado;
    procedure AbrirSPAConsecutivos;
    procedure AbrirSPACuentasCentros;
    Procedure AbrirSPAClasificacionCuentas;
    procedure ProcesarComprobante(P: TJvProgressBar; L: TLabel;
      IdConfiguracionContable: SmallInt; FechaCorte : string);
    procedure ProcesarCompras(IdConfiguracionContable, IdTipoOperacion, IdConsecutivo: SmallInt; FechaCorte : String);
    procedure PonerMensaje(S: string);
    function BuscarCuentaAgrupacion(IdAgrupacion, IdTipoOperacion, IdOrigenMonto: integer;
      Cuenta: string; var SubCentroCosto : string): string;
    function BuscarCuentaClasificacion(IdConfiguracionContable, IdClasificacion, IdOrigenMonto: integer;
      Cuenta: string; var SubCentroCosto : string): string;
    function BuscarCuentaCentro(IdConfiguracionContable: Integer; CCosto : string; IdOrigenMonto: integer;
      Cuenta: string): string;
    function BuscarCuentaFormaPago( FormaPago : tFormasPago; BancoTarjeta, Cuenta : string) : string;
    procedure CargarCodifcacionGeneral(IdConfiguracionContable : integer);
    procedure CargarConsultaOperacionsInv(IdTipoOperacion: integer; FechaCorte : string);
    procedure InsertarRegistroTemporal(MovimientoUnico: boolean; IdConfiguracionContable, IdTipoOperacion,
      IdDocumento, IdOrigenMonto: integer; Cuenta, Comprobante: string;
      Fecha: TDate; Documento, DocumentoRef, Nit, Detalle: string;
      Tipo: integer; Valor, Base: Double; CCosto, NitNombre: String);
    procedure MoverTemporalAGenerado( IdConfiguracionContable, IdDocumento : integer);
    procedure EjecutarConsulta(IdTipoConsulta: tTipoConsultas; IdConfiguracionContable, IdDocumento : integer);
    function CargarConsecutivo( IdConsecutivo : integer):string;
    procedure Exportar;
    procedure ExportarContai;
    Function NombreMovimiento : string;
    Function NombreNit : string;
  end;

var
  dmEC: TdmEC;

implementation

uses uBaseDatosA2, Variants, uUtilidades;
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
    tbTipoOperacion.Open;

    tbTipoOperacion.Append;

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoOperacion.Value := Integer(toiCompras);
    tbTipoOperacionTipoOperacion.Value := 'Compras';

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoOperacion.Value := Integer(toiDevoluciónCompras);
    tbTipoOperacionTipoOperacion.Value := 'Devolución de Compras';

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoOperacion.Value := Integer(toiFacturas);
    tbTipoOperacionTipoOperacion.Value := 'Facturas';

    tbTipoOperacion.Append;
    tbTipoOperacionIdTipoOperacion.Value := Integer(toiDevoluciónVentas);
    tbTipoOperacionTipoOperacion.Value := 'Devolución de Ventas';
  except
  end;

  try
    tbOrigenMonto.Open;

    tbOrigenMonto.Append;
    tbOrigenMontoIdOrigenMonto.Value := Integer( omValorBruto);
    tbOrigenMontoOrigenMonto.Value := 'Valor Bruto';

    tbOrigenMonto.Append;
    tbOrigenMontoIdOrigenMonto.Value := Integer( omDescuento1);
    tbOrigenMontoOrigenMonto.Value := 'Descuento 1';

    tbOrigenMonto.Append;
    tbOrigenMontoIdOrigenMonto.Value := Integer( omDescuento2);
    tbOrigenMontoOrigenMonto.Value := 'Descuento 2';

    tbOrigenMonto.Append;
    tbOrigenMontoIdOrigenMonto.Value := Integer( omFleteCompra);
    tbOrigenMontoOrigenMonto.Value := 'Flete en Compra';

    tbOrigenMonto.Append;
    tbOrigenMontoIdOrigenMonto.Value := Integer( omIva1);
    tbOrigenMontoOrigenMonto.Value := 'Iva 1';

    tbOrigenMonto.Append;
    tbOrigenMontoIdOrigenMonto.Value := Integer( omIva2);
    tbOrigenMontoOrigenMonto.Value := 'Iva 2';

    tbOrigenMonto.Append;
    tbOrigenMontoIdOrigenMonto.Value := Integer( omSaldoOperacion);
    tbOrigenMontoOrigenMonto.Value := 'Saldo Operación';

    tbOrigenMonto.Append;
    tbOrigenMontoIdOrigenMonto.Value := Integer( omValorCancelado);
    tbOrigenMontoOrigenMonto.Value := 'Valor Cancelado';

    tbOrigenMonto.Append;
    tbOrigenMontoIdOrigenMonto.Value := Integer( omDiferenciaAFavor);
    tbOrigenMontoOrigenMonto.Value := 'Diferencia a Favor';

    tbOrigenMonto.Append;
    tbOrigenMontoIdOrigenMonto.Value := Integer( omDiferenciaEnContra);
    tbOrigenMontoOrigenMonto.Value := 'Diferencia en Contra';

    tbOrigenMonto.Append;
    tbOrigenMontoIdOrigenMonto.Value := Integer( omCree);
    tbOrigenMontoOrigenMonto.Value := 'Auto retención CREE';

    tbOrigenMonto.Append;
    tbOrigenMontoIdOrigenMonto.Value := Integer( omCreePorPagar);
    tbOrigenMontoOrigenMonto.Value := 'Autoretención CREE por Pagar';

    tbOrigenMonto.Append;
    tbOrigenMontoIdOrigenMonto.Value := Integer( omRetencionEnFormasPago);
    tbOrigenMontoOrigenMonto.Value := 'Retención en Formas de Pago';

    tbOrigenMonto.Post;

  except
  end;
end;

procedure TdmEC.InsertarRegistroTemporal(MovimientoUnico: boolean; IdConfiguracionContable, IdTipoOperacion,
      IdDocumento, IdOrigenMonto: integer; Cuenta, Comprobante: string;
      Fecha: TDate; Documento, DocumentoRef, Nit, Detalle: string;
      Tipo: integer; Valor, Base: Double; CCosto, NitNombre: String);
begin
  // valida que no se inserte un valor en 0 con base
  if (Valor = 0) and (Base <> 0) then
    exit;

  // si no es Valor Bruto y el valor esta en cero no continue
  if (Valor = 0)  and not ( tOrigenMonto( IdOrigenMonto) = omValorBruto) then
    exit;

  if MovimientoUnico and
    SPAMovimientoTemp.Locate('IdConfiguracionContable;IdTipoOperacion;IdDocumento;IdOrigenMonto',
        varArrayOf( [IdConfiguracionContable,
                    IdTipoOperacion,
                    IdDocumento,
                    IdOrigenMonto]), []) then
    Exit;

  SPAMovimientoTemp.Insert;
  SPAMovimientoTempIdConfiguracionContable.Value := IdConfiguracionContable;
  SPAMovimientoTempIdTipoOperacion.Value := IdTipoOperacion;
  SPAMovimientoTempIdDocumento.Value := IdDocumento;
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
  SPAMovimientoTempNitNombre.Value := NitNombre;
  SPAMovimientoTemp.Post;
end;

procedure TdmEC.MoverTemporalAGenerado( IdConfiguracionContable, IdDocumento : integer);
begin
  // Llama la consulta general
  EjecutarConsulta(tcMovimientoTemporal, IdConfiguracionContable, IdDocumento);

  qrConsulta.First;
  while not qrConsulta.Eof do
  begin
    SPAMovimientoGenerado.Insert;
    SPAMovimientoGeneradoIdConfiguracionContable.Value := qrConsulta.FieldByName
      ('IdConfiguracionContable').Value;
    SPAMovimientoGeneradoIdTipoOperacion.Value := qrConsulta.FieldByName
      ('IdTipoOperacion').Value;
    SPAMovimientoGeneradoIdDocumento.Value := qrConsulta.FieldByName
      ('IdDocumento').Value;
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
    SPAMovimientoGeneradoValor.Value := Trunc
      (qrConsulta.FieldByName('Valor').Value);
    SPAMovimientoGeneradoBase.Value := Trunc
      (qrConsulta.FieldByName('Base').Value);
    SPAMovimientoGeneradoCCosto.Value := VarToStr
      (qrConsulta.FieldByName('CCosto').Value);
    SPAMovimientoGeneradoExportado.Value := False;
    SPAMovimientoGeneradoNitNombre.Value := qrConsulta.FieldByName('NitNombre').Value;
    SPAMovimientoGenerado.Post;
    qrConsulta.Next;
  end;

  EjecutarConsulta(tcBorrarMovimientoTemporal, IdConfiguracionContable, IdDocumento);

end;

function TdmEC.NombreMovimiento: string;
var
  S : string;
begin
  S := SPAConfiguracionExportarContabilidadRutaExportacion.Value +
        SPAConfiguracionExportarContabilidadNombreMovimiento.Value +
        FormatDateTime('yyyymmddhhnnss', Now()) + '.txt';
  Result := S;
end;

function TdmEC.NombreNit: string;
var
  S : string;
begin
  S := SPAConfiguracionExportarContabilidadRutaExportacion.Value +
        SPAConfiguracionExportarContabilidadNombreNits.Value +
        FormatDateTime('yyyymmddhhnnss', Now()) + '.txt';
  Result := S;
end;

procedure TdmEC.PonerMensaje(S: string);
begin
  FMensaje.Caption := S;
  FMensaje.Refresh;
end;

procedure TdmEC.ProcesarComprobante(P: TJvProgressBar; L: TLabel;
  IdConfiguracionContable: SmallInt; FechaCorte : string);
var
  IdTipoOperacion,
  IdConsecutivo : integer;
begin
  FMensaje := L;
  FProgreso := P;

  if SPAConfiguracionContable.Locate('IdConfiguracionContable', IdConfiguracionContable, [] ) then
  begin
    IdTipoOperacion := SPAConfiguracionContableIdTipoOperacion.Value;
    IdConsecutivo   := SPAConfiguracionContableIdConsecutivo.Value;

    case tTransaccionesOperacionesInv(IdTipoOperacion) of
      toiCompras, toiDevoluciónCompras :
        begin
          ProcesarCompras(IdConfiguracionContable, IdTipoOperacion, IdConsecutivo, FechaCorte);
        end;
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

  // Tipo Comprobante
  C := TStringField.Create(SPAAgrupacionesCuentas);
  C.Name := 'SPAAgrupacionesCuentasTipoOperacion';
  C.FieldName := 'TipoOperacion';
  C.KeyFields := 'IdTipoOperacion';
  C.LookupDataSet := tbTipoOperacion;
  C.LookupKeyFields := 'IdTipoOperacion';
  C.LookupResultField := 'TipoOperacion';
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

  SPAAgrupacionesCuentas.Open;

end;

procedure TdmEC.AbrirClasificacion;
begin
  try
    if not Sclasificacion.Active then
      Sclasificacion.Open;
  except on E: Exception do
  end;
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
    SPAConfiguracionExportarContabilidadRutaConsecutivos.Value := dmBasesDatos.dbA2.Directory;
    SPAConfiguracionExportarContabilidadRutaExportacion.Value := ParamStr(0);
    SPAConfiguracionExportarContabilidad.Post;
  end;

end;

procedure TdmEC.AbrirSPAClasificacionCuentas;
var
  C: TStringField;
begin
  try
    // Si no existe el erachivo debe crearlo
    if Not FileExists(IncludeTrailingPathDelimiter(dmBasesDatos.dbA2.Directory)
        + SPAClasificacionCuentas.TableName + '.dat') then
      SPAClasificacionCuentas.CreateTable();

    // NombreCuenta
    C := TStringField.Create(SPAClasificacionCuentas);
    C.Name := 'SPAClasificacionCuentasNombreCuenta';
    C.FieldName := 'NombreCuenta';
    C.KeyFields := 'Cuenta';
    C.LookupDataSet := dmEC.a2CCuentas;
    C.LookupKeyFields := 'Codigo';
    C.LookupResultField := 'Descripcion';
    C.FieldKind := fkLookup;
    C.Dataset := SPAClasificacionCuentas;

    // Origen Movimiento
    C := TStringField.Create(SPAClasificacionCuentas);
    C.Name := 'SPAClasificacionCuentasOrigenMonto';
    C.FieldName := 'OrigenMonto';
    C.KeyFields := 'IdOrigenMonto';
    C.LookupDataSet := tbOrigenMonto;
    C.LookupKeyFields := 'IdOrigenMonto';
    C.LookupResultField := 'OrigenMonto';
    C.FieldKind := fkLookup;
    C.Dataset := SPAClasificacionCuentas;

    // Abre el archivo
    SPAClasificacionCuentas.Open;
  except  on E: Exception do
    ShowMessage('Acurrió un error abriendo la tabla SPAClasificacionCuentas. \n' + E.Message);
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
    C.Name := 'SPAConfiguracionContableTipoOperacion';
    C.FieldName := 'TipoOperacion';
    C.KeyFields := 'IdTipoOperacion';
    C.LookupDataSet := tbTipoOperacion;
    C.LookupKeyFields := 'IdTipoOperacion';
    C.LookupResultField := 'TipoOperacion';
    C.FieldKind := fkLookup;
    C.Dataset := SPAConfiguracionContable;


    // id Consecutivos
    C := TStringField.Create(SPAConfiguracionContable);
    C.Name := 'SPAConfiguracionContableConsecutivo';
    C.FieldName := 'Consecutivo';
    C.KeyFields := 'IdConsecutivo';
    C.LookupDataSet := SPAConsecutivos;
    C.LookupKeyFields := 'IdConsecutivo';
    C.LookupResultField := 'Descripcion';
    C.FieldKind := fkLookup;
    C.Dataset := SPAConfiguracionContable;

    // Abre el archivo
    SPAConfiguracionContable.Open;
  except  on E: Exception do
    ShowMessage('Acurrió un error abriendo la tabla SPAConfiguracionContable. ' + E.Message);
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
  except  on E: Exception do
    ShowMessage('Acurrió un error abriendo la tabla SPAConfiguracionContable. \n' + E.Message);
  end;
end;

procedure TdmEC.AbrirSPAConsecutivos;
var
  Ruta: String;
begin
  try
    // Busca la ruta en la configuracion, si no esta configurada asigan la de la base de datos
    if SPAConfiguracionExportarContabilidadRutaConsecutivos.Value <> '' then
      Ruta := SPAConfiguracionExportarContabilidadRutaConsecutivos.Value
    else
      Ruta := dmBasesDatos.dbA2.Directory;

    dbConsecutivos.Connected := False;
    dbConsecutivos.Directory := Ruta;
    dbConsecutivos.Connected := true;

    // Si no existe el erachivo debe crearlo
    if Not FileExists(IncludeTrailingPathDelimiter(dbConsecutivos.Directory)
        + SPAConsecutivos.TableName + '.dat') then
      SPAConsecutivos.CreateTable();

    SPAConsecutivos.Open;
  except on E: Exception do
    ShowMessage('Ocurrio un error abriendo SPAConsecutivos. \n' + E.Message);
  end;
end;

procedure TdmEC.AbrirSPACuentasCentros;
var
  C: TStringField;
begin
  try
    // Si no existe el erachivo debe crearlo
    if Not FileExists(IncludeTrailingPathDelimiter(dmBasesDatos.dbA2.Directory)
        + SPACuentasxCentro.TableName + '.dat') then
      SPACuentasxCentro.CreateTable();


    // Origen Movimiento
    C := TStringField.Create(SPACuentasxCentro);
    C.Name := 'SPACuentasxCentroOrigenMonto';
    C.FieldName := 'OrigenMonto';
    C.KeyFields := 'IdOrigenMonto';
    C.LookupDataSet := tbOrigenMonto;
    C.LookupKeyFields := 'IdOrigenMonto';
    C.LookupResultField := 'OrigenMonto';
    C.FieldKind := fkLookup;
    C.Dataset := SPACuentasxCentro;

    // NombreCuenta
    C := TStringField.Create(SPACuentasxCentro);
    C.Name := 'SPACuentasxCentroNombreCuenta';
    C.FieldName := 'NombreCuenta';
    C.KeyFields := 'Cuenta';
    C.LookupDataSet := dmEC.a2CCuentas;
    C.LookupKeyFields := 'Codigo';
    C.LookupResultField := 'Descripcion';
    C.FieldKind := fkLookup;
    C.Dataset := SPACuentasxCentro;

    // Abre el archivo
    SPACuentasxCentro.Open;
  except  on E: Exception do
    ShowMessage('Acurrió un error abriendo la tabla SPACuentasxCentro. \n' + E.Message);
  end;
end;

procedure TdmEC.AbrirSPAMovimientoGenerado;
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
  except  on E: Exception do
    ShowMessage('Acurrió un error abriendo la tabla de movieminto generado. \n' + E.Message);
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

procedure TdmEC.EjecutarConsulta(IdTipoConsulta: tTipoConsultas; IdConfiguracionContable, IdDocumento : integer);
var
  SQL: string;
begin
  qrConsulta.Close;

  case IdTipoConsulta of
    tcMovimientoTemporal:
      begin
        qrConsulta.SQL.Text := qrMovimientoTemporal.SQL.Text;
        qrConsulta.ParamByName('IdConfiguracionContable').Value := IdConfiguracionContable;
        qrConsulta.ParamByName('IdDocumento').Value := IdDocumento;
        qrConsulta.Open;
      end;
    tcBorrarMovimientoTemporal:
      begin
        SQL := 'delete from SPAMovimientoTemp where IdConfiguracionContable = :IdConfiguracionContable ' +
                ' and IdDocumento = :IdDocumento' ;
        qrConsulta.SQL.Text := SQL;
        qrConsulta.ParamByName('IdConfiguracionContable').Value := IdConfiguracionContable;
        qrConsulta.ParamByName('IdDocumento').Value := IdDocumento;
        qrConsulta.ExecSQL
      end;
    tcBorrarCuentas:
      begin
        SQL := 'delete from a2Cuentas';
        qrConsulta.SQL.Text := SQL;
        qrConsulta.ParamByName('IdConfiguracionContable').Value := IdConfiguracionContable;
        qrConsulta.ParamByName('IdDocumento').Value := IdDocumento;
        qrConsulta.ExecSQL
      end;
  end;
end;

procedure TdmEC.Exportar;
begin
  case tModulos( SPAConfiguracionExportarContabilidadModuloAExportar.Value) of
    moContai : ExportarContai;

  end;

end;

procedure TdmEC.ExportarContai;
var
  S : string;
  F : TextFile;
begin
  try
    pdProceso.Show;

    // Asigna el nombre al archivo texto y lo crea
    AssignFile(F, NombreMovimiento);
    Rewrite(F);

    // Abre el archivo temporal de nits
    tbNits.Close;
    tbNits.Open;

    pdProceso.Max := SPAMovimientoGenerado.RecordCount;
    pdProceso.Position := 1;

    SPAMovimientoGenerado.First;
    while not SPAMovimientoGenerado.EOF do
    begin
      pdProceso.Position := pdProceso.Position + 1;
      pdProceso.Text := 'Procesando comprobante ' + SPAMovimientoGeneradoComprobante.Value +
                        ', documento ' + SPAMovimientoGeneradoDocumento.Value;

      // Genera la linea 1 y lo escribe en el archivo texto
      S := '';
      S := S + LeftStr( SPAMovimientoGeneradoCuenta.Value + Blancos(10), 10);
      S := S + RightStr(Ceros(5) + SPAMovimientoGeneradoComprobante.Value, 5);
      S := S + FormatDateTime('mm/dd/yyyy', SPAMovimientoGeneradoFecha.Value);
      S := S + RightStr(Ceros(9) + SPAMovimientoGeneradoDocumento.Value, 9);
      S := S + RightStr(Ceros(9) + SPAMovimientoGeneradoDocumentoRef.Value, 9);
      S := S + RightStr(Blancos(5) + SPAMovimientoGeneradoNit.Value, 11);
      S := S + LeftStr(SPAMovimientoGeneradoDetalle.Value + Blancos(28), 28);
      if SPAMovimientoGeneradoTipo.Value = 1 then
        S := S + 'DB'
      else
        S := S + 'CR';

      S := S + FormatFloat('000000000000000000.00', SPAMovimientoGeneradoValor.Value);
      S := S + FormatFloat('000000000000000000.00', SPAMovimientoGeneradoBase.Value);
      S := S + SPAMovimientoGeneradoCCosto.Value;
      Writeln(F, S);

      // Inserta Nit
      if not tbNits.Locate('Nit', SPAMovimientoGeneradoNit.Value, []) then
      begin
        tbNits.Append;
        tbNitsNit.Value := SPAMovimientoGeneradoNit.Value;
        tbNitsNombre.Value := SPAMovimientoGeneradoNitNombre.Value;
      end;


      // Marca como exportado
      SPAMovimientoGenerado.Edit;
      SPAMovimientoGeneradoExportado.Value := True;
      SPAMovimientoGenerado.Post;

      //SPAMovimientoGenerado.Next;
    end;

    // Cierra el archivo de movimento
    CloseFile(F);

    // Guarda los registro temporalas
    if tbNits.State = dsInsert then
      tbNits.Post;

    // Exporta los nit
    pdProceso.Text := 'Exportando Nits';
    pdProceso.Position := 1;
    pdProceso.Max := tbNits.RecordCount;

    // Asigna el nombre al archivo texto y lo crea
    AssignFile(F, NombreNit);
    Rewrite(F);
    tbNits.First;
    while not tbNits.EOF do
    begin
      pdProceso.Position := pdProceso.Position + 1;

      S := RightStr( Blancos(11) + trim( tbNitsNit.Value), 11);
      S := S + LeftStr(tbNitsNombre.Value + Blancos(31), 31);
      WriteLn(F, S);

      tbNits.Next;
    end;

    // Cierra el archivo de nits
    CloseFile(F);

  except on E: Exception do
    ShowMessage('Ocurrió un error generando la exportación a contai.' + E.Message);
  end;

  pdProceso.Hide;
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

function TdmEC.BuscarCuentaAgrupacion(IdAgrupacion, IdTipoOperacion, IdOrigenMonto: integer;
  Cuenta: string; var SubCentroCosto : string): string;
begin
  Result := Cuenta;
  if SPAAgrupacionesCuentas.Locate('IdAgrupacion;IdTipoOperacion;IdOrigenMonto',
    VarArrayOf([IdAgrupacion, IdTipoOperacion, IdOrigenMonto]), []) then
  begin
    Result := SPAAgrupacionesCuentasCuenta.Value;
    SubCentroCosto := VarToStr( SPAAgrupacionesCuentasSubCentro.Value);
  end;
end;

function TdmEC.BuscarCuentaCentro(IdConfiguracionContable: Integer;
  CCosto: string; IdOrigenMonto: integer; Cuenta: string): string;
begin
  Result := Cuenta;
  if SPACuentasxCentro.Locate('IdConfiguracionContable;CentroCostos;IdOrigenMonto',
    VarArrayOf([IdConfiguracionContable, CCosto, IdOrigenMonto]), []) then
  begin
    Result := SPACuentasxCentroCuenta.Value;
  end;
end;

function TdmEC.BuscarCuentaClasificacion(IdConfiguracionContable, IdClasificacion, IdOrigenMonto: integer;
      Cuenta: string; var SubCentroCosto : string): string;
begin
  Result := Cuenta;
  if SPAClasificacionCuentas.Locate('IdConfiguracionContable;IdClasificacion;IdOrigenMonto',
    VarArrayOf([IdConfiguracionContable, IdClasificacion, IdOrigenMonto]), []) then
  begin
    Result := SPAClasificacionCuentasCuenta.Value;
    SubCentroCosto := VarToStr( SPAClasificacionCuentasSubCentro.Value);
  end;
end;



function TdmEC.BuscarCuentaFormaPago(FormaPago: tFormasPago;
  BancoTarjeta, Cuenta: string): string;
begin
  Result := Cuenta;
  try
    case FormaPago of
      fpCheque,
      fpTarjetaDebito :
        begin
          dmAdministrativo.AbrirSInstitucion;
          if dmAdministrativo.SInstitucion.Locate('FIF_CODIGO', BancoTarjeta, []) then
            Result := dmAdministrativo.SInstitucion.FieldByName(SPAConfiguracionExportarContabilidadCampoCuentaInstituciones.Value).Value;
        end;
      fpTarjetaCredito:
        begin
          dmAdministrativo.AbrirSTarjeta;
          if dmAdministrativo.Starjetas.Locate('FTJ_CODIGO', BancoTarjeta, []) then
            Result := dmAdministrativo.Starjetas.FieldByName(SPAConfiguracionExportarContabilidadCampoCuentaEnTarjetas.Value).Value;
        end;
//      fpGiros: ;
//      fpPagoAdelantado: ;
      fpRetencion:
        begin
          AbrirClasificacion;
          if Sclasificacion.Locate('FCL_CODIGO', BancoTarjeta, []) then
            Result := Sclasificacion.FieldByName('FCL_DESCRIPCION').Value;
        end;

    end;
  except on E: Exception do
  end;
end;

procedure TdmEC.CargarCodifcacionGeneral(IdConfiguracionContable : integer);
begin
  qrCodificacionGeneral.Close;
  qrCodificacionGeneral.ParamByName('IdConfiguracionContable').Value := IdConfiguracionContable;
  qrCodificacionGeneral.Open;
end;


// Busca los movimiento de inventario     
function TdmEC.CargarConsecutivo(IdConsecutivo: integer): string;
var
  Consecutivo : LongInt;
begin
  Result := '';
  if SPAConsecutivos.Locate('IdConsecutivo', IdConsecutivo, []) then
  begin  
    SPAConsecutivos.Edit;
    Consecutivo := SPAConsecutivosUltimoNumero.Value +  1;
    SPAConsecutivosUltimoNumero.Value := Consecutivo;
    SPAConsecutivos.Post;

    Result := IntToStr( Consecutivo);
  end;
end;

procedure TdmEC.CargarConsultaOperacionsInv(IdTipoOperacion : integer; FechaCorte : string);
var
  SQL: string;
  P : integer;
begin
  qrDocumentosInventario.Close;
  case tTransaccionesOperacionesInv(IdTipoOperacion) of
    toiCompras, toiDevoluciónCompras:
      begin
        SQL := qrCompras.SQL.Text;

        P := Pos(':IdAgrupacion', SQL);
        Delete( SQL, P, Length( ':IdAgrupacion'));
        Insert( 'Sinventario.' + SPAConfiguracionExportarContabilidadCampoAgruapacionInventario.Value , SQL, P);

        qrDocumentosInventario.SQL.Text := SQL;

        qrDocumentosInventario.ParamByName('IdTipoOperacion').Value := IdTipoOperacion;
        qrDocumentosInventario.ParamByName('FechaCorte').Value := FechaCorte;
      end;
  end;
  qrDocumentosInventario.Open;

end;

procedure TdmEC.ProcesarCompras(IdConfiguracionContable, IdTipoOperacion, IdConsecutivo: SmallInt; FechaCorte : String);
var
  IdDocumento : LongInt;
  Cuenta, Documento, Consecutivo : string;
  ProcesarSaldo, ProcesarTotal, ProcesarFlete, ProcesarDescuento1,
  ProcesarDescuento2, ProcesarCree, ProcesarAutoRetencionCree,
  ProcesarCreePorPagar, ProcesarRetenciones,
  ProcesrSaldoAFavor, ProcesarSaldoEnContra : boolean;
  SubCentroCosto : string;
begin
  PonerMensaje('Iniciando consulta compras...');

  try

    // Hace la consulta de los documentos por la transacción
    CargarConsultaOperacionsInv(IdTipoOperacion, FechaCorte);

    // Busca la codificación del comprobante
    CargarCodifcacionGeneral(IdConfiguracionContable);

    PonerMensaje('Iniciando lectura compras...');

    // Recorre el resultado de la consulta
    qrDocumentosInventario.First;
    FProgreso.Min := 0;
    FProgreso.Position := 0;
    FProgreso.Max := qrDocumentosInventario.RecordCount;
    while not qrDocumentosInventario.Eof do
    begin

      // Borra el temporal
      EjecutarConsulta(tcBorrarMovimientoTemporal, IdConfiguracionContable, qrDocumentosInventario.FieldByName('IdDocumento').Value);

      // Procesa el documento
      ProcesarTotal := true;
      ProcesarSaldo := true;
      ProcesarFlete := true;
      ProcesarDescuento1 := true;
      ProcesarDescuento2 := true;
      ProcesarCree := true;
      ProcesarAutoRetencionCree := true;
      ProcesarCreePorPagar := true;
      ProcesarRetenciones := true;
      ProcesrSaldoAFavor := true;
      ProcesarSaldoEnContra := true;
      IdDocumento := qrDocumentosInventario.FieldByName('IdDocumento').Value;
      Documento := qrDocumentosInventario.FieldByName('Documento').Value;
      PonerMensaje('Documento ' + Documento);

      // Si se maneja consecutivo debe buscar el numero
      if IdConsecutivo <> 0 then
        Consecutivo := CargarConsecutivo( IdConsecutivo)
      else
        Consecutivo := Documento;

      while not qrDocumentosInventario.Eof and
        (IdDocumento = qrDocumentosInventario.FieldByName('IdDocumento').Value) do
      begin
        // Procesa la codificacion general
        qrCodificacionGeneral.First;
        while not qrCodificacionGeneral.Eof do
        begin
          // Carga la cuenta definida en la codificacion general
          Cuenta := qrCodificacionGeneralCuentaGeneral.Value;

          // Busca la cuenta en CuentasClasificacion
          Cuenta := BuscarCuentaClasificacion( IdConfiguracionContable,
                      qrDocumentosInventario.FieldByName('IdClasificacion').Value,
                      qrCodificacionGeneralIdOrigenMonto.Value, Cuenta, SubCentroCosto);

          // Busca la cuenta en CuentasCentros
          Cuenta := BuscarCuentaCentro( IdConfiguracionContable,
                      VarToStr(qrDocumentosInventario.FieldByName('CCosto').Value),
                      qrCodificacionGeneralIdOrigenMonto.Value, Cuenta);

          // Busca la cuenta en agrupacion
          Cuenta := BuscarCuentaAgrupacion(qrDocumentosInventario.FieldByName('IdAgrupacion').Value,
                      IdTipoOperacion, qrCodificacionGeneralIdOrigenMonto.Value,
                      Cuenta, SubCentroCosto);

          // Inserta el detalle
          case tOrigenMonto(qrCodificacionGeneralIdOrigenMonto.Value) of
            omValorBruto:
              InsertarRegistroTemporal(False, IdConfiguracionContable, IdTipoOperacion,
                 IdDocumento, qrCodificacionGeneralIdOrigenMonto.Value,
                Cuenta, qrCodificacionGeneralComprobante.Value,
                qrDocumentosInventario.FieldByName('Fecha').Value,
                Consecutivo,
                qrDocumentosInventario.FieldByName('Documento').Value,
                qrDocumentosInventario.FieldByName('Nit').Value,
                qrCodificacionGeneralDetalle.Value + ' ' +
                  qrDocumentosInventario.FieldByName('Documento').Value,
                qrCodificacionGeneralTipoAsiento.Value,
                qrDocumentosInventario.FieldByName('TotalItem').Value, 0,
                VarToStr(qrDocumentosInventario.FieldByName('CCosto').Value) + SubCentroCosto,
                qrDocumentosInventario.FieldByName('Contacto').Value);

            omIva1:
              InsertarRegistroTemporal(False, IdConfiguracionContable, IdTipoOperacion,
                 IdDocumento, qrCodificacionGeneralIdOrigenMonto.Value,
                Cuenta, qrCodificacionGeneralComprobante.Value,
                qrDocumentosInventario.FieldByName('Fecha').Value,
                Consecutivo,
                qrDocumentosInventario.FieldByName('Documento').Value,
                qrDocumentosInventario.FieldByName('Nit').Value,
                qrCodificacionGeneralDetalle.Value + ' ' +
                  qrDocumentosInventario.FieldByName('Documento').Value,
                qrCodificacionGeneralTipoAsiento.Value,
                qrDocumentosInventario.FieldByName('TotalImpuestoItem').Value,
                qrDocumentosInventario.FieldByName('TotalItem').Value,
                VarToStr(qrDocumentosInventario.FieldByName('CCosto').Value) + SubCentroCosto,
                qrDocumentosInventario.FieldByName('Contacto').Value);

            omIva2:
              InsertarRegistroTemporal(False, IdConfiguracionContable, IdTipoOperacion,
                 IdDocumento, qrCodificacionGeneralIdOrigenMonto.Value,
                Cuenta, qrCodificacionGeneralComprobante.Value,
                qrDocumentosInventario.FieldByName('Fecha').Value,
                Consecutivo,
                qrDocumentosInventario.FieldByName('Documento').Value,
                qrDocumentosInventario.FieldByName('Nit').Value,
                qrCodificacionGeneralDetalle.Value + ' ' +
                  qrDocumentosInventario.FieldByName('Documento').Value,
                qrCodificacionGeneralTipoAsiento.Value,
                qrDocumentosInventario.FieldByName('TotalImpuesto2Item').Value,
                qrDocumentosInventario.FieldByName('TotalItem').Value,
                VarToStr(qrDocumentosInventario.FieldByName('CCosto').Value) + SubCentroCosto,
                qrDocumentosInventario.FieldByName('Contacto').Value);
           omSaldoOperacion:
              if ProcesarSaldo then
              begin
                ProcesarSaldo := False;

                // Guarda saldo operacion
                if qrDocumentosInventario.FieldByName('SaldoOperacion').Value <> 0 then
                begin
                  InsertarRegistroTemporal(True, IdConfiguracionContable, IdTipoOperacion,
                     IdDocumento, qrCodificacionGeneralIdOrigenMonto.Value,
                    Cuenta, qrCodificacionGeneralComprobante.Value,
                    qrDocumentosInventario.FieldByName('Fecha').Value,
                    Consecutivo,
                    qrDocumentosInventario.FieldByName('Documento').Value,
                    qrDocumentosInventario.FieldByName('Nit').Value,
                    qrCodificacionGeneralDetalle.Value + ' ' + qrDocumentosInventario.FieldByName('Documento').Value,
                    qrCodificacionGeneralTipoAsiento.Value,
                    qrDocumentosInventario.FieldByName('SaldoOperacion').Value, 0,
                    VarToStr(qrDocumentosInventario.FieldByName('CCosto').Value) + SubCentroCosto,
                    qrDocumentosInventario.FieldByName('Contacto').Value);
                end;
              end;
            omValorCancelado:
              if ProcesarTotal then
              begin
                ProcesarTotal := False;

                // Guarda el total de la operacion
                if qrDocumentosInventario.FieldByName('TotalNeto').Value -
                  qrDocumentosInventario.FieldByName('SaldoOperacion').Value > 0 then
                begin

                  // Carga las formas de pago
                  dmAdministrativo.CargarTablaFormasPago(SPAConfiguracionContable,
                    qrDocumentosInventario.FieldByName('FormaPago') as TBlobField);

                  dmAdministrativo.tbFormaPago.First;
                  while not dmAdministrativo.tbFormaPago.Eof do
                  begin
                    case tFormasPago(dmAdministrativo.tbFormaPagoTipoPago.Value) of
                      fpEfectivo, fpCheque, fpTarjetaDebito, fpTarjetaCredito:
                        begin
                          // Busca la cuenta para la forma de pago
                          Cuenta := BuscarCuentaFormaPago( tFormasPago(dmAdministrativo.tbFormaPagoTipoPago.Value),
                                      dmAdministrativo.tbFormaPagoBancoTarjeta.Value, Cuenta);
                          InsertarRegistroTemporal(False, IdConfiguracionContable, IdTipoOperacion,
                             IdDocumento,
                            qrCodificacionGeneralIdOrigenMonto.Value, Cuenta,
                            qrCodificacionGeneralComprobante.Value,
                            qrDocumentosInventario.FieldByName('Fecha').Value,
                            Consecutivo,
                            qrDocumentosInventario.FieldByName('Documento').Value,
                            qrDocumentosInventario.FieldByName('Nit').Value,
                            qrCodificacionGeneralDetalle.Value + ' ' +
                            qrDocumentosInventario.FieldByName('Documento').Value,
                            qrCodificacionGeneralTipoAsiento.Value,
                            dmAdministrativo.tbFormaPagoMontoPago.Value, 0,
                            VarToStr(qrDocumentosInventario.FieldByName('CCosto').Value)  + SubCentroCosto,
                            qrDocumentosInventario.FieldByName('Contacto').Value);

                        end;
                    end;
                    dmAdministrativo.tbFormaPago.Next;
                  end;

                end;

              end;
            omDescuento1:
              if ProcesarDescuento1 then
              begin
                ProcesarDescuento1 := False;

                InsertarRegistroTemporal(False, IdConfiguracionContable, IdTipoOperacion,
                  IdDocumento, qrCodificacionGeneralIdOrigenMonto.Value,
                  Cuenta, qrCodificacionGeneralComprobante.Value,
                  qrDocumentosInventario.FieldByName('Fecha').Value,
                  Consecutivo,
                  qrDocumentosInventario.FieldByName('Documento').Value,
                  qrDocumentosInventario.FieldByName('Nit').Value,
                  qrCodificacionGeneralDetalle.Value + ' ' + qrDocumentosInventario.FieldByName('Documento').Value,
                  qrCodificacionGeneralTipoAsiento.Value,
                  qrDocumentosInventario.FieldByName('Descuento1').Value, 0,
                  VarToStr(qrDocumentosInventario.FieldByName('CCosto').Value) + SubCentroCosto,
                  qrDocumentosInventario.FieldByName('Contacto').Value);
              end;
            omDescuento2:
              if ProcesarDescuento2 then
              begin
                ProcesarDescuento2 := False;

                InsertarRegistroTemporal(False, IdConfiguracionContable, IdTipoOperacion,
                  IdDocumento, qrCodificacionGeneralIdOrigenMonto.Value,
                  Cuenta, qrCodificacionGeneralComprobante.Value,
                  qrDocumentosInventario.FieldByName('Fecha').Value,
                  Consecutivo,
                  qrDocumentosInventario.FieldByName('Documento').Value,
                  qrDocumentosInventario.FieldByName('Nit').Value,
                  qrCodificacionGeneralDetalle.Value + ' ' + qrDocumentosInventario.FieldByName('Documento').Value,
                  qrCodificacionGeneralTipoAsiento.Value,
                  qrDocumentosInventario.FieldByName('Descuento2').Value, 0,
                  VarToStr(qrDocumentosInventario.FieldByName('CCosto').Value) + SubCentroCosto,
                  qrDocumentosInventario.FieldByName('Contacto').Value);
              end;
            omFleteCompra:
              if ProcesarFlete then
              begin
                ProcesarFlete := False;

                InsertarRegistroTemporal(False, IdConfiguracionContable, IdTipoOperacion,
                  IdDocumento, qrCodificacionGeneralIdOrigenMonto.Value,
                  Cuenta, qrCodificacionGeneralComprobante.Value,
                  qrDocumentosInventario.FieldByName('Fecha').Value,
                  Consecutivo,
                  qrDocumentosInventario.FieldByName('Documento').Value,
                  qrDocumentosInventario.FieldByName('Nit').Value,
                  qrCodificacionGeneralDetalle.Value + ' ' + qrDocumentosInventario.FieldByName('Documento').Value,
                  qrCodificacionGeneralTipoAsiento.Value,
                  qrDocumentosInventario.FieldByName('Flete').Value, 0,
                  VarToStr(qrDocumentosInventario.FieldByName('CCosto').Value) + SubCentroCosto,
                  qrDocumentosInventario.FieldByName('Contacto').Value);
              end;
            omRetencionEnFormasPago:
              if ProcesarRetenciones then
              begin
                ProcesarRetenciones := False;

                // Carga las formas de pago
                dmAdministrativo.CargarTablaFormasPago(SPAConfiguracionContable,
                  qrDocumentosInventario.FieldByName('FormaPago') as TBlobField);

                dmAdministrativo.tbFormaPago.First;
                while not dmAdministrativo.tbFormaPago.Eof do
                begin
                  if tFormasPago(dmAdministrativo.tbFormaPagoTipoPago.Value) = fpRetencion then
                  begin

                    // Busca la cuenta para la forma de pago retencion
                    Cuenta := BuscarCuentaFormaPago( tFormasPago(dmAdministrativo.tbFormaPagoTipoPago.Value),
                                dmAdministrativo.tbFormaPagoBancoTarjeta.Value, Cuenta);

                    InsertarRegistroTemporal(False, IdConfiguracionContable, IdTipoOperacion,
                      IdDocumento,
                      qrCodificacionGeneralIdOrigenMonto.Value, Cuenta,
                      qrCodificacionGeneralComprobante.Value,
                      qrDocumentosInventario.FieldByName('Fecha').Value,
                      Consecutivo,
                      qrDocumentosInventario.FieldByName('Documento').Value,
                      qrDocumentosInventario.FieldByName('Nit').Value,
                      qrCodificacionGeneralDetalle.Value + ' ' +
                      qrDocumentosInventario.FieldByName('Documento').Value,
                      qrCodificacionGeneralTipoAsiento.Value,
                      dmAdministrativo.tbFormaPagoMontoPago.Value, 0,
                      VarToStr(qrDocumentosInventario.FieldByName('CCosto').Value)  + SubCentroCosto,
                      qrDocumentosInventario.FieldByName('Contacto').Value);
                  end;
                  dmAdministrativo.tbFormaPago.Next;
                end;
              end;
            omCree:
              if ProcesarCree and (SPAConfiguracionExportarContabilidadPorcentajeCREE.Value > 0.0) then
              begin
                ProcesarCree := False;

                InsertarRegistroTemporal(False, IdConfiguracionContable, IdTipoOperacion,
                  IdDocumento, qrCodificacionGeneralIdOrigenMonto.Value,
                  Cuenta, qrCodificacionGeneralComprobante.Value,
                  qrDocumentosInventario.FieldByName('Fecha').Value,
                  Consecutivo,
                  qrDocumentosInventario.FieldByName('Documento').Value,
                  qrDocumentosInventario.FieldByName('Nit').Value,
                  qrCodificacionGeneralDetalle.Value + ' ' + qrDocumentosInventario.FieldByName('Documento').Value,
                  qrCodificacionGeneralTipoAsiento.Value,
                  Round( qrDocumentosInventario.FieldByName('TotalBruto').Value * SPAConfiguracionExportarContabilidadPorcentajeCREE.Value / 100) , 0,
                  VarToStr(qrDocumentosInventario.FieldByName('CCosto').Value) + SubCentroCosto,
                  qrDocumentosInventario.FieldByName('Contacto').Value);
              end;
            omCreePorPagar :
              if ProcesarCreePorPagar and (SPAConfiguracionExportarContabilidadPorcentajeCREE.Value > 0.0) then
              begin
                ProcesarCreePorPagar := False;

                InsertarRegistroTemporal(False, IdConfiguracionContable, IdTipoOperacion,
                  IdDocumento, qrCodificacionGeneralIdOrigenMonto.Value,
                  Cuenta, qrCodificacionGeneralComprobante.Value,
                  qrDocumentosInventario.FieldByName('Fecha').Value,
                  Consecutivo,
                  qrDocumentosInventario.FieldByName('Documento').Value,
                  qrDocumentosInventario.FieldByName('Nit').Value,
                  qrCodificacionGeneralDetalle.Value + ' ' + qrDocumentosInventario.FieldByName('Documento').Value,
                  qrCodificacionGeneralTipoAsiento.Value,
                  Round( qrDocumentosInventario.FieldByName('TotalBruto').Value * SPAConfiguracionExportarContabilidadPorcentajeCREE.Value / 100) , 0,
                  VarToStr(qrDocumentosInventario.FieldByName('CCosto').Value) + SubCentroCosto,
                  qrDocumentosInventario.FieldByName('Contacto').Value);
              end;
          end;
          qrCodificacionGeneral.Next;
        end;
        FProgreso.Position := FProgreso.Position + 1;
        qrDocumentosInventario.Next;
      end;

      MoverTemporalAGenerado(IdConfiguracionContable, IdDocumento);
    end;
  except on E: Exception do
    ShowMessage('Error generando archivo temporal. ' + E.Message)
  end;
  PonerMensaje('Finalizado');

end;

end.
