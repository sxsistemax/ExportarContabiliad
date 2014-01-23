inherited frPendientesDeExportar: TfrPendientesDeExportar
  Caption = 'Registros Pendientes De Exportar'
  ClientHeight = 520
  ClientWidth = 805
  ExplicitWidth = 821
  ExplicitHeight = 559
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 488
    Width = 805
    ExplicitTop = 357
    ExplicitWidth = 716
    inherited Panel2: TPanel
      Left = 368
      Width = 437
      ExplicitLeft = 368
      ExplicitWidth = 437
      inherited btCerrar: TBitBtn
        Left = 358
        ExplicitLeft = 358
      end
      inherited btCancelar: TBitBtn
        Left = 280
        ExplicitLeft = 280
      end
      inherited btAceptar: TBitBtn
        Left = 202
        ExplicitLeft = 202
      end
      inherited btSeleccionar: TBitBtn
        Left = 14
        Top = 2
        ExplicitLeft = 14
        ExplicitTop = 2
      end
    end
    object bExportar: TBitBtn
      Left = 477
      Top = 2
      Width = 89
      Height = 25
      Caption = 'Exportar'
      DoubleBuffered = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000AE7C53AE7C53
        AE7C53AE7C53AE7C53AE7C53AE7C53AE7C53AE7C53AE7C53AE7C53AE7C53AE7C
        53AE7C53FFFFFFFFFFFFB07E54FFFFFCFFFCF5FFFCF5FFFCF5FFFCF5FFFCF5FF
        FCF5FFFCF5FFFCF53D45B56062B9FFFCF5AE7C53FFFFFFFFFFFFB28055FFFCF6
        FFFCF5FFFCF5FFFFF2FFFEEFFFFCECFFFBEAFFFFE9FFFCF5313EBBA2A7EB5059
        C2AE7C53FFFFFFFFFFFFB58256FFFFF8FFFCF56A70C86066C26469C26569C264
        69C1646AC14F56BB656ECFA2A7EBA2A7EB434AB7D1CEE3FFFFFFB78557FFFFF8
        FFFCF53B48BF9BA1ED545FDF5963E0606AE16871E36F78E4777FE67E86E78B92
        EAAEBAEC414DBFB6BAEFBA8758FFFFF8FFFCF54E59C79BA1ED868DE8979EEB9B
        A3EB9FA7EBA2ACEBA6B0EBAAB5EBA6B1ECAEBAEC3F4BC0B6BAEFBC8959FFFFF8
        FFFCF5323EBA323EBA323EBA323EBA323EBA323EBA323EBA4F57C0B6BAEFB6BA
        EF3B45B9FFFFFFFFFFFFBE8B5AFEFAF6FFFCF5FEF6F0FEF6F0FEF6F0FEF6F0FE
        F6F0FEF6F0FFFCF5323EBAB6BAEF3D48BEAE7C53FFFFFFFFFFFFC18E5CFEF9F6
        FFF7F0FFFEF2FFFFF3FFFEF2FFFEF2FFFEF1FFFFF1FFFCF52E3BB84F57C0E2DF
        E7AE7C53FFFFFFFFFFFFC3905DFEF9F6FEF6F0FEF6F0FEF6F0FEF6F0FEF6F0FE
        F6F0FEF6EFFFFCF5FFF6EFFFF3E8FFFBF0AE7C53FFFFFFFFFFFFC8925EFEF9F6
        FEF6F0FEF6F0FEF6F0FEF6F0FEF6F0FEF6F0FEF6F0FFF6EFFFFBEFFFF4EBFFF8
        F2AE7C53FFFFFFFFFFFFCA945FFEFAF8FFF7F3FFF8F4FFF8F4FFF9F5FFF9F5FF
        F9F5FFF9F6FFF9F6FFF9F5FFF8F3FEF6F0AE7C53FFFFFFFFFFFFCC9760FEF6F0
        F4DFB7F3DBB3F1D5ACF0CEA5EEC89DECC197EBBD93EBBD92EBBD92EBBD91FEF6
        F0AE7C53FFFFFFFFFFFFCF9961FEF6F0EFD49DEECE97EBC48DE9BA82E6B177E4
        A96FE3A468E3A467E3A467E3A467FEF6F0AE7C53FFFFFFFFFFFFD19B62FEF6F0
        FEF6F0FEF6F0FEF6F0FEF6F0FEF6F0FEF6F0FEF6F0FEF6F0FEF6F0FEF6F0FEF6
        F0AE7C53FFFFFFFFFFFFD49F66D19B62CE9861CB9660C8935EC4905DC18E5CBE
        8B5ABB8959B98658B68356B38155B07E54AE7C53FFFFFFFFFFFF}
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = bExportarClick
    end
  end
  inherited PageControl1: TPageControl
    Width = 805
    Height = 488
    ExplicitWidth = 805
    ExplicitHeight = 488
    inherited tsListado: TTabSheet
      ExplicitWidth = 797
      ExplicitHeight = 457
      inherited dgGrid: TDBGrid
        Top = 145
        Width = 797
        Height = 312
      end
      inherited pBuscar: TPanel
        Width = 797
        ExplicitWidth = 708
      end
      inherited pFiltro: TPanel
        Width = 797
        ExplicitWidth = 708
      end
      inherited pCampos: TPanel
        inherited cbCampoBusqueda: TComboBox
          Items.Strings = (
            'Documento'
            'DocumentoRef'
            'Comprobante'
            'Cuenta'
            'Nit'
            'CCosto')
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 69
        Width = 797
        Height = 76
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 4
        Visible = False
        ExplicitWidth = 708
      end
    end
    inherited tsRegistro: TTabSheet
      ExplicitWidth = 708
      ExplicitHeight = 326
      inherited Bevel1: TBevel
        Width = 797
        ExplicitWidth = 708
      end
      inherited Bevel2: TBevel
        Height = 453
        ExplicitHeight = 322
      end
      inherited Bevel3: TBevel
        Top = 455
        Width = 797
        ExplicitLeft = -80
        ExplicitTop = 333
        ExplicitWidth = 820
      end
      inherited Bevel4: TBevel
        Left = 795
        Height = 453
        ExplicitLeft = 706
        ExplicitHeight = 322
      end
      object Label1: TLabel
        Left = 16
        Top = 59
        Width = 34
        Height = 13
        Caption = 'Cuenta'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 167
        Top = 59
        Width = 71
        Height = 13
        Caption = 'NombreCuenta'
        FocusControl = DBLookupComboBox1
      end
      object Label3: TLabel
        Left = 167
        Top = 16
        Width = 63
        Height = 13
        Caption = 'Comprobante'
        FocusControl = DBEdit2
      end
      object Label4: TLabel
        Left = 16
        Top = 16
        Width = 30
        Height = 13
        Caption = 'Fecha'
        FocusControl = DBEdit3
      end
      object Label6: TLabel
        Left = 16
        Top = 102
        Width = 55
        Height = 13
        Caption = 'Documento'
        FocusControl = DBEdit4
      end
      object Label7: TLabel
        Left = 167
        Top = 102
        Width = 72
        Height = 13
        Caption = 'DocumentoRef'
        FocusControl = DBEdit5
      end
      object Label8: TLabel
        Left = 424
        Top = 145
        Width = 13
        Height = 13
        Caption = 'Nit'
        FocusControl = DBEdit6
      end
      object Label9: TLabel
        Left = 17
        Top = 145
        Width = 33
        Height = 13
        Caption = 'Detalle'
        FocusControl = DBEdit7
      end
      object Label10: TLabel
        Left = 17
        Top = 197
        Width = 21
        Height = 13
        Caption = 'Tipo'
        FocusControl = DBEdit8
      end
      object Label11: TLabel
        Left = 137
        Top = 197
        Width = 24
        Height = 13
        Caption = 'Valor'
        FocusControl = DBEdit9
      end
      object Label12: TLabel
        Left = 304
        Top = 197
        Width = 24
        Height = 13
        Caption = 'Base'
        FocusControl = DBEdit10
      end
      object Label14: TLabel
        Left = 488
        Top = 197
        Width = 34
        Height = 13
        Caption = 'CCosto'
        FocusControl = DBEdit11
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 75
        Width = 134
        Height = 21
        DataField = 'Cuenta'
        DataSource = dsDataSource
        TabOrder = 0
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 167
        Top = 75
        Width = 404
        Height = 21
        DataField = 'NombreCuenta'
        DataSource = dsDataSource
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 167
        Top = 32
        Width = 69
        Height = 21
        DataField = 'Comprobante'
        DataSource = dsDataSource
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 16
        Top = 32
        Width = 134
        Height = 21
        DataField = 'Fecha'
        DataSource = dsDataSource
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 16
        Top = 118
        Width = 121
        Height = 21
        DataField = 'Documento'
        DataSource = dsDataSource
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 167
        Top = 118
        Width = 121
        Height = 21
        DataField = 'DocumentoRef'
        DataSource = dsDataSource
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 424
        Top = 161
        Width = 147
        Height = 21
        DataField = 'Nit'
        DataSource = dsDataSource
        TabOrder = 6
      end
      object DBEdit7: TDBEdit
        Left = 17
        Top = 161
        Width = 368
        Height = 21
        DataField = 'Detalle'
        DataSource = dsDataSource
        TabOrder = 7
      end
      object DBEdit8: TDBEdit
        Left = 17
        Top = 216
        Width = 24
        Height = 21
        DataField = 'Tipo'
        DataSource = dsDataSource
        TabOrder = 8
      end
      object DBEdit9: TDBEdit
        Left = 137
        Top = 216
        Width = 134
        Height = 21
        DataField = 'Valor'
        DataSource = dsDataSource
        TabOrder = 9
      end
      object DBEdit10: TDBEdit
        Left = 304
        Top = 213
        Width = 134
        Height = 21
        DataField = 'Base'
        DataSource = dsDataSource
        TabOrder = 10
      end
      object DBEdit11: TDBEdit
        Left = 488
        Top = 213
        Width = 82
        Height = 21
        DataField = 'CCosto'
        DataSource = dsDataSource
        TabOrder = 11
      end
    end
  end
  inherited dsDataSource: TDataSource
    Left = 320
    Top = 8
  end
end
