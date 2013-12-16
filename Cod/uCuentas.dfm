inherited frCuentas: TfrCuentas
  BorderStyle = bsDialog
  Caption = 'Cuentas'
  ClientHeight = 439
  ClientWidth = 763
  ExplicitWidth = 769
  ExplicitHeight = 468
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 407
    Width = 763
    ExplicitTop = 407
    ExplicitWidth = 763
    inherited Panel2: TPanel
      Left = 431
      ExplicitLeft = 431
    end
  end
  inherited PageControl1: TPageControl
    Width = 763
    Height = 407
    ExplicitWidth = 763
    ExplicitHeight = 407
    inherited tsListado: TTabSheet
      ExplicitWidth = 755
      ExplicitHeight = 376
      inherited dgGrid: TDBGrid
        Width = 755
        Height = 350
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRIPCION'
            Width = 278
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FECHA_APERTURA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FECHA_INACTIVA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'AJUSTE_FISCAL'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SALDO_INICIAL'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SALDO_ACTUAL'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'AJUSTE_DPC10'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CCOSTO_FIJO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CCOSTO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CONSOLIDACION'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CTA_CONSOLIDADORA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CTA_AJUSTE'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CTA_CORRECCION'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CTA_GASTO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CTA_BANCARIA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CMONEDA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TIPO_ACTIVIDAD'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TIPO_AUXILIAR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TIPO_NOMINA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CONCILIACION'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'MOVIMIENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MANEJA_CCOSTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MANEJA_PRESUPUESTO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'MANEJA_BASES'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MANEJA_AUXILIAR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MANEJA_EFECTIVO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'MANEJA_DOC'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'MANEJA_FECHADOC'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'MONEDA_APERTURA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CORRELATIVO_CHEQUE'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'MONTO_EFECTIVO_INI'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'MONTO_DEBE_INI'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'MONTO_HABER_INI'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'MONTO_DEBE_ACT'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'MONTO_HABER_ACT'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'MONTO_EXTRA1'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'MONTO_EXTRA2'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PRESUPUESTO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'VISIBLE'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FLAG'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'BASE_AUTOINCREMENT'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'MONETARIA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SALDO_INICIALAJUSTADO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'MONTO_DEBE_INIAJUSTADO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'MONTO_HABER_INIAJUSTADO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'MONTO_DEBE_ACTAJUSTADO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'MONTO_HABER_ACTAJUSTADO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TIPO_CUENTA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'P_PRESUPUESTO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'P_MONTO_DEBE_INI'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'P_MONTO_HABER_INI'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'P_MONTO_DEBE_ACT'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'P_MONTO_HABER_ACT'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'P_SALDO_INICIAL'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'P_SALDO_INICIALAJUSTADO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'P_MONTO_DEBE_INIAJUSTADO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'P_MONTO_HABER_INIAJUSTADO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'P_MONTO_DEBE_ACTAJUSTADO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'P_MONTO_HABER_ACTAJUSTADO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'AUDITORIA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DOCUMENTOS'
            Visible = False
          end>
      end
      inherited pBusqueda: TPanel
        Width = 755
        ExplicitWidth = 755
        inherited Panel4: TPanel
          Left = 566
          ExplicitLeft = 565
          inherited cbCampoBusqueda: TComboBox
            Items.Strings = (
              'Codigo'
              'Descripcion')
          end
        end
      end
    end
    inherited tsRegistro: TTabSheet
      ExplicitWidth = 755
      ExplicitHeight = 376
      inherited Bevel1: TBevel
        Width = 755
        ExplicitWidth = 755
      end
      inherited Bevel2: TBevel
        Height = 372
        ExplicitHeight = 372
      end
      inherited Bevel3: TBevel
        Top = 374
        Width = 755
        ExplicitTop = 374
        ExplicitWidth = 755
      end
      inherited Bevel4: TBevel
        Left = 753
        Height = 372
        ExplicitLeft = 753
        ExplicitHeight = 372
      end
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 42
        Height = 13
        Caption = 'CODIGO'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 56
        Width = 73
        Height = 13
        Caption = 'DESCRIPCION'
        FocusControl = DBEdit2
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 32
        Width = 161
        Height = 21
        DataField = 'CODIGO'
        DataSource = dsDataSource
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 69
        Width = 553
        Height = 21
        DataField = 'DESCRIPCION'
        DataSource = dsDataSource
        TabOrder = 1
      end
      object DBCheckBox1: TDBCheckBox
        Left = 16
        Top = 96
        Width = 97
        Height = 17
        Caption = 'MOVIMIENTO'
        DataField = 'MOVIMIENTO'
        DataSource = dsDataSource
        TabOrder = 2
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox2: TDBCheckBox
        Left = 16
        Top = 120
        Width = 169
        Height = 17
        Caption = 'MANEJA_CCOSTO'
        DataField = 'MANEJA_CCOSTO'
        DataSource = dsDataSource
        TabOrder = 3
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox3: TDBCheckBox
        Left = 16
        Top = 144
        Width = 161
        Height = 17
        Caption = 'MANEJA_BASES'
        DataField = 'MANEJA_BASES'
        DataSource = dsDataSource
        TabOrder = 4
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox4: TDBCheckBox
        Left = 16
        Top = 168
        Width = 169
        Height = 17
        Caption = 'MANEJA_AUXILIAR'
        DataField = 'MANEJA_AUXILIAR'
        DataSource = dsDataSource
        TabOrder = 5
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
    end
  end
  inherited cbFiltroConsulta: TComboBox
    Left = 321
    Top = 4
    ExplicitLeft = 321
    ExplicitTop = 4
  end
  inherited dsDataSource: TDataSource
    DataSet = dmEC.a2CCuentas
  end
end
