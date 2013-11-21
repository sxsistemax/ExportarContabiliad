object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 408
  Width = 505
  object tbmContai: TJvMemoryData
    FieldDefs = <>
    Left = 56
    Top = 200
    object tbmContaiCuenta: TStringField
      FieldName = 'Cuenta'
    end
    object tbmContaiComprobante: TStringField
      FieldName = 'Comprobante'
      Size = 5
    end
    object tbmContaiFecha: TStringField
      FieldName = 'Fecha'
      Size = 10
    end
    object tbmContaiDocumento: TStringField
      FieldName = 'Documento'
    end
    object tbmContaiDocumentoRef: TStringField
      FieldName = 'DocumentoRef'
    end
    object tbmContaiNit: TStringField
      FieldName = 'Nit'
      Size = 16
    end
    object tbmContaiDetalle: TStringField
      FieldName = 'Detalle'
      Size = 30
    end
    object tbmContaiTipo: TIntegerField
      FieldName = 'Tipo'
    end
    object tbmContaiValor: TFloatField
      FieldName = 'Valor'
    end
    object tbmContaiBase: TFloatField
      FieldName = 'Base'
    end
    object tbmContaiCCosto: TStringField
      FieldName = 'CCosto'
    end
  end
  object a2ContabDiario: TDBISAMTable
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    TableName = 'a2ContabDiario'
    Left = 80
    Top = 104
    object a2ContabDiarioNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'a2ContabDiario.NUMERO'
      Required = True
      Size = 30
    end
    object a2ContabDiarioFECHA: TDateField
      FieldName = 'FECHA'
      Origin = 'a2ContabDiario.FECHA'
      Required = True
    end
    object a2ContabDiarioTIPO: TSmallintField
      FieldName = 'TIPO'
      Origin = 'a2ContabDiario.TIPO'
    end
    object a2ContabDiarioESTATUS: TSmallintField
      FieldName = 'ESTATUS'
      Origin = 'a2ContabDiario.ESTATUS'
    end
    object a2ContabDiarioDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'a2ContabDiario.DESCRIPCION'
      Size = 100
    end
    object a2ContabDiarioDETALLADA: TMemoField
      FieldName = 'DETALLADA'
      Origin = 'a2ContabDiario.DETALLADA'
      BlobType = ftMemo
    end
    object a2ContabDiarioPROCEDENCIA: TSmallintField
      FieldName = 'PROCEDENCIA'
      Origin = 'a2ContabDiario.PROCEDENCIA'
    end
    object a2ContabDiarioNUMERO_INTEG: TSmallintField
      FieldName = 'NUMERO_INTEG'
      Origin = 'a2ContabDiario.NUMERO_INTEG'
    end
    object a2ContabDiarioMONTO_DEBE: TCurrencyField
      FieldName = 'MONTO_DEBE'
      Origin = 'a2ContabDiario.MONTO_DEBE'
    end
    object a2ContabDiarioMONTO_HABER: TCurrencyField
      FieldName = 'MONTO_HABER'
      Origin = 'a2ContabDiario.MONTO_HABER'
    end
    object a2ContabDiarioMANEJA_EFECTIVO: TBooleanField
      FieldName = 'MANEJA_EFECTIVO'
      Origin = 'a2ContabDiario.MANEJA_EFECTIVO'
    end
    object a2ContabDiarioCMONEDA: TStringField
      FieldName = 'CMONEDA'
      Origin = 'a2ContabDiario.CMONEDA'
      Size = 30
    end
    object a2ContabDiarioFACTOR: TCurrencyField
      FieldName = 'FACTOR'
      Origin = 'a2ContabDiario.FACTOR'
    end
    object a2ContabDiarioUSER_PREPARADO: TBooleanField
      FieldName = 'USER_PREPARADO'
      Origin = 'a2ContabDiario.USER_PREPARADO'
    end
    object a2ContabDiarioUSER_REVISADO: TBooleanField
      FieldName = 'USER_REVISADO'
      Origin = 'a2ContabDiario.USER_REVISADO'
    end
    object a2ContabDiarioUSER_APROBADO: TBooleanField
      FieldName = 'USER_APROBADO'
      Origin = 'a2ContabDiario.USER_APROBADO'
    end
    object a2ContabDiarioUSER_CONTROLADO: TBooleanField
      FieldName = 'USER_CONTROLADO'
      Origin = 'a2ContabDiario.USER_CONTROLADO'
    end
    object a2ContabDiarioUSER_FECHA_CONTROL: TDateField
      FieldName = 'USER_FECHA_CONTROL'
      Origin = 'a2ContabDiario.USER_FECHA_CONTROL'
    end
    object a2ContabDiarioUSER_FECHA_CUENTA: TDateField
      FieldName = 'USER_FECHA_CUENTA'
      Origin = 'a2ContabDiario.USER_FECHA_CUENTA'
    end
    object a2ContabDiarioUSERCODE: TStringField
      FieldName = 'USERCODE'
      Origin = 'a2ContabDiario.USERCODE'
      Size = 30
    end
    object a2ContabDiarioFLAG: TStringField
      FieldName = 'FLAG'
      Origin = 'a2ContabDiario.FLAG'
      Size = 1
    end
    object a2ContabDiarioBASE_AUTOINCREMENT: TAutoIncField
      FieldName = 'BASE_AUTOINCREMENT'
      Origin = 'a2ContabDiario.BASE_AUTOINCREMENT'
    end
    object a2ContabDiarioNO_MOVIMIENTOS: TIntegerField
      FieldName = 'NO_MOVIMIENTOS'
      Origin = 'a2ContabDiario.NO_MOVIMIENTOS'
    end
  end
  object a2ContabDiarioMov: TDBISAMTable
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    TableName = 'a2ContabDiarioMov'
    Left = 184
    Top = 104
    object a2ContabDiarioMovNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'a2ContabDiarioMov.NUMERO'
      Required = True
      Size = 30
    end
    object a2ContabDiarioMovBASE_AUTOINCREMENT: TAutoIncField
      FieldName = 'BASE_AUTOINCREMENT'
      Origin = 'a2ContabDiarioMov.BASE_AUTOINCREMENT'
    end
    object a2ContabDiarioMovFECHA: TDateField
      FieldName = 'FECHA'
      Origin = 'a2ContabDiarioMov.FECHA'
      Required = True
    end
    object a2ContabDiarioMovLINEA: TIntegerField
      FieldName = 'LINEA'
      Origin = 'a2ContabDiarioMov.LINEA'
    end
    object a2ContabDiarioMovTIPO: TSmallintField
      FieldName = 'TIPO'
      Origin = 'a2ContabDiarioMov.TIPO'
      Required = True
    end
    object a2ContabDiarioMovESTATUS: TSmallintField
      FieldName = 'ESTATUS'
      Origin = 'a2ContabDiarioMov.ESTATUS'
      Required = True
    end
    object a2ContabDiarioMovASIENTO: TIntegerField
      FieldName = 'ASIENTO'
      Origin = 'a2ContabDiarioMov.ASIENTO'
    end
    object a2ContabDiarioMovCUENTA: TStringField
      FieldName = 'CUENTA'
      Origin = 'a2ContabDiarioMov.CUENTA'
      Required = True
      Size = 30
    end
    object a2ContabDiarioMovCAUXILIAR: TStringField
      FieldName = 'CAUXILIAR'
      Origin = 'a2ContabDiarioMov.CAUXILIAR'
      Size = 30
    end
    object a2ContabDiarioMovCCOSTO: TStringField
      FieldName = 'CCOSTO'
      Origin = 'a2ContabDiarioMov.CCOSTO'
      Size = 30
    end
    object a2ContabDiarioMovCTA_GASTO: TStringField
      FieldName = 'CTA_GASTO'
      Origin = 'a2ContabDiarioMov.CTA_GASTO'
      Size = 30
    end
    object a2ContabDiarioMovCACTIVO: TStringField
      FieldName = 'CACTIVO'
      Origin = 'a2ContabDiarioMov.CACTIVO'
      Size = 30
    end
    object a2ContabDiarioMovDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'a2ContabDiarioMov.DESCRIPCION'
      Size = 50
    end
    object a2ContabDiarioMovDETALLADA: TMemoField
      FieldName = 'DETALLADA'
      Origin = 'a2ContabDiarioMov.DETALLADA'
      BlobType = ftMemo
    end
    object a2ContabDiarioMovMONTO_DEBE: TCurrencyField
      FieldName = 'MONTO_DEBE'
      Origin = 'a2ContabDiarioMov.MONTO_DEBE'
    end
    object a2ContabDiarioMovMONTO_HABER: TCurrencyField
      FieldName = 'MONTO_HABER'
      Origin = 'a2ContabDiarioMov.MONTO_HABER'
    end
    object a2ContabDiarioMovMONTO_BASE: TCurrencyField
      FieldName = 'MONTO_BASE'
      Origin = 'a2ContabDiarioMov.MONTO_BASE'
    end
    object a2ContabDiarioMovMONTO_BASE_DEBE: TCurrencyField
      FieldName = 'MONTO_BASE_DEBE'
      Origin = 'a2ContabDiarioMov.MONTO_BASE_DEBE'
    end
    object a2ContabDiarioMovMONTO_BASE_HABER: TCurrencyField
      FieldName = 'MONTO_BASE_HABER'
      Origin = 'a2ContabDiarioMov.MONTO_BASE_HABER'
    end
    object a2ContabDiarioMovMONTO_EFECTIVO: TCurrencyField
      FieldName = 'MONTO_EFECTIVO'
      Origin = 'a2ContabDiarioMov.MONTO_EFECTIVO'
    end
    object a2ContabDiarioMovMONTO_EFECTIVO_DEBE: TCurrencyField
      FieldName = 'MONTO_EFECTIVO_DEBE'
      Origin = 'a2ContabDiarioMov.MONTO_EFECTIVO_DEBE'
    end
    object a2ContabDiarioMovMONTO_EFECTIVO_HABER: TCurrencyField
      FieldName = 'MONTO_EFECTIVO_HABER'
      Origin = 'a2ContabDiarioMov.MONTO_EFECTIVO_HABER'
    end
    object a2ContabDiarioMovDOC_TIPO: TSmallintField
      FieldName = 'DOC_TIPO'
      Origin = 'a2ContabDiarioMov.DOC_TIPO'
    end
    object a2ContabDiarioMovDOC_REF: TStringField
      FieldName = 'DOC_REF'
      Origin = 'a2ContabDiarioMov.DOC_REF'
    end
    object a2ContabDiarioMovDOC_FECHA: TDateField
      FieldName = 'DOC_FECHA'
      Origin = 'a2ContabDiarioMov.DOC_FECHA'
    end
    object a2ContabDiarioMovCMONEDA: TStringField
      FieldName = 'CMONEDA'
      Origin = 'a2ContabDiarioMov.CMONEDA'
      Size = 30
    end
    object a2ContabDiarioMovFACTOR: TCurrencyField
      FieldName = 'FACTOR'
      Origin = 'a2ContabDiarioMov.FACTOR'
    end
    object a2ContabDiarioMovFECHA_INICIO_DEP: TDateField
      FieldName = 'FECHA_INICIO_DEP'
      Origin = 'a2ContabDiarioMov.FECHA_INICIO_DEP'
    end
    object a2ContabDiarioMovREVISADO: TBooleanField
      FieldName = 'REVISADO'
      Origin = 'a2ContabDiarioMov.REVISADO'
    end
    object a2ContabDiarioMovTRANSFERIDO: TBooleanField
      FieldName = 'TRANSFERIDO'
      Origin = 'a2ContabDiarioMov.TRANSFERIDO'
    end
    object a2ContabDiarioMovFLAG: TStringField
      FieldName = 'FLAG'
      Origin = 'a2ContabDiarioMov.FLAG'
      Size = 1
    end
    object a2ContabDiarioMovUSERCODE: TStringField
      FieldName = 'USERCODE'
      Origin = 'a2ContabDiarioMov.USERCODE'
      Size = 10
    end
    object a2ContabDiarioMovCTA_ORIGEN: TStringField
      FieldName = 'CTA_ORIGEN'
      Origin = 'a2ContabDiarioMov.CTA_ORIGEN'
      Size = 30
    end
    object a2ContabDiarioMovDOCUMENTO: TIntegerField
      FieldName = 'DOCUMENTO'
      Origin = 'a2ContabDiarioMov.DOCUMENTO'
    end
  end
  object ConsultaMovimiento: TDBISAMQuery
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    SQL.Strings = (
      
        'Select  DM.Cuenta, DM.Doc_Tipo, D.Fecha, D.Numero, DM.Doc_Ref,  ' +
        #39'Nit'#39' Nit,'
      
        '  DM.Descripcion, DM.Monto_Debe, DM.Monto_Haber, DM.Monto_Base, ' +
        'DM.CCosto'
      
        'From a2ContabDiario D Inner Join a2ContabDiarioMov DM on D.Numer' +
        'o = DM.Numero')
    Params = <>
    Left = 320
    Top = 104
  end
  object DBISAMQuery1: TDBISAMQuery
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    SQL.Strings = (
      'select * from '#39'c:\DB\Pastizeria\CONSOLIDAR\a2ContabDiario.dat'#39' D')
    Params = <>
    Left = 248
    Top = 232
  end
end
