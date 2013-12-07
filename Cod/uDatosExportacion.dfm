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
    object SPAConfiguracionExportarContabilidadCampoAgruapacionInventario: TStringField
      FieldName = 'CampoAgruapacionInventario'
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
  object tbCuentasContai: TJvMemoryData
    FieldDefs = <>
    Left = 608
    Top = 136
    object tbCuentasContaiCuenta: TStringField
      FieldName = 'Cuenta'
      Size = 10
    end
    object tbCuentasContaiDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 30
    end
    object tbCuentasContaiManejaMovimiento: TStringField
      FieldName = 'ManejaMovimiento'
      Size = 1
    end
    object tbCuentasContaiManejaTercero: TStringField
      FieldName = 'ManejaTercero'
      Size = 1
    end
    object tbCuentasContaiManejaCentroCostos: TStringField
      FieldName = 'ManejaCentroCostos'
      Size = 1
    end
    object tbCuentasContaiTipoCuenta: TStringField
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
        Name = 'IdConfiguracionContableMov'
        Attributes = [faRequired]
        DataType = ftAutoInc
      end
      item
        Name = 'IdConfiguracionContable'
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
    object SPAConfiguracionContableMovIdConfiguracionContableMov: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'IdConfiguracionContableMov'
    end
    object SPAConfiguracionContableMovIdConfiguracionContable: TIntegerField
      FieldName = 'IdConfiguracionContable'
      Required = True
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
        Name = 'SPAAgrupacionesCuentasDBISA6'
        Fields = 'RecordID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'SPAAgrupacionesCuentasDBISA5'
        Fields = 'IdAgrupacion'
      end>
    TableName = 'SPAAgrupacionesCuentas'
    StoreDefs = True
    Left = 576
    Top = 56
    object SPAAgrupacionesCuentasIdAgrupacionCuenta: TAutoIncField
      AutoGenerateValue = arAutoInc
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
  object qrDocumentosInventario: TDBISAMQuery
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
      '  SOperacionInv.FTI_RESPONSABLE AS Nit,'
      '  SOperacionInv.FTI_PERSONACONTACTO AS Contacto,'
      '  SOperacionInv.FTI_TELEFONOCONTACTO AS Telefono,'
      '  SOperacionInv.FTI_SALDOOPERACION AS SaldoOperacion,'
      '  SOperacionInv.FTI_FORMADEPAGO AS FormaPago,'
      '  SOperacionInv.FTI_FLETEMONEDA AS Flete,'
      '  SOperacionInv.FTI_MONTOPAGADO AS MontoPagado,'
      '  :CampoAgrupacionInventario AS Agrupacion,'
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
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'CampoAgrupacionInventario'
      end>
    Left = 64
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CampoAgrupacionInventario'
      end>
  end
  object Sinventario: TDBISAMTable
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    TableName = 'Sinventario'
    Left = 224
    Top = 16
    object SinventarioFI_CODIGO: TStringField
      FieldName = 'FI_CODIGO'
      Required = True
      Size = 30
    end
    object SinventarioFI_DESCRIPCION: TStringField
      FieldName = 'FI_DESCRIPCION'
      Required = True
      Size = 40
    end
    object SinventarioFI_CATEGORIA: TStringField
      FieldName = 'FI_CATEGORIA'
      Required = True
      Size = 30
    end
    object SinventarioFI_DESCRIPCIONDETALLADA: TMemoField
      FieldName = 'FI_DESCRIPCIONDETALLADA'
      BlobType = ftMemo
    end
    object SinventarioFI_VENDEDOR: TStringField
      FieldName = 'FI_VENDEDOR'
      Size = 30
    end
    object SinventarioFI_STATUS: TBooleanField
      FieldName = 'FI_STATUS'
    end
    object SinventarioFI_UNIDAD: TStringField
      FieldName = 'FI_UNIDAD'
      Size = 30
    end
    object SinventarioFI_TIPOCODIGOBARRA: TSmallintField
      FieldName = 'FI_TIPOCODIGOBARRA'
    end
    object SinventarioFI_IMAGEN: TGraphicField
      FieldName = 'FI_IMAGEN'
      BlobType = ftGraphic
    end
    object SinventarioFI_SUSTITUTO1: TStringField
      FieldName = 'FI_SUSTITUTO1'
      Size = 30
    end
    object SinventarioFI_SUSTITUTO2: TStringField
      FieldName = 'FI_SUSTITUTO2'
      Size = 30
    end
    object SinventarioFI_SUSTITUTO3: TStringField
      FieldName = 'FI_SUSTITUTO3'
      Size = 30
    end
    object SinventarioFI_REFERENCIA: TStringField
      FieldName = 'FI_REFERENCIA'
      Size = 30
    end
    object SinventarioFI_MARCA: TStringField
      FieldName = 'FI_MARCA'
      Size = 30
    end
    object SinventarioFI_MONEDA: TStringField
      FieldName = 'FI_MONEDA'
      Size = 30
    end
    object SinventarioFI_FACTORCONVERSION: TCurrencyField
      FieldName = 'FI_FACTORCONVERSION'
    end
    object SinventarioFI_UNDEXISTENCIA2: TStringField
      FieldName = 'FI_UNDEXISTENCIA2'
      Size = 30
    end
    object SinventarioFI_PUESTO: TStringField
      FieldName = 'FI_PUESTO'
      Size = 30
    end
    object SinventarioFI_SUJETOACOMISION: TBooleanField
      FieldName = 'FI_SUJETOACOMISION'
    end
    object SinventarioFI_MONTOCOMISION: TCurrencyField
      FieldName = 'FI_MONTOCOMISION'
    end
    object SinventarioFI_CUENTASCONTABLES: TSmallintField
      FieldName = 'FI_CUENTASCONTABLES'
    end
    object SinventarioFI_PESOPRODUCTO: TCurrencyField
      FieldName = 'FI_PESOPRODUCTO'
    end
    object SinventarioFI_DIASDEREPOSICION: TSmallintField
      FieldName = 'FI_DIASDEREPOSICION'
    end
    object SinventarioFI_PRESENTACION: TSmallintField
      FieldName = 'FI_PRESENTACION'
    end
    object SinventarioFI_GARANTIA: TIntegerField
      FieldName = 'FI_GARANTIA'
    end
    object SinventarioFI_SUSTITUTO4: TStringField
      FieldName = 'FI_SUSTITUTO4'
      Size = 30
    end
    object SinventarioFI_SUSTITUTO5: TStringField
      FieldName = 'FI_SUSTITUTO5'
      Size = 30
    end
    object SinventarioFI_MONTOCOMISIONP: TBooleanField
      FieldName = 'FI_MONTOCOMISIONP'
    end
    object SinventarioFI_DEPOSITOS: TBooleanField
      FieldName = 'FI_DEPOSITOS'
    end
    object SinventarioFI_OFERTAS: TBooleanField
      FieldName = 'FI_OFERTAS'
    end
    object SinventarioFI_VENCIMIENTOS: TBooleanField
      FieldName = 'FI_VENCIMIENTOS'
    end
    object SinventarioFI_CLASIFICACION: TIntegerField
      FieldName = 'FI_CLASIFICACION'
    end
    object SinventarioFI_MANEJOINVENTARIO: TIntegerField
      FieldName = 'FI_MANEJOINVENTARIO'
    end
    object SinventarioFI_SERIALES: TBooleanField
      FieldName = 'FI_SERIALES'
    end
    object SinventarioFI_CREACION: TDateField
      FieldName = 'FI_CREACION'
    end
    object SinventarioFI_INVENTARIOINICIALUNIDADES: TCurrencyField
      FieldName = 'FI_INVENTARIOINICIALUNIDADES'
    end
    object SinventarioFI_INVENTARIOINICIALCOSTO: TCurrencyField
      FieldName = 'FI_INVENTARIOINICIALCOSTO'
    end
    object SinventarioFI_CAPACIDAD: TCurrencyField
      FieldName = 'FI_CAPACIDAD'
    end
    object SinventarioFI_EXISTDECIMAL: TBooleanField
      FieldName = 'FI_EXISTDECIMAL'
    end
    object SinventarioFI_COMPUESTOSERIALES: TBooleanField
      FieldName = 'FI_COMPUESTOSERIALES'
    end
    object SinventarioFI_VENDEDORFIJO: TStringField
      FieldName = 'FI_VENDEDORFIJO'
      Size = 30
    end
    object SinventarioFI_VENDEDORFIJOACTIVO: TBooleanField
      FieldName = 'FI_VENDEDORFIJOACTIVO'
    end
    object SinventarioFI_MODELO: TStringField
      FieldName = 'FI_MODELO'
      Size = 50
    end
    object SinventarioFI_SUBCATEGORIA: TStringField
      FieldName = 'FI_SUBCATEGORIA'
      Size = 50
    end
    object SinventarioFI_PESOAFECTACOSTO: TBooleanField
      FieldName = 'FI_PESOAFECTACOSTO'
    end
    object SinventarioFI_IMPRESORA: TStringField
      FieldName = 'FI_IMPRESORA'
      Size = 50
    end
    object SinventarioBASE_AUTOINCREMENT: TAutoIncField
      FieldName = 'BASE_AUTOINCREMENT'
    end
    object SinventarioFI_ZEXTRA1: TCurrencyField
      FieldName = 'FI_ZEXTRA1'
    end
    object SinventarioFI_ZEXTRA2: TCurrencyField
      FieldName = 'FI_ZEXTRA2'
    end
    object SinventarioFI_ZEXTRA3: TCurrencyField
      FieldName = 'FI_ZEXTRA3'
    end
    object SinventarioFI_ZEXTRA4: TCurrencyField
      FieldName = 'FI_ZEXTRA4'
    end
    object SinventarioFI_ZEXTRA5: TCurrencyField
      FieldName = 'FI_ZEXTRA5'
    end
    object SinventarioFI_ZEXTRA6: TCurrencyField
      FieldName = 'FI_ZEXTRA6'
    end
    object SinventarioFI_ZEXTRA1VENTA: TBooleanField
      FieldName = 'FI_ZEXTRA1VENTA'
    end
    object SinventarioFI_ZEXTRA2VENTA: TBooleanField
      FieldName = 'FI_ZEXTRA2VENTA'
    end
    object SinventarioFI_ZEXTRA3VENTA: TBooleanField
      FieldName = 'FI_ZEXTRA3VENTA'
    end
    object SinventarioFI_ZEXTRA4VENTA: TBooleanField
      FieldName = 'FI_ZEXTRA4VENTA'
    end
    object SinventarioFI_ZEXTRA5VENTA: TBooleanField
      FieldName = 'FI_ZEXTRA5VENTA'
    end
    object SinventarioFI_ZEXTRA6VENTA: TBooleanField
      FieldName = 'FI_ZEXTRA6VENTA'
    end
    object SinventarioFI_ZEXTRA1VENTAMOD: TBooleanField
      FieldName = 'FI_ZEXTRA1VENTAMOD'
    end
    object SinventarioFI_ZEXTRA2VENTAMOD: TBooleanField
      FieldName = 'FI_ZEXTRA2VENTAMOD'
    end
    object SinventarioFI_ZEXTRA3VENTAMOD: TBooleanField
      FieldName = 'FI_ZEXTRA3VENTAMOD'
    end
    object SinventarioFI_ZEXTRA4VENTAMOD: TBooleanField
      FieldName = 'FI_ZEXTRA4VENTAMOD'
    end
    object SinventarioFI_ZEXTRA5VENTAMOD: TBooleanField
      FieldName = 'FI_ZEXTRA5VENTAMOD'
    end
    object SinventarioFI_ZEXTRA6VENTAMOD: TBooleanField
      FieldName = 'FI_ZEXTRA6VENTAMOD'
    end
    object SinventarioFI_INTERNET: TBooleanField
      FieldName = 'FI_INTERNET'
    end
    object SinventarioFI_BALANZA: TBooleanField
      FieldName = 'FI_BALANZA'
    end
    object SinventarioFI_CODIGOBARRA: TBooleanField
      FieldName = 'FI_CODIGOBARRA'
    end
    object SinventarioFI_PRECIOLISTA: TBooleanField
      FieldName = 'FI_PRECIOLISTA'
    end
    object SinventarioFI_APROVECHAPORC: TCurrencyField
      FieldName = 'FI_APROVECHAPORC'
    end
    object SinventarioFI_ARANCEL: TStringField
      FieldName = 'FI_ARANCEL'
      Size = 30
    end
    object SinventarioFI_POSENTREGA: TBooleanField
      FieldName = 'FI_POSENTREGA'
    end
  end
  object SPAMovimientoTemp: TDBISAMTable
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    TableName = 'SPAMovimientoTemp'
    Left = 176
    Top = 280
    object SPAMovimientoTempIdMovimientoGenerado: TAutoIncField
      FieldName = 'IdMovimientoGenerado'
      Origin = 'SPAMovimientoTemp.IdMovimientoGenerado'
    end
    object SPAMovimientoTempIdTipoComprobante: TSmallintField
      FieldName = 'IdTipoComprobante'
      Origin = 'SPAMovimientoTemp.IdTipoComprobante'
    end
    object SPAMovimientoTempIdTipoTransaccion: TSmallintField
      FieldName = 'IdTipoTransaccion'
      Origin = 'SPAMovimientoTemp.IdTipoTransaccion'
    end
    object SPAMovimientoTempIdTipoOperacion: TSmallintField
      FieldName = 'IdTipoOperacion'
      Origin = 'SPAMovimientoTemp.IdTipoOperacion'
    end
    object SPAMovimientoTempIdOrigenMonto: TSmallintField
      FieldName = 'IdOrigenMonto'
      Origin = 'SPAMovimientoTemp.IdOrigenMonto'
    end
    object SPAMovimientoTempCuenta: TStringField
      FieldName = 'Cuenta'
      Origin = 'SPAMovimientoTemp.Cuenta'
      Size = 10
    end
    object SPAMovimientoTempComprobante: TStringField
      FieldName = 'Comprobante'
      Origin = 'SPAMovimientoTemp.Comprobante'
      Size = 5
    end
    object SPAMovimientoTempFecha: TDateField
      FieldName = 'Fecha'
      Origin = 'SPAMovimientoTemp.Fecha'
    end
    object SPAMovimientoTempDocumento: TStringField
      FieldName = 'Documento'
      Origin = 'SPAMovimientoTemp.Documento'
      Size = 9
    end
    object SPAMovimientoTempDocumentoRef: TStringField
      FieldName = 'DocumentoRef'
      Origin = 'SPAMovimientoTemp.DocumentoRef'
      Size = 9
    end
    object SPAMovimientoTempNit: TStringField
      FieldName = 'Nit'
      Origin = 'SPAMovimientoTemp.Nit'
      Size = 11
    end
    object SPAMovimientoTempDetalle: TStringField
      FieldName = 'Detalle'
      Origin = 'SPAMovimientoTemp.Detalle'
      Size = 28
    end
    object SPAMovimientoTempTipo: TSmallintField
      FieldName = 'Tipo'
      Origin = 'SPAMovimientoTemp.Tipo'
    end
    object SPAMovimientoTempValor: TFloatField
      FieldName = 'Valor'
      Origin = 'SPAMovimientoTemp.Valor'
    end
    object SPAMovimientoTempBase: TFloatField
      FieldName = 'Base'
      Origin = 'SPAMovimientoTemp.Base'
    end
    object SPAMovimientoTempCCosto: TStringField
      FieldName = 'CCosto'
      Origin = 'SPAMovimientoTemp.CCosto'
      Size = 6
    end
  end
  object qrCodificacionGeneral: TDBISAMQuery
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    SQL.Strings = (
      'SELECT'
      '  SPAConfiguracionContable.IdTipoComprobante,'
      '  SPAConfiguracionContable.Comprobante,'
      '  SPAConfiguracionContable.IdTipoTransaccion,'
      '  SPAConfiguracionContableMov.IdTipoOperacion,'
      '  SPAConfiguracionContableMov.IdOrigenMonto,'
      '  SPAConfiguracionContableMov.Detalle,'
      '  SPAConfiguracionContableMov.CuentaGeneral,'
      '  SPAConfiguracionContableMov.TipoAsiento'
      'FROM'
      ' SPAConfiguracionContable'
      
        ' INNER JOIN SPAConfiguracionContableMov ON (SPAConfiguracionCont' +
        'able.IdConfiguracionContable=SPAConfiguracionContableMov.IdConfi' +
        'guracionContable)'
      'WHERE'
      
        '  (SPAConfiguracionContable.IdTipoComprobante = :IdTipoComproban' +
        'te) AND'
      
        '  (SPAConfiguracionContable.IdTipoTransaccion = :IdTipoTransacci' +
        'on) AND'
      
        '  (SPAConfiguracionContableMov.IdTipoOperacion = :IdTipoOperacio' +
        'n)')
    Params = <
      item
        DataType = ftInteger
        Name = 'IdTipoComprobante'
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'IdTipoTransaccion'
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'IdTipoOperacion'
        Value = 0
      end>
    Left = 56
    Top = 352
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IdTipoComprobante'
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'IdTipoTransaccion'
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'IdTipoOperacion'
        Value = 0
      end>
    object qrCodificacionGeneralIdTipoComprobante: TSmallintField
      FieldName = 'IdTipoComprobante'
      Origin = 'SPAConfiguracionContable.IdTipoComprobante'
    end
    object qrCodificacionGeneralComprobante: TStringField
      FieldName = 'Comprobante'
      Origin = 'SPAConfiguracionContable.Comprobante'
      Size = 10
    end
    object qrCodificacionGeneralIdTipoTransaccion: TSmallintField
      FieldName = 'IdTipoTransaccion'
      Origin = 'SPAConfiguracionContable.IdTipoTransaccion'
    end
    object qrCodificacionGeneralIdTipoOperacion: TIntegerField
      FieldName = 'IdTipoOperacion'
      Origin = 'SPAConfiguracionContableMov.IdTipoOperacion'
    end
    object qrCodificacionGeneralIdOrigenMonto: TIntegerField
      FieldName = 'IdOrigenMonto'
      Origin = 'SPAConfiguracionContableMov.IdOrigenMonto'
    end
    object qrCodificacionGeneralDetalle: TStringField
      FieldName = 'Detalle'
      Origin = 'SPAConfiguracionContableMov.Detalle'
      Size = 30
    end
    object qrCodificacionGeneralCuentaGeneral: TStringField
      FieldName = 'CuentaGeneral'
      Origin = 'SPAConfiguracionContableMov.CuentaGeneral'
      Size = 30
    end
    object qrCodificacionGeneralTipoAsiento: TSmallintField
      FieldName = 'TipoAsiento'
      Origin = 'SPAConfiguracionContableMov.TipoAsiento'
    end
  end
  object qrConsulta: TDBISAMQuery
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    SQL.Strings = (
      'delete from SPAMovimientoTemp')
    Params = <>
    Left = 296
    Top = 232
  end
end
