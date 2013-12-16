object frPrincipal: TfrPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Exportar a Contabilidad'
  ClientHeight = 417
  ClientWidth = 615
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 615
    Height = 349
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 40
      Width = 89
      Height = 13
      Caption = 'Modulo A Exportar'
    end
    object Label2: TLabel
      Left = 24
      Top = 88
      Width = 83
      Height = 13
      Caption = 'Ruta Exportaci'#243'n'
      FocusControl = RutaExportacion
    end
    object Label3: TLabel
      Left = 24
      Top = 136
      Width = 94
      Height = 13
      Caption = 'Nombre Movimiento'
      FocusControl = NombreMovimiento
    end
    object Label4: TLabel
      Left = 305
      Top = 136
      Width = 58
      Height = 13
      Caption = 'Nombre Nits'
      FocusControl = NombreNits
    end
    object Label5: TLabel
      Left = 24
      Top = 184
      Width = 129
      Height = 13
      Caption = 'Campo Cuenta En Tarjetas'
    end
    object Label6: TLabel
      Left = 305
      Top = 184
      Width = 135
      Height = 13
      Caption = 'Campo Cuenta Instituciones'
    end
    object Label7: TLabel
      Left = 24
      Top = 240
      Width = 117
      Height = 13
      Caption = 'Campo Tercero Usuarios'
    end
    object Label8: TLabel
      Left = 2
      Top = 2
      Width = 611
      Height = 19
      Align = alTop
      Alignment = taCenter
      Caption = 'Configuraci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 112
    end
    object SpeedButton1: TSpeedButton
      Left = 576
      Top = 106
      Width = 23
      Height = 22
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B6D6E1B3D52
        1B3D531B3D521B3E541C3F551C40571D41581D425A1E435B1E445C1F455E1F46
        5F2248617CA6C0FFFFFF7B7B7B3383B24591BF4C93C14B93C14B93C04B92C04B
        92C04B92BF4B92BF4B91BF4B91BE4B91BE468EBC214C69FBFDFE7D7D7D214760
        3885B73984B43884B43884B43884B43984B43A85B43A85B43A85B43A85B43A85
        B43985B52C546CD2E0EA7D7D7D2A47593B88B9438BB84E91BB4D91BB468DB943
        8AB73B85B53985B43A85B43B86B43C86B53A85B4325A73A4C0D17D7D7D354955
        6CA7CD5B99C25A98C05897BF5898BF5596BE5595BF4C90BB4088B73A85B43884
        B33783B32D587289ABC17D7D7D3E4A537BB0D0639FC5649FC4629EC4619DC35F
        9CC25E9BC25D9BC15D9AC25C9AC15596BE4B8FBA478FBC4A606F7D7D7D55585A
        80A9C36DA7CD6CA5CA6AA4CA68A3C967A2C864A1C764A0C5639FC5649FC4639F
        C5629EC45D9DC54D63717D7D7DA5A19F4356614F65724F64724F64714F64704E
        63704F637199BED674AACD68A2C766A1C565A0C5629FC64F65717D7D7DA3A2A1
        B1ADABBAB5B1BDB8B5C3BEBAC9C4C0CFC9C6D7D1CC525D64586872A3C6DEA0C8
        E0A2C9E2A4CBE3596A747D7D7DA3A3A3ADADADB2B2B2B8B8B8BCBCBCC2C2C2C5
        C5C5CDCCCCD8D5D3D9D7D5525F66535F665E6A704D5A62ECF1F47E7E7EA4A4A4
        AFAFAFB4B4B4B9B9B9BDBDBDC1C1C1CDCDCDD6D6D6DCDCDCE5E4E3ECEAE8FAF7
        F5FEFAF9848484FFFFFF7D7D7DB2B2B2ACACACB2B2B2B7B7B7C0C0C0E7E7E783
        8383777777727272727272727272727272707070FFFFFFFFFFFFCBCBCB7E7E7E
        7F7F7F7F7F7F7F7F7F808080737373F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = SpeedButton1Click
    end
    object Label9: TLabel
      Left = 305
      Top = 240
      Width = 143
      Height = 13
      Caption = 'Campo Agrupacion Inventario'
    end
    object Label10: TLabel
      Left = 24
      Top = 296
      Width = 90
      Height = 13
      Caption = 'Ruta Consecutivos'
    end
    object SpeedButton2: TSpeedButton
      Left = 575
      Top = 315
      Width = 23
      Height = 22
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B6D6E1B3D52
        1B3D531B3D521B3E541C3F551C40571D41581D425A1E435B1E445C1F455E1F46
        5F2248617CA6C0FFFFFF7B7B7B3383B24591BF4C93C14B93C14B93C04B92C04B
        92C04B92BF4B92BF4B91BF4B91BE4B91BE468EBC214C69FBFDFE7D7D7D214760
        3885B73984B43884B43884B43884B43984B43A85B43A85B43A85B43A85B43A85
        B43985B52C546CD2E0EA7D7D7D2A47593B88B9438BB84E91BB4D91BB468DB943
        8AB73B85B53985B43A85B43B86B43C86B53A85B4325A73A4C0D17D7D7D354955
        6CA7CD5B99C25A98C05897BF5898BF5596BE5595BF4C90BB4088B73A85B43884
        B33783B32D587289ABC17D7D7D3E4A537BB0D0639FC5649FC4629EC4619DC35F
        9CC25E9BC25D9BC15D9AC25C9AC15596BE4B8FBA478FBC4A606F7D7D7D55585A
        80A9C36DA7CD6CA5CA6AA4CA68A3C967A2C864A1C764A0C5639FC5649FC4639F
        C5629EC45D9DC54D63717D7D7DA5A19F4356614F65724F64724F64714F64704E
        63704F637199BED674AACD68A2C766A1C565A0C5629FC64F65717D7D7DA3A2A1
        B1ADABBAB5B1BDB8B5C3BEBAC9C4C0CFC9C6D7D1CC525D64586872A3C6DEA0C8
        E0A2C9E2A4CBE3596A747D7D7DA3A3A3ADADADB2B2B2B8B8B8BCBCBCC2C2C2C5
        C5C5CDCCCCD8D5D3D9D7D5525F66535F665E6A704D5A62ECF1F47E7E7EA4A4A4
        AFAFAFB4B4B4B9B9B9BDBDBDC1C1C1CDCDCDD6D6D6DCDCDCE5E4E3ECEAE8FAF7
        F5FEFAF9848484FFFFFF7D7D7DB2B2B2ACACACB2B2B2B7B7B7C0C0C0E7E7E783
        8383777777727272727272727272727272707070FFFFFFFFFFFFCBCBCB7E7E7E
        7F7F7F7F7F7F7F7F7F808080737373F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = SpeedButton2Click
    end
    object Label11: TLabel
      Left = 184
      Top = 43
      Width = 40
      Height = 13
      Caption = '% CREE'
      FocusControl = PorcentajeCREE
    end
    object RutaExportacion: TDBEdit
      Left = 24
      Top = 107
      Width = 545
      Height = 21
      DataField = 'RutaExportacion'
      DataSource = dsConfiguracion
      TabOrder = 1
    end
    object NombreMovimiento: TDBEdit
      Left = 24
      Top = 152
      Width = 264
      Height = 21
      DataField = 'NombreMovimiento'
      DataSource = dsConfiguracion
      TabOrder = 2
    end
    object NombreNits: TDBEdit
      Left = 305
      Top = 152
      Width = 264
      Height = 21
      DataField = 'NombreNits'
      DataSource = dsConfiguracion
      TabOrder = 3
    end
    object CampoCuentaEnTarjetas: TDBComboBox
      Left = 24
      Top = 203
      Width = 264
      Height = 21
      DataField = 'CampoCuentaEnTarjetas'
      DataSource = dsConfiguracion
      TabOrder = 4
    end
    object CampoCuentaInstituciones: TDBComboBox
      Left = 305
      Top = 203
      Width = 264
      Height = 21
      DataField = 'CampoCuentaInstituciones'
      DataSource = dsConfiguracion
      TabOrder = 5
    end
    object CampoTerceroUsuarios: TDBComboBox
      Left = 24
      Top = 259
      Width = 264
      Height = 21
      DataField = 'CampoTerceroUsuarios'
      DataSource = dsConfiguracion
      TabOrder = 6
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 24
      Top = 59
      Width = 145
      Height = 21
      DataField = 'Modulo'
      DataSource = dsConfiguracion
      TabOrder = 0
    end
    object CampoAgrupacionInventario: TDBComboBox
      Left = 305
      Top = 259
      Width = 264
      Height = 21
      DataField = 'CampoAgruapacionInventario'
      DataSource = dsConfiguracion
      TabOrder = 7
    end
    object RutaConsecutivos: TDBEdit
      Left = 24
      Top = 315
      Width = 545
      Height = 21
      DataField = 'RutaConsecutivos'
      DataSource = dsConfiguracion
      TabOrder = 8
    end
    object PorcentajeCREE: TDBEdit
      Left = 184
      Top = 59
      Width = 65
      Height = 21
      DataField = 'PorcentajeCREE'
      DataSource = dsConfiguracion
      TabOrder = 9
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 349
    Width = 615
    Height = 68
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object pAcciones: TPanel
      Left = 2
      Top = 2
      Width = 446
      Height = 64
      Align = alLeft
      BevelOuter = bvNone
      Caption = '`'
      TabOrder = 0
      object ActionToolBar2: TActionToolBar
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 440
        Height = 58
        ActionManager = amAcciones
        Align = alClient
        Caption = 'ActionToolBar2'
        Color = clMenuBar
        ColorMap.HighlightColor = clWhite
        ColorMap.UnusedColor = clWhite
        EdgeInner = esNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Orientation = boTopToBottom
        ParentFont = False
        Spacing = 0
      end
    end
    object Panel3: TPanel
      Left = 376
      Top = 16
      Width = 345
      Height = 50
      BevelOuter = bvNone
      TabOrder = 1
      object btCancelar: TBitBtn
        Left = 82
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        DoubleBuffered = True
        Kind = bkCancel
        ParentDoubleBuffered = False
        TabOrder = 0
        OnClick = btCancelarClick
      end
      object btGuardar: TBitBtn
        Left = 5
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Guardar'
        DoubleBuffered = True
        Kind = bkOK
        ParentDoubleBuffered = False
        TabOrder = 1
        OnClick = btGuardarClick
      end
      object BitBtn1: TBitBtn
        Left = 160
        Top = 6
        Width = 75
        Height = 25
        Caption = '&Cerrar'
        DoubleBuffered = True
        Kind = bkClose
        ParentDoubleBuffered = False
        TabOrder = 2
        OnClick = BitBtn1Click
      end
    end
  end
  object dsConfiguracion: TDataSource
    DataSet = dmEC.SPAConfiguracionExportarContabilidad
    Left = 576
    Top = 8
  end
  object dgSeleccionarDiretorio: TJvSelectDirectory
    Left = 456
    Top = 8
  end
  object amAcciones: TActionManager
    ActionBars = <
      item
      end
      item
        Items = <
          item
            Action = aImportarCuentas
            Caption = '&Importar Cuentas'
          end
          item
            Action = aConfiguracionContable
            Caption = '&Configuracion Contable'
          end
          item
            Action = aAgrupaciones
            Caption = '&Agrupaciones'
          end
          item
            Action = aGenerarMovimientoContable
            Caption = '&Generar'
          end
          item
            Action = aConsecutivos
            Caption = 'C&onsecutivos'
            CommandStyle = csMenu
            CommandProperties.Width = -1
            CommandProperties.Font.Charset = DEFAULT_CHARSET
            CommandProperties.Font.Color = clWindowText
            CommandProperties.Font.Height = -11
            CommandProperties.Font.Name = 'Tahoma'
            CommandProperties.Font.Style = []
            CommandProperties.Height = 0
          end>
        ActionBar = ActionToolBar2
      end>
    Left = 512
    Top = 10
    StyleName = 'Platform Default'
    object aImportarCuentas: TAction
      Caption = 'Importar Cuentas'
      OnExecute = aImportarCuentasExecute
    end
    object aConfiguracionContable: TAction
      Caption = 'Configuracion Contable'
      OnExecute = aConfiguracionContableExecute
    end
    object aAgrupaciones: TAction
      Caption = 'Agrupaciones'
      OnExecute = aAgrupacionesExecute
    end
    object aGenerarMovimientoContable: TAction
      Caption = 'Generar'
      OnExecute = aGenerarMovimientoContableExecute
    end
    object aConsecutivos: TAction
      Caption = 'Consecutivos'
      OnExecute = aConsecutivosExecute
    end
  end
end
