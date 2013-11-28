object dmEC: TdmEC
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 473
  Width = 739
  object SPAConfiguracionExportarContabilidad: TDBISAMTable
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    TableName = 'SPAConfiguracionExportarContabilidad'
    Left = 96
    Top = 88
    object SPAConfiguracionExportarContabilidadModuloAExportar: TIntegerField
      FieldName = 'ModuloAExportar'
    end
    object SPAConfiguracionExportarContabilidadRutaExportacion: TStringField
      FieldName = 'RutaExportacion'
      Size = 255
    end
    object SPAConfiguracionExportarContabilidadNombreMovimiento: TStringField
      FieldName = 'NombreMovimiento'
    end
    object SPAConfiguracionExportarContabilidadNombreNits: TStringField
      FieldName = 'NombreNits'
    end
    object SPAConfiguracionExportarContabilidadCampoCuentaEnTarjetas: TStringField
      FieldName = 'CampoCuentaEnTarjetas'
      Size = 50
    end
    object SPAConfiguracionExportarContabilidadCampoCuentaInstituciones: TStringField
      FieldName = 'CampoCuentaInstituciones'
      Size = 50
      Transliterate = False
    end
    object SPAConfiguracionExportarContabilidadCampoTerceroUsuarios: TStringField
      FieldName = 'CampoTerceroUsuarios'
      Size = 50
    end
  end
  object a2CCuentas: TDBISAMTable
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    TableName = 'a2CCuentas'
    Left = 48
    Top = 16
    object a2CCuentasCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 30
    end
    object a2CCuentasDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Required = True
      Size = 70
    end
    object a2CCuentasFECHA_APERTURA: TDateField
      FieldName = 'FECHA_APERTURA'
    end
    object a2CCuentasFECHA_INACTIVA: TDateField
      FieldName = 'FECHA_INACTIVA'
    end
    object a2CCuentasAJUSTE_FISCAL: TSmallintField
      FieldName = 'AJUSTE_FISCAL'
    end
    object a2CCuentasSALDO_INICIAL: TCurrencyField
      FieldName = 'SALDO_INICIAL'
    end
    object a2CCuentasSALDO_ACTUAL: TCurrencyField
      FieldName = 'SALDO_ACTUAL'
    end
    object a2CCuentasAJUSTE_DPC10: TSmallintField
      FieldName = 'AJUSTE_DPC10'
    end
    object a2CCuentasCCOSTO_FIJO: TBooleanField
      FieldName = 'CCOSTO_FIJO'
    end
    object a2CCuentasCCOSTO: TStringField
      FieldName = 'CCOSTO'
      Size = 30
    end
    object a2CCuentasCONSOLIDACION: TBooleanField
      FieldName = 'CONSOLIDACION'
    end
    object a2CCuentasCTA_CONSOLIDADORA: TStringField
      FieldName = 'CTA_CONSOLIDADORA'
      Size = 30
    end
    object a2CCuentasCTA_AJUSTE: TStringField
      FieldName = 'CTA_AJUSTE'
      Size = 30
    end
    object a2CCuentasCTA_CORRECCION: TStringField
      FieldName = 'CTA_CORRECCION'
      Size = 30
    end
    object a2CCuentasCTA_GASTO: TStringField
      FieldName = 'CTA_GASTO'
      Size = 30
    end
    object a2CCuentasCTA_BANCARIA: TStringField
      FieldName = 'CTA_BANCARIA'
      Size = 30
    end
    object a2CCuentasCMONEDA: TStringField
      FieldName = 'CMONEDA'
      Size = 30
    end
    object a2CCuentasTIPO_ACTIVIDAD: TSmallintField
      FieldName = 'TIPO_ACTIVIDAD'
    end
    object a2CCuentasTIPO_AUXILIAR: TSmallintField
      FieldName = 'TIPO_AUXILIAR'
    end
    object a2CCuentasTIPO_NOMINA: TSmallintField
      FieldName = 'TIPO_NOMINA'
    end
    object a2CCuentasCONCILIACION: TBooleanField
      FieldName = 'CONCILIACION'
    end
    object a2CCuentasMOVIMIENTO: TBooleanField
      FieldName = 'MOVIMIENTO'
    end
    object a2CCuentasMANEJA_CCOSTO: TBooleanField
      FieldName = 'MANEJA_CCOSTO'
    end
    object a2CCuentasMANEJA_PRESUPUESTO: TBooleanField
      FieldName = 'MANEJA_PRESUPUESTO'
    end
    object a2CCuentasMANEJA_BASES: TBooleanField
      FieldName = 'MANEJA_BASES'
    end
    object a2CCuentasMANEJA_AUXILIAR: TBooleanField
      FieldName = 'MANEJA_AUXILIAR'
    end
    object a2CCuentasMANEJA_EFECTIVO: TBooleanField
      FieldName = 'MANEJA_EFECTIVO'
    end
    object a2CCuentasMANEJA_DOC: TBooleanField
      FieldName = 'MANEJA_DOC'
    end
    object a2CCuentasMANEJA_FECHADOC: TBooleanField
      FieldName = 'MANEJA_FECHADOC'
    end
    object a2CCuentasMONEDA_APERTURA: TCurrencyField
      FieldName = 'MONEDA_APERTURA'
    end
    object a2CCuentasCORRELATIVO_CHEQUE: TIntegerField
      FieldName = 'CORRELATIVO_CHEQUE'
    end
    object a2CCuentasMONTO_EFECTIVO_INI: TCurrencyField
      FieldName = 'MONTO_EFECTIVO_INI'
    end
    object a2CCuentasMONTO_DEBE_INI: TCurrencyField
      FieldName = 'MONTO_DEBE_INI'
    end
    object a2CCuentasMONTO_HABER_INI: TCurrencyField
      FieldName = 'MONTO_HABER_INI'
    end
    object a2CCuentasMONTO_DEBE_ACT: TCurrencyField
      FieldName = 'MONTO_DEBE_ACT'
    end
    object a2CCuentasMONTO_HABER_ACT: TCurrencyField
      FieldName = 'MONTO_HABER_ACT'
    end
    object a2CCuentasMONTO_EXTRA1: TCurrencyField
      FieldName = 'MONTO_EXTRA1'
    end
    object a2CCuentasMONTO_EXTRA2: TCurrencyField
      FieldName = 'MONTO_EXTRA2'
    end
    object a2CCuentasPRESUPUESTO: TBlobField
      FieldName = 'PRESUPUESTO'
    end
    object a2CCuentasVISIBLE: TBooleanField
      FieldName = 'VISIBLE'
    end
    object a2CCuentasSTATUS: TBooleanField
      FieldName = 'STATUS'
    end
    object a2CCuentasFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object a2CCuentasBASE_AUTOINCREMENT: TAutoIncField
      FieldName = 'BASE_AUTOINCREMENT'
    end
    object a2CCuentasMONETARIA: TSmallintField
      FieldName = 'MONETARIA'
    end
    object a2CCuentasSALDO_INICIALAJUSTADO: TCurrencyField
      FieldName = 'SALDO_INICIALAJUSTADO'
    end
    object a2CCuentasMONTO_DEBE_INIAJUSTADO: TCurrencyField
      FieldName = 'MONTO_DEBE_INIAJUSTADO'
    end
    object a2CCuentasMONTO_HABER_INIAJUSTADO: TCurrencyField
      FieldName = 'MONTO_HABER_INIAJUSTADO'
    end
    object a2CCuentasMONTO_DEBE_ACTAJUSTADO: TCurrencyField
      FieldName = 'MONTO_DEBE_ACTAJUSTADO'
    end
    object a2CCuentasMONTO_HABER_ACTAJUSTADO: TCurrencyField
      FieldName = 'MONTO_HABER_ACTAJUSTADO'
    end
    object a2CCuentasTIPO_CUENTA: TSmallintField
      FieldName = 'TIPO_CUENTA'
    end
    object a2CCuentasP_PRESUPUESTO: TBlobField
      FieldName = 'P_PRESUPUESTO'
    end
    object a2CCuentasP_MONTO_DEBE_INI: TCurrencyField
      FieldName = 'P_MONTO_DEBE_INI'
    end
    object a2CCuentasP_MONTO_HABER_INI: TCurrencyField
      FieldName = 'P_MONTO_HABER_INI'
    end
    object a2CCuentasP_MONTO_DEBE_ACT: TCurrencyField
      FieldName = 'P_MONTO_DEBE_ACT'
    end
    object a2CCuentasP_MONTO_HABER_ACT: TCurrencyField
      FieldName = 'P_MONTO_HABER_ACT'
    end
    object a2CCuentasP_SALDO_INICIAL: TCurrencyField
      FieldName = 'P_SALDO_INICIAL'
    end
    object a2CCuentasP_SALDO_INICIALAJUSTADO: TCurrencyField
      FieldName = 'P_SALDO_INICIALAJUSTADO'
    end
    object a2CCuentasP_MONTO_DEBE_INIAJUSTADO: TCurrencyField
      FieldName = 'P_MONTO_DEBE_INIAJUSTADO'
    end
    object a2CCuentasP_MONTO_HABER_INIAJUSTADO: TCurrencyField
      FieldName = 'P_MONTO_HABER_INIAJUSTADO'
    end
    object a2CCuentasP_MONTO_DEBE_ACTAJUSTADO: TCurrencyField
      FieldName = 'P_MONTO_DEBE_ACTAJUSTADO'
    end
    object a2CCuentasP_MONTO_HABER_ACTAJUSTADO: TCurrencyField
      FieldName = 'P_MONTO_HABER_ACTAJUSTADO'
    end
    object a2CCuentasAUDITORIA: TBooleanField
      FieldName = 'AUDITORIA'
    end
    object a2CCuentasDOCUMENTOS: TBlobField
      FieldName = 'DOCUMENTOS'
    end
  end
  object tbmCuentasContai: TJvMemoryData
    FieldDefs = <>
    Left = 568
    Top = 144
    object tbmCuentasContaiCuenta: TStringField
      FieldName = 'Cuenta'
      Size = 10
    end
    object tbmCuentasContaiDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 30
    end
    object tbmCuentasContaiManejaMovimiento: TStringField
      FieldName = 'ManejaMovimiento'
      Size = 1
    end
    object tbmCuentasContaiManejaTercero: TStringField
      FieldName = 'ManejaTercero'
      Size = 1
    end
    object tbmCuentasContaiManejaCentroCostos: TStringField
      FieldName = 'ManejaCentroCostos'
      Size = 1
    end
    object tbmCuentasContaiTipoCuenta: TStringField
      FieldName = 'TipoCuenta'
      Size = 1
    end
  end
  object SPAMovimientoGenerado: TDBISAMTable
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    TableName = 'SPAMovimientoGenerado'
    Left = 200
    Top = 64
    object SPAMovimientoGeneradoIdMovimientoGenerado: TAutoIncField
      FieldName = 'IdMovimientoGenerado'
    end
    object SPAMovimientoGeneradoIdTipoComprobante: TSmallintField
      FieldName = 'IdTipoComprobante'
    end
    object SPAMovimientoGeneradoIdTipoTransaccion: TSmallintField
      FieldName = 'IdTipoTransaccion'
    end
    object SPAMovimientoGeneradoIdTipoOperacion: TSmallintField
      FieldName = 'IdTipoOperacion'
    end
    object SPAMovimientoGeneradoIdOrigenMonto: TSmallintField
      FieldName = 'IdOrigenMonto'
    end
    object SPAMovimientoGeneradoCuenta: TStringField
      FieldName = 'Cuenta'
      Size = 10
    end
    object SPAMovimientoGeneradoComprobante: TStringField
      FieldName = 'Comprobante'
      Size = 5
    end
    object SPAMovimientoGeneradoFecha: TDateField
      FieldName = 'Fecha'
    end
    object SPAMovimientoGeneradoDocumento: TStringField
      FieldName = 'Documento'
      Size = 9
    end
    object SPAMovimientoGeneradoDocumentoRef: TStringField
      FieldName = 'DocumentoRef'
      Size = 9
    end
    object SPAMovimientoGeneradoNit: TStringField
      FieldName = 'Nit'
      Size = 11
    end
    object SPAMovimientoGeneradoDetalle: TStringField
      FieldName = 'Detalle'
      Size = 28
    end
    object SPAMovimientoGeneradoTipo: TSmallintField
      FieldName = 'Tipo'
    end
    object SPAMovimientoGeneradoValor: TFloatField
      FieldName = 'Valor'
    end
    object SPAMovimientoGeneradoBase: TFloatField
      FieldName = 'Base'
    end
    object SPAMovimientoGeneradoCCosto: TStringField
      FieldName = 'CCosto'
      Size = 6
    end
    object SPAMovimientoGeneradoExportado: TBooleanField
      FieldName = 'Exportado'
    end
  end
  object SPAConfiguracionContableMov: TDBISAMTable
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    FieldDefs = <
      item
        Name = 'IdConfiguracionContable'
        DataType = ftAutoInc
      end
      item
        Name = 'IdConfiguracionContableMov'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'IdTipoOperacion'
        DataType = ftInteger
      end
      item
        Name = 'IdOrigenMonto'
        DataType = ftInteger
      end
      item
        Name = 'Detalle'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CuentaGeneral'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TipoAsiento'
        DataType = ftSmallint
      end>
    IndexDefs = <
      item
        Name = 'SPAConfiguracionContableMovDBISA1'
        Fields = 'RecordID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'SPAConfiguracionContableMovIdx'
        Fields = 'IdConfiguracionContable'
      end>
    IndexName = 'SPAConfiguracionContableMovIdx'
    TableName = 'SPAConfiguracionContableMov'
    StoreDefs = True
    Left = 384
    Top = 56
    object SPAConfiguracionContableMovIdConfiguracionContable: TIntegerField
      FieldName = 'IdConfiguracionContable'
      Required = True
    end
    object SPAConfiguracionContableMovIdConfiguracionContableMov: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'IdConfiguracionContableMov'
    end
    object SPAConfiguracionContableMovIdTipoOperacion: TIntegerField
      FieldName = 'IdTipoOperacion'
    end
    object SPAConfiguracionContableMovIdOrigenMonto: TIntegerField
      FieldName = 'IdOrigenMonto'
    end
    object SPAConfiguracionContableMovDetalle: TStringField
      FieldName = 'Detalle'
      Size = 30
    end
    object SPAConfiguracionContableMovCuentaGeneral: TStringField
      FieldName = 'CuentaGeneral'
      Size = 30
    end
    object SPAConfiguracionContableMovTipoAsiento: TSmallintField
      FieldName = 'TipoAsiento'
    end
  end
  object tbTiposComprobantes: TJvMemoryData
    FieldDefs = <>
    Left = 80
    Top = 168
    object tbTiposComprobantesIdTipoComprobante: TIntegerField
      FieldName = 'IdTipoComprobante'
    end
    object tbTiposComprobantesTipoComprobante: TStringField
      FieldName = 'TipoComprobante'
      Size = 40
    end
  end
  object tbTipoTransaccion: TJvMemoryData
    FieldDefs = <>
    Left = 152
    Top = 152
    object tbTipoTransaccionIdTipoTransaccion: TIntegerField
      FieldName = 'IdTipoTransaccion'
    end
    object tbTipoTransaccionTipoTransaccion: TStringField
      FieldName = 'TipoTransaccion'
      Size = 40
    end
  end
  object tbOrigenMonto: TJvMemoryData
    FieldDefs = <>
    Left = 280
    Top = 152
    object tbOrigenMontoIdOrigenMonto: TSmallintField
      FieldName = 'IdOrigenMonto'
    end
    object tbOrigenMontoOrigenMonto: TStringField
      FieldName = 'OrigenMonto'
      Size = 40
    end
  end
  object tbTipoOperacion: TJvMemoryData
    FieldDefs = <>
    Left = 224
    Top = 168
    object tbTipoOperacionIdTipoOperacion: TSmallintField
      FieldName = 'IdTipoOperacion'
    end
    object tbTipoOperacionIdTipoComprobante: TSmallintField
      FieldName = 'IdTipoComprobante'
    end
    object tbTipoOperacionTipoOperacion: TStringField
      FieldName = 'TipoOperacion'
      Size = 40
    end
  end
  object tbModulos: TJvMemoryData
    FieldDefs = <>
    Left = 24
    Top = 152
    object tbModulosIdModulo: TSmallintField
      FieldName = 'IdModulo'
    end
    object tbModulosModulo: TStringField
      FieldName = 'Modulo'
    end
  end
  object SPAAgrupaciones: TDBISAMTable
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    IndexDefs = <
      item
        Name = 'SPAAgrupacionesIdx'
        Fields = 'IdAgrupacion'
        Options = [ixPrimary, ixUnique]
      end>
    TableName = 'SPAAgrupaciones'
    StoreDefs = True
    Left = 488
    Top = 80
    object SPAAgrupacionesIdAgrupacion: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'IdAgrupacion'
    end
    object SPAAgrupacionesAgrupacion: TStringField
      FieldName = 'Agrupacion'
      Size = 40
    end
  end
  object SPAAgrupacionesCuentas: TDBISAMTable
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    IndexDefs = <
      item
        Name = 'SPAAgrupacionesCuentasDBISA1'
        Fields = 'IdAgrupacionCuenta'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'SPAAgrupacionesCuentasIdx'
        Fields = 'IdAgrupacion'
      end>
    TableName = 'SPAAgrupacionesCuentas'
    StoreDefs = True
    Left = 576
    Top = 56
    object SPAAgrupacionesCuentasIdAgrupacionCuenta: TAutoIncField
      FieldName = 'IdAgrupacionCuenta'
    end
    object SPAAgrupacionesCuentasIdAgrupacion: TIntegerField
      FieldName = 'IdAgrupacion'
    end
    object SPAAgrupacionesCuentasIdOrigenMonto: TIntegerField
      FieldName = 'IdOrigenMonto'
    end
    object SPAAgrupacionesCuentasCuenta: TStringField
      FieldName = 'Cuenta'
      Size = 30
    end
  end
  object Susuarios: TDBISAMTable
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    TableName = 'Susuarios'
    Left = 128
    Top = 16
    object SusuariosNombre: TStringField
      FieldName = 'Nombre'
      Required = True
      Size = 40
    end
    object SusuariosCode: TAutoIncField
      FieldName = 'Code'
    end
    object SusuariosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 40
    end
    object SusuariosUbicacion: TStringField
      FieldName = 'Ubicacion'
      Size = 40
    end
    object SusuariosFechaCreacion: TDateField
      FieldName = 'FechaCreaci'#243'n'
    end
    object SusuariosFechaCaduca: TDateField
      FieldName = 'FechaCaduca'
    end
    object SusuariosClave: TStringField
      FieldName = 'Clave'
      Required = True
      Size = 40
    end
    object SusuariosStatus: TSmallintField
      FieldName = 'Status'
    end
    object SusuariosNameMenuADM: TBlobField
      FieldName = 'NameMenuADM'
    end
    object SusuariosNameMenuVenta: TBlobField
      FieldName = 'NameMenuVenta'
    end
    object SusuariosNameMenuCompra: TBlobField
      FieldName = 'NameMenuCompra'
    end
    object SusuariosNameMenuBanco: TBlobField
      FieldName = 'NameMenuBanco'
    end
    object SusuariosNameMenuProdu: TBlobField
      FieldName = 'NameMenuProdu'
    end
    object SusuariosNameMenuTaller: TBlobField
      FieldName = 'NameMenuTaller'
    end
    object SusuariosCalendario: TBlobField
      FieldName = 'Calendario'
    end
    object SusuariosHorario: TStringField
      FieldName = 'Horario'
      Size = 250
    end
    object SusuariosJornada: TStringField
      FieldName = 'Jornada'
      Size = 250
    end
    object SusuariosAccesoUsuario: TBooleanField
      FieldName = 'AccesoUsuario'
    end
    object SusuariosActivarSonido: TBooleanField
      FieldName = 'ActivarSonido'
    end
    object SusuariosAccesoAdm: TBooleanField
      FieldName = 'AccesoAdm'
    end
    object SusuariosAccesoVtas: TBooleanField
      FieldName = 'AccesoVtas'
    end
    object SusuariosAccesoCompras: TBooleanField
      FieldName = 'AccesoCompras'
    end
    object SusuariosAccesoBancos: TBooleanField
      FieldName = 'AccesoBancos'
    end
    object SusuariosAccesoProduc: TBooleanField
      FieldName = 'AccesoProduc'
    end
    object SusuariosAccesoTaller: TBooleanField
      FieldName = 'AccesoTaller'
    end
    object SusuariosEmail: TStringField
      FieldName = 'Email'
      Size = 60
    end
    object SusuariosModificaEstadistica: TBooleanField
      FieldName = 'ModificaEstadistica'
    end
    object SusuariosActivarSombra: TBooleanField
      FieldName = 'ActivarSombra'
    end
    object SusuariosActivar3D: TBooleanField
      FieldName = 'Activar3D'
    end
    object SusuariosAllowSystem: TBooleanField
      FieldName = 'AllowSystem'
    end
    object SusuariosFlagTransaccion: TBlobField
      FieldName = 'FlagTransaccion'
    end
    object SusuariosArrayPrecios: TStringField
      FieldName = 'ArrayPrecios'
    end
    object SusuariosFlagMonedas: TBooleanField
      FieldName = 'FlagMonedas'
    end
    object SusuariosLoadAllTransaction: TBooleanField
      FieldName = 'LoadAllTransaction'
    end
    object SusuariosDirectorioHtml1: TStringField
      FieldName = 'DirectorioHtml1'
      Size = 150
    end
    object SusuariosDirectorioHtml2: TStringField
      FieldName = 'DirectorioHtml2'
      Size = 150
    end
    object SusuariosForcePreview: TBooleanField
      FieldName = 'ForcePreview'
    end
    object SusuariosHidePrinter: TBooleanField
      FieldName = 'HidePrinter'
    end
    object SusuariosPrinterSetup: TBooleanField
      FieldName = 'PrinterSetup'
    end
    object SusuariosBoldEncabezados: TStringField
      FieldName = 'BoldEncabezados'
      Size = 10
    end
    object SusuariosActiveMonedas: TBooleanField
      FieldName = 'ActiveMonedas'
    end
    object SusuariosLastUpdateFactor: TDateField
      FieldName = 'LastUpdateFactor'
    end
    object SusuariosDirectorio_Datos: TStringField
      FieldName = 'Directorio_Datos'
      Size = 250
    end
    object SusuariosDirectorio_Historia: TStringField
      FieldName = 'Directorio_Historia'
      Size = 250
    end
    object SusuariosDirectorio_Sistema: TStringField
      FieldName = 'Directorio_Sistema'
      Size = 250
    end
    object SusuariosDirectorio_Formas: TStringField
      FieldName = 'Directorio_Formas'
      Size = 250
    end
    object SusuariosDirectorio_Formatos: TStringField
      FieldName = 'Directorio_Formatos'
      Size = 250
    end
    object SusuariosDirectorio_Reportes: TStringField
      FieldName = 'Directorio_Reportes'
      Size = 250
    end
    object SusuariosDirectorio_Local: TStringField
      FieldName = 'Directorio_Local'
      Size = 250
    end
    object SusuariosGrupo: TStringField
      FieldName = 'Grupo'
      Size = 50
    end
    object SusuariosBase_autoincrement: TAutoIncField
      FieldName = 'Base_autoincrement'
    end
    object SusuariosDirectorio_Contabilidad: TStringField
      FieldName = 'Directorio_Contabilidad'
      Size = 250
    end
    object SusuariosCode_Empresa: TStringField
      FieldName = 'Code_Empresa'
      Size = 250
    end
    object SusuariosUsuario_Princial: TStringField
      FieldName = 'Usuario_Princial'
      Size = 10
    end
    object SusuariosDirectorio_Manager: TStringField
      FieldName = 'Directorio_Manager'
      Size = 250
    end
    object SusuariosAccesoRestaurant: TBooleanField
      FieldName = 'AccesoRestaurant'
    end
    object SusuariosFlagTranRestaurant: TBlobField
      FieldName = 'FlagTranRestaurant'
    end
    object SusuariosNameMenuRestaurant: TBlobField
      FieldName = 'NameMenuRestaurant'
    end
    object SusuariosNameMenuRestPos: TBlobField
      FieldName = 'NameMenuRestPos'
    end
    object SusuariosStatusPos: TSmallintField
      FieldName = 'StatusPos'
    end
    object SusuariosStatusRep: TSmallintField
      FieldName = 'StatusRep'
    end
    object SusuariosTelefonos: TStringField
      FieldName = 'Telefonos'
      Size = 60
    end
    object SusuariosLimite: TCurrencyField
      FieldName = 'Limite'
    end
    object SusuariosMensajesDeTexto: TBooleanField
      FieldName = 'MensajesDeTexto'
    end
    object SusuariosCode_Caja: TStringField
      FieldName = 'Code_Caja'
      Size = 10
    end
    object SusuariosAccesoHotel: TBooleanField
      FieldName = 'AccesoHotel'
    end
    object SusuariosFlagTranHotel: TBlobField
      FieldName = 'FlagTranHotel'
    end
    object SusuariosNameMenuHotel: TBlobField
      FieldName = 'NameMenuHotel'
    end
  end
  object SPAConfiguracionContable: TDBISAMTable
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    TableName = 'SPAConfiguracionContable'
    Left = 288
    Top = 80
    object SPAConfiguracionContableIdConfiguracionContable: TAutoIncField
      FieldName = 'IdConfiguracionContable'
    end
    object SPAConfiguracionContableIdTipoComprobante: TSmallintField
      FieldName = 'IdTipoComprobante'
    end
    object SPAConfiguracionContableComprobante: TStringField
      FieldName = 'Comprobante'
      Size = 10
    end
    object SPAConfiguracionContableDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object SPAConfiguracionContableIdTipoTransaccion: TSmallintField
      FieldName = 'IdTipoTransaccion'
    end
  end
  object qrCompras: TDBISAMQuery
    DatabaseName = 'dbA2'
    SessionName = 'Default'
    EngineVersion = '4.29 Build 1'
    SQL.Strings = (
      'SELECT'
      '  SOperacionInv.FTI_DOCUMENTO AS Documento,'
      '  SOperacionInv.FTI_FECHAEMISION AS Fecha,'
      '  SOperacionInv.FTI_TOTALCOSTO AS TotalCosto,'
      '  SOperacionInv.FTI_TOTALCOSTOREAL AS TotalCostoReal,'
      '  SOperacionInv.FTI_TOTALBRUTO AS TotalBruto,'
      '  SOperacionInv.FTI_DESCUENTO1MONTO AS Descuento1,'
      '  SOperacionInv.FTI_DESCUENTO2MONTO AS Descuento2,'
      '  SOperacionInv.FTI_BASEIMPONIBLE AS BaseImpuesto,'
      '  SOperacionInv.FTI_IMPUESTO1MONTO AS Impuesto,'
      '  SOperacionInv.FTI_TOTALNETO AS TotalNeto,'
      '  SOperacionInv.FTI_NITCLIENTE AS Nit,'
      '  SOperacionInv.FTI_PERSONACONTACTO AS Contacto,'
      '  SOperacionInv.FTI_TELEFONOCONTACTO AS Telefono,'
      '  SOperacionInv.FTI_SALDOOPERACION AS SaldoOperacion,'
      '  SOperacionInv.FTI_FORMADEPAGO AS FormaPago,'
      '  SOperacionInv.FTI_FLETEMONEDA AS Flete,'
      '  SOperacionInv.FTI_MONTOPAGADO AS MontoPagado,'
      '  Sinventario.FI_CATEGORIA AS Categoria,'
      '  SDetalleCompra.FDI_CANTIDAD AS Cantidad,'
      '  SDetalleCompra.FDI_COSTO AS Costo,'
      
        '  SDetalleCompra.FDI_CANTIDAD * SDetalleCompra.FDI_COSTO AS Tota' +
        'lItem'
      'FROM'
      ' SOperacionInv'
      
        ' INNER JOIN SDetalleCompra ON (SOperacionInv.FTI_TIPO=SDetalleCo' +
        'mpra.FDI_TIPOOPERACION)'
      '  AND (SOperacionInv.FTI_DOCUMENTO=SDetalleCompra.FDI_DOCUMENTO)'
      
        ' INNER JOIN Sinventario ON (SDetalleCompra.FDI_CODIGO=Sinventari' +
        'o.FI_CODIGO)'
      'WHERE'
      '  (SOperacionInv.FTI_TIPO = 6)')
    Params = <>
    Left = 48
    Top = 288
  end
end
