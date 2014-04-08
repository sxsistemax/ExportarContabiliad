object dmEC: TdmEC
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 490
  Width = 689
  object SPAConfiguracionExportarContabilidad: TDBISAMTable
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    TableName = 'SPAConfiguracionExportarContabilidad'
    Left = 96
    Top = 104
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
    object SPAConfiguracionExportarContabilidadRutaConsecutivos: TStringField
      FieldName = 'RutaConsecutivos'
      Size = 250
    end
    object SPAConfiguracionExportarContabilidadPorcentajeCREE: TFloatField
      FieldName = 'PorcentajeCREE'
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
    Top = 152
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
    Left = 504
    Top = 16
    object SPAMovimientoGeneradoIdMovimientoGenerado: TAutoIncField
      FieldName = 'IdMovimientoGenerado'
      Visible = False
    end
    object SPAMovimientoGeneradoIdConfiguracionContable: TIntegerField
      FieldName = 'IdConfiguracionContable'
      Visible = False
    end
    object SPAMovimientoGeneradoIdTipoOperacion: TIntegerField
      FieldName = 'IdTipoOperacion'
      Visible = False
    end
    object SPAMovimientoGeneradoIdClasificacion: TIntegerField
      FieldName = 'IdClasificacion'
      Visible = False
    end
    object SPAMovimientoGeneradoIdDocumento: TIntegerField
      FieldName = 'IdDocumento'
      Visible = False
    end
    object SPAMovimientoGeneradoIdOrigenMonto: TSmallintField
      FieldName = 'IdOrigenMonto'
      Visible = False
    end
    object SPAMovimientoGeneradoFecha: TDateField
      FieldName = 'Fecha'
    end
    object SPAMovimientoGeneradoCuenta: TStringField
      FieldName = 'Cuenta'
      Size = 10
    end
    object SPAMovimientoGeneradoNombreCuenta: TStringField
      FieldKind = fkLookup
      FieldName = 'NombreCuenta'
      LookupDataSet = a2CCuentas
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRIPCION'
      KeyFields = 'Cuenta'
      Size = 30
      Lookup = True
    end
    object SPAMovimientoGeneradoComprobante: TStringField
      FieldName = 'Comprobante'
      Size = 5
    end
    object SPAMovimientoGeneradoDocumento: TStringField
      DisplayWidth = 20
      FieldName = 'Documento'
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
      Visible = False
    end
    object SPAMovimientoGeneradoNitNombre: TStringField
      FieldName = 'NitNombre'
      Size = 50
    end
    object SPAMovimientoGeneradoPlazo: TIntegerField
      FieldName = 'Plazo'
    end
    object SPAMovimientoGeneradoTransaccionBancaria: TStringField
      FieldName = 'TransaccionBancaria'
      Size = 3
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
    Left = 400
    Top = 344
    object SPAConfiguracionContableMovIdConfiguracionContableMov: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'IdConfiguracionContableMov'
    end
    object SPAConfiguracionContableMovIdConfiguracionContable: TIntegerField
      FieldName = 'IdConfiguracionContable'
      Required = True
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
  object tbOrigenMonto: TJvMemoryData
    FieldDefs = <>
    Left = 248
    Top = 168
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
    Left = 144
    Top = 168
    object tbTipoOperacionIdTipoOperacion: TSmallintField
      FieldName = 'IdTipoOperacion'
    end
    object tbTipoOperacionTipoOperacion: TStringField
      FieldName = 'TipoOperacion'
      Size = 40
    end
  end
  object tbModulos: TJvMemoryData
    FieldDefs = <>
    Left = 24
    Top = 168
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
    Left = 504
    Top = 72
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
    Left = 320
    Top = 296
    object SPAAgrupacionesCuentasIdAgrupacionCuenta: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'IdAgrupacionCuenta'
    end
    object SPAAgrupacionesCuentasIdAgrupacion: TIntegerField
      FieldName = 'IdAgrupacion'
    end
    object SPAAgrupacionesCuentasIdTipoOperacion: TIntegerField
      FieldName = 'IdTipoOperacion'
    end
    object SPAAgrupacionesCuentasIdOrigenMonto: TIntegerField
      FieldName = 'IdOrigenMonto'
    end
    object SPAAgrupacionesCuentasCuenta: TStringField
      FieldName = 'Cuenta'
      Size = 30
    end
    object SPAAgrupacionesCuentasSubCentro: TStringField
      DisplayWidth = 4
      FieldName = 'SubCentro'
      Size = 4
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
    Left = 304
    Top = 368
    object SPAConfiguracionContableIdConfiguracionContable: TAutoIncField
      FieldName = 'IdConfiguracionContable'
    end
    object SPAConfiguracionContableDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object SPAConfiguracionContableComprobante: TStringField
      FieldName = 'Comprobante'
      Size = 10
    end
    object SPAConfiguracionContableIdTipoOperacion: TIntegerField
      FieldName = 'IdTipoOperacion'
    end
    object SPAConfiguracionContableIdConsecutivo: TIntegerField
      FieldName = 'IdConsecutivo'
    end
    object SPAConfiguracionContableSubCentro: TStringField
      FieldName = 'SubCentro'
      Size = 4
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
      '  SOperacionInv.FTI_CLASIFICACION as IdClasificacion,'
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
  end
  object SPAMovimientoTemp: TDBISAMTable
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    TableName = 'SPAMovimientoTemp'
    Left = 504
    Top = 152
    object SPAMovimientoTempIdMovimientoGenerado: TAutoIncField
      FieldName = 'IdMovimientoGenerado'
      Origin = 'SPAMovimientoTemp.IdMovimientoGenerado'
    end
    object SPAMovimientoTempIdConfiguracionContable: TIntegerField
      FieldName = 'IdConfiguracionContable'
    end
    object SPAMovimientoTempIdTipoOperacion: TIntegerField
      FieldName = 'IdTipoOperacion'
    end
    object SPAMovimientoTempIdDocumento: TIntegerField
      FieldName = 'IdDocumento'
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
      DisplayWidth = 20
      FieldName = 'Documento'
      Origin = 'SPAMovimientoTemp.Documento'
    end
    object SPAMovimientoTempDocumentoRef: TStringField
      DisplayWidth = 20
      FieldName = 'DocumentoRef'
      Origin = 'SPAMovimientoTemp.DocumentoRef'
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
    object SPAMovimientoTempNitNombre: TStringField
      FieldName = 'NitNombre'
      Size = 50
    end
    object SPAMovimientoTempPlazo: TIntegerField
      FieldName = 'Plazo'
    end
    object SPAMovimientoTempTransaccionBancaria: TStringField
      FieldName = 'TransaccionBancaria'
      Size = 3
    end
  end
  object qrCodificacionGeneral: TDBISAMQuery
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    SQL.Strings = (
      'SELECT'
      '  SPAConfiguracionContable.Comprobante,'
      '  SPAConfiguracionContableMov.IdOrigenMonto,'
      '  SPAConfiguracionContableMov.Detalle,'
      '  SPAConfiguracionContableMov.CuentaGeneral,'
      '  SPAConfiguracionContableMov.TipoAsiento,'
      '  SPAConfiguracionContable.SubCentro'
      'FROM'
      ' SPAConfiguracionContable'
      
        ' INNER JOIN SPAConfiguracionContableMov ON (SPAConfiguracionCont' +
        'able.IdConfiguracionContable=SPAConfiguracionContableMov.IdConfi' +
        'guracionContable)'
      'WHERE'
      
        '  (SPAConfiguracionContable.IdConfiguracionContable = :IdConfigu' +
        'racionContable)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'IdConfiguracionContable'
      end>
    Left = 56
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IdConfiguracionContable'
      end>
    object qrCodificacionGeneralComprobante: TStringField
      FieldName = 'Comprobante'
      Origin = 'SPAConfiguracionContable.Comprobante'
      Size = 10
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
    object qrCodificacionGeneralSubCentro: TStringField
      FieldName = 'SubCentro'
      Size = 10
    end
  end
  object qrConsulta: TDBISAMQuery
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    SQL.Strings = (
      'delete from SPAMovimientoTemp')
    Params = <>
    Left = 144
    Top = 352
  end
  object dbConsecutivos: TDBISAMDatabase
    EngineVersion = '4.29 Build 1'
    Connected = True
    DatabaseName = 'dbConsecutivos'
    SessionName = 'Default'
    Left = 368
    Top = 104
  end
  object SPAConsecutivos: TDBISAMTable
    DatabaseName = 'dbConsecutivos'
    EngineVersion = '4.29 Build 1'
    TableName = 'SPAConsecutivos'
    Left = 368
    Top = 160
    object SPAConsecutivosIdConsecutivo: TAutoIncField
      FieldName = 'IdConsecutivo'
    end
    object SPAConsecutivosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object SPAConsecutivosUltimoNumero: TIntegerField
      FieldName = 'UltimoNumero'
    end
  end
  object a2CCostos: TDBISAMTable
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    TableName = 'a2CCostos'
    Left = 304
    Top = 16
    object a2CCostosCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 30
    end
    object a2CCostosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Required = True
      Size = 40
    end
    object a2CCostosTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object a2CCostosCGRUPO: TStringField
      FieldName = 'CGRUPO'
      Size = 30
    end
    object a2CCostosCSUBGRUPO: TStringField
      FieldName = 'CSUBGRUPO'
      Size = 30
    end
    object a2CCostosMANEJA_PRESUPUESTO: TBooleanField
      FieldName = 'MANEJA_PRESUPUESTO'
    end
    object a2CCostosMOVIMIENTO: TBooleanField
      FieldName = 'MOVIMIENTO'
    end
    object a2CCostosREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object a2CCostosSTATUS: TBooleanField
      FieldName = 'STATUS'
    end
    object a2CCostosFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object a2CCostosBASE_AUTOINCREMENT: TAutoIncField
      FieldName = 'BASE_AUTOINCREMENT'
    end
  end
  object SPACuentasxCentro: TDBISAMTable
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    TableName = 'SPACuentasxCentro'
    Left = 512
    Top = 360
    object SPACuentasxCentroIdCuentasxCentro: TAutoIncField
      FieldName = 'IdCuentasxCentro'
    end
    object SPACuentasxCentroIdConfiguracionContable: TAutoIncField
      FieldName = 'IdConfiguracionContable'
    end
    object SPACuentasxCentroIdOrigenMonto: TIntegerField
      FieldName = 'IdOrigenMonto'
    end
    object SPACuentasxCentroCentroCostos: TStringField
      FieldName = 'CentroCostos'
      Size = 30
    end
    object SPACuentasxCentroCuenta: TStringField
      FieldName = 'Cuenta'
      Size = 30
    end
    object SPACuentasxCentroNombreCentroCostos: TStringField
      FieldKind = fkLookup
      FieldName = 'NombreCentroCostos'
      LookupDataSet = a2CCostos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRIPCION'
      KeyFields = 'CentroCostos'
      Size = 40
      Lookup = True
    end
  end
  object SPAClasificacionCuentas: TDBISAMTable
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    TableName = 'SPAClasificacionCuentas'
    Left = 504
    Top = 296
    object SPAClasificacionCuentasIdClasificacionCuenta: TAutoIncField
      FieldName = 'IdClasificacionCuenta'
    end
    object SPAClasificacionCuentasIdConfiguracionContable: TAutoIncField
      FieldName = 'IdConfiguracionContable'
    end
    object SPAClasificacionCuentasIdOrigenMonto: TIntegerField
      FieldName = 'IdOrigenMonto'
    end
    object SPAClasificacionCuentasIdClasificacion: TStringField
      DisplayWidth = 10
      FieldName = 'IdClasificacion'
      Size = 10
    end
    object SPAClasificacionCuentasClasificacion: TStringField
      FieldKind = fkLookup
      FieldName = 'Clasificacion'
      LookupDataSet = Sclasificacion
      LookupKeyFields = 'FCL_CODIGO'
      LookupResultField = 'FCL_NOMBRE'
      KeyFields = 'IdClasificacion'
      Size = 40
      Lookup = True
    end
    object SPAClasificacionCuentasCuenta: TStringField
      FieldName = 'Cuenta'
      Size = 30
    end
    object SPAClasificacionCuentasSubCentro: TStringField
      FieldName = 'SubCentro'
      Size = 4
    end
  end
  object Sclasificacion: TDBISAMTable
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    TableName = 'Sclasificacion'
    Left = 384
    Top = 16
    object SclasificacionFCL_CODIGO: TAutoIncField
      FieldName = 'FCL_CODIGO'
    end
    object SclasificacionFCL_NOMBRE: TStringField
      FieldName = 'FCL_NOMBRE'
      Size = 40
    end
    object SclasificacionFCL_DESCRIPCION: TMemoField
      FieldName = 'FCL_DESCRIPCION'
      Visible = False
      BlobType = ftMemo
    end
    object SclasificacionFCL_TIPO: TIntegerField
      FieldName = 'FCL_TIPO'
    end
    object SclasificacionCuenta: TStringField
      FieldKind = fkCalculated
      FieldName = 'Cuenta'
      OnGetText = SclasificacionCuentaGetText
      Size = 40
      Calculated = True
    end
  end
  object qrCompras: TDBISAMQuery
    DatabaseName = 'dbA2'
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
      '  SOperacionInv.FTI_DESCUENTO1MONTO as Descuento1,'
      '  SOperacionInv.FTI_DESCUENTO2MONTO as Descuento2,'
      '  SOperacionInv.FTI_DIASVENCIMIENTO Plazo,'
      '  SDetalleCompra.FDI_CANTIDAD AS Cantidad,'
      '  SDetalleCompra.FDI_PRECIOCONDESCUENTO AS Costo,'
      
        '  SDetalleCompra.FDI_CANTIDAD * SDetalleCompra.FDI_PRECIOCONDESC' +
        'UENTO AS TotalItem,'
      '  SOperacionInv.FTI_CTOCOSTO AS CCosto,'
      '  SDetalleCompra.FDI_MONTOIMPUESTO1 AS Impuesto1,'
      
        '  SDetalleCompra.FDI_CANTIDAD * SDetalleCompra.FDI_MONTOIMPUESTO' +
        '1 AS TotalImpuestoItem,'
      '  SDetalleCompra.FDI_MONTOIMPUESTO2 AS Impuesto2,'
      
        '  SDetalleCompra.FDI_CANTIDAD * SDetalleCompra.FDI_MONTOIMPUESTO' +
        '2 AS TotalImpuesto2Item,'
      '  :IdAgrupacion AS IdAgrupacion,'
      '  SOperacionInv.FTI_CLASIFICACION as IdClasificacion,'
      '  SOperacionInv.FTI_AUTOINCREMENT AS IdDocumento,'
      '  0 CostoVenta,'
      '  0 Propina'
      'FROM'
      ' SDetalleCompra'
      
        ' INNER JOIN Sinventario ON (SDetalleCompra.FDI_CODIGO=Sinventari' +
        'o.FI_CODIGO)'
      
        ' INNER JOIN SOperacionInv ON (SOperacionInv.FTI_AUTOINCREMENT=SD' +
        'etalleCompra.FDI_OPERACION_AUTOINCREMENT)'
      
        ' LEFT OUTER JOIN SPAMovimientoGenerado ON (SOperacionInv.FTI_AUT' +
        'OINCREMENT=SPAMovimientoGenerado.IdDocumento)'
      
        '  AND (SOperacionInv.FTI_TIPO=SPAMovimientoGenerado.IdTipoOperac' +
        'ion)'
      'WHERE'
      '  (SOperacionInv.FTI_STATUS = 1) AND'
      '  (SPAMovimientoGenerado.IdMovimientoGenerado IS NULL) AND'
      '  (SOperacionInv.FTI_TIPO = :IdTipoOperacion)    AND'
      '  (SOperacionInv.FTI_FECHAEMISION <= :FechaCorte)')
    Params = <
      item
        DataType = ftString
        Name = 'IdAgrupacion'
        Value = 'Sinventario.FI_SUSTITUTO4'
      end
      item
        DataType = ftUnknown
        Name = 'IdTipoOperacion'
      end
      item
        DataType = ftUnknown
        Name = 'FechaCorte'
      end>
    Left = 16
    Top = 424
    ParamData = <
      item
        DataType = ftString
        Name = 'IdAgrupacion'
        Value = 'Sinventario.FI_SUSTITUTO4'
      end
      item
        DataType = ftUnknown
        Name = 'IdTipoOperacion'
      end
      item
        DataType = ftUnknown
        Name = 'FechaCorte'
      end>
  end
  object qrMovimientoTemporal: TDBISAMQuery
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    SQL.Strings = (
      'SELECT'
      '  SPAMovimientoTemp.IdConfiguracionContable,'
      '  SPAMovimientoTemp.IdTipoOperacion,'
      '  SPAMovimientoTemp.IdDocumento,'
      '  SPAMovimientoTemp.IdOrigenMonto,'
      '  SPAMovimientoTemp.Cuenta,'
      '  SPAMovimientoTemp.Comprobante,'
      '  SPAMovimientoTemp.Fecha,'
      '  SPAMovimientoTemp.Documento,'
      '  SPAMovimientoTemp.DocumentoRef,'
      '  SPAMovimientoTemp.Nit,'
      '  SPAMovimientoTemp.Detalle,'
      '  SPAMovimientoTemp.Tipo,'
      '  SPAMovimientoTemp.CCosto,'
      '  SPAMovimientoTemp.NitNombre,'
      '  SPAMovimientoTemp.Plazo,'
      '  SPAMovimientoTemp.TransaccionBancaria,'
      '  SUM(SPAMovimientoTemp.Valor) AS Valor,'
      '  SUM(SPAMovimientoTemp.Base) AS Base'
      'FROM'
      ' SPAMovimientoTemp'
      
        ' INNER JOIN SPAConfiguracionContable ON (SPAMovimientoTemp.IdCon' +
        'figuracionContable=SPAConfiguracionContable.IdConfiguracionConta' +
        'ble)'
      
        '  AND (SPAMovimientoTemp.IdTipoOperacion=SPAConfiguracionContabl' +
        'e.IdTipoOperacion)'
      'WHERE'
      
        '  (SPAMovimientoTemp.IdConfiguracionContable = :IdConfiguracionC' +
        'ontable) AND'
      '  (SPAMovimientoTemp.IdDocumento = :IdDocumento)'
      'GROUP BY'
      '  SPAMovimientoTemp.IdConfiguracionContable,'
      '  SPAMovimientoTemp.IdTipoOperacion,'
      '  SPAMovimientoTemp.IdDocumento,'
      '  SPAMovimientoTemp.IdOrigenMonto,'
      '  SPAMovimientoTemp.Cuenta,'
      '  SPAMovimientoTemp.Comprobante,'
      '  SPAMovimientoTemp.Fecha,'
      '  SPAMovimientoTemp.Documento,'
      '  SPAMovimientoTemp.DocumentoRef,'
      '  SPAMovimientoTemp.Nit,'
      '  SPAMovimientoTemp.Detalle,'
      '  SPAMovimientoTemp.Tipo,'
      '  SPAMovimientoTemp.CCosto,'
      '  SPAMovimientoTemp.NitNombre,'
      '  SPAMovimientoTemp.Plazo,'
      '  SPAMovimientoTemp.TransaccionBancaria')
    Params = <
      item
        DataType = ftUnknown
        Name = 'IdConfiguracionContable'
      end
      item
        DataType = ftUnknown
        Name = 'IdDocumento'
      end>
    Left = 224
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IdConfiguracionContable'
      end
      item
        DataType = ftUnknown
        Name = 'IdDocumento'
      end>
  end
  object tbNits: TJvMemoryData
    FieldDefs = <>
    Left = 608
    Top = 216
    object tbNitsNit: TStringField
      FieldName = 'Nit'
    end
    object tbNitsNombre: TStringField
      FieldName = 'Nombre'
      Size = 40
    end
  end
  object pdProceso: TJvProgressDialog
    Caption = 'Procesando'
    Interval = 1
    ScreenPosition = poOwnerFormCenter
    Left = 600
    Top = 72
  end
  object qrVentas: TDBISAMQuery
    DatabaseName = 'dbA2'
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
      '  SOperacionInv.FTI_DESCUENTO1MONTO AS Descuento1,'
      '  SOperacionInv.FTI_DESCUENTO2MONTO AS Descuento2,'
      '  SOperacionInv.FTI_CLASIFICACION AS IdClasificacion,'
      '  SOperacionInv.FTI_AUTOINCREMENT AS IdDocumento,'
      '  SOperacionInv.FTI_CTOCOSTO AS CCosto,'
      '  SOperacionInv.FTI_DIASVENCIMIENTO Plazo,'
      '  :IdAgrupacion AS IdAgrupacion,'
      '  SDetalleVenta.FDI_CANTIDAD AS Cantidad,'
      '  SDetalleVenta.FDI_PRECIOCONDESCUENTO AS Costo,'
      
        '  SDetalleVenta.FDI_CANTIDAD * SDetalleVenta.FDI_PRECIOCONDESCUE' +
        'NTO AS TotalItem,'
      '  SDetalleVenta.FDI_MONTOIMPUESTO1 AS Impuesto1,'
      
        '  SDetalleVenta.FDI_CANTIDAD * SDetalleVenta.FDI_MONTOIMPUESTO1 ' +
        'AS TotalImpuestoItem,'
      '  SDetalleVenta.FDI_MONTOIMPUESTO2 AS Impuesto2,'
      
        '  SDetalleVenta.FDI_CANTIDAD * SDetalleVenta.FDI_MONTOIMPUESTO2 ' +
        'AS TotalImpuesto2Item,'
      '  SDetalleVenta.FDI_COSTODEVENTAS CostoVenta,'
      '  SOperacionInv.FTI_FINICIAL Propina'
      'FROM'
      ' SOperacionInv'
      
        ' LEFT OUTER JOIN SPAMovimientoGenerado ON (SOperacionInv.FTI_AUT' +
        'OINCREMENT=SPAMovimientoGenerado.IdDocumento)'
      
        '  AND (SOperacionInv.FTI_TIPO=SPAMovimientoGenerado.IdTipoOperac' +
        'ion)'
      
        ' INNER JOIN SDetalleVenta ON (SOperacionInv.FTI_AUTOINCREMENT=SD' +
        'etalleVenta.FDI_OPERACION_AUTOINCREMENT)'
      
        ' INNER JOIN Sinventario ON (Sinventario.FI_CODIGO=SDetalleVenta.' +
        'FDI_CODIGO)'
      'WHERE'
      '  (SOperacionInv.FTI_STATUS = 1) AND'
      '  (SPAMovimientoGenerado.IdMovimientoGenerado IS NULL) AND'
      '  (SOperacionInv.FTI_TIPO = :IdTipoOperacion)    AND'
      '  (SOperacionInv.FTI_FECHAEMISION <= :FechaCorte)')
    Params = <
      item
        DataType = ftString
        Name = 'IdAgrupacion'
        Value = 'Sinventario.FI_SUSTITUTO4'
      end
      item
        DataType = ftUnknown
        Name = 'IdTipoOperacion'
      end
      item
        DataType = ftUnknown
        Name = 'FechaCorte'
      end>
    Left = 104
    Top = 424
    ParamData = <
      item
        DataType = ftString
        Name = 'IdAgrupacion'
        Value = 'Sinventario.FI_SUSTITUTO4'
      end
      item
        DataType = ftUnknown
        Name = 'IdTipoOperacion'
      end
      item
        DataType = ftUnknown
        Name = 'FechaCorte'
      end>
  end
end
