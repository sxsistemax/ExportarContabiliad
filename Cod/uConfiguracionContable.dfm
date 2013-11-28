inherited frConfiguracionContable: TfrConfiguracionContable
  BorderIcons = []
  Caption = 'Configuracion Contable'
  ClientHeight = 461
  ClientWidth = 729
  ExplicitWidth = 745
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 429
    Width = 729
    ExplicitTop = 429
    ExplicitWidth = 729
    inherited Panel2: TPanel
      Left = 397
      ExplicitLeft = 397
    end
    inherited btAyuda: TBitBtn
      Left = 85
      Top = 2
      ExplicitLeft = 85
      ExplicitTop = 2
    end
    object bDetalles: TBitBtn
      Left = 4
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Detalles'
      DoubleBuffered = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000DBDBDBCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCDBDBDBBC9444B67E0EB57C09B57C09B57C09B57B08B47B08B5
        7B08B57B08B47B08B57B08B57B08B57B08B57C09B67E0EBC9444B67E0EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFB67E0EB57C09FFFFFFA09D9E8F8F8F939291D2D1D2FFFFFFC1
        C2C3C1C2C4FFFFFFC1C2C4C3C4C6C3C4C6C2C4C7FFFFFFB57B09B57B08FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFB47B08B57B08FFFFFF9996968B88868F8C8ACAC9C8FCFCFBBB
        BBBBBBBBBBFCFCFBBBBBBBBDBDBDBDBDBDBBBCBEFFFFFFB57B08B57B08FFFFFF
        FCFDFEFFFFFFFFFFFEFAFAF9F7F7F6F8F8F7F8F8F7F7F7F6F8F9F7FAFAF9FAFA
        F9F8F9F9FFFFFFB57B08B57B08FFFFFF92908F868381888684C4C1BFF3F2F1B3
        B2B2B3B2B2F4F2F1B3B2B2B5B4B4B5B4B4B2B2B4FFFFFFB57B08B57B08FFFFFF
        F2F1F2F6F5F5F5F4F4F0F0EFEEEDECEFEEEDEFEEEDEEEDECEFEEEDF1F0EFF1F0
        EFEEEEEEFFFFFFB57B08B57C09FFFFFF8B8988807E7C83817FBABAB7E9E8E7AC
        ABAAADACABE9E8E7ADACABAFAEADAEADACABABABFFFFFFB57B08B57B09FFFFFF
        E6E6E5EBEAE8EAE9E7E5E4E2E2E1DFE4E3E1E4E3E1E3E2DFE4E3E1E6E5E2E5E4
        E2E2E2E1FFFFFFB57B08B57C09FFFFFF807E7D767372797776AEADACDADAD9A1
        A09FA1A09FDADADAA1A1A0A2A2A1A2A2A19F9FA0FFFFFFB57B09B57C0BFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFB57C0BB67F10F5DDB7DC9D37DC9E39DC9F3ADB9E39DB9E39DB
        9E39DB9E39DB9E39DB9E39DC9E39DB9E39DB9D37F5DDB7B67F10B88216EFD09E
        ECCD99ECCD99ECCD9AECCD9AECCD9AECCD9AECCD9AECCD9AECCD9AECCD9AECCD
        99ECCD99EFD09EB88216CBA353B88217B78115B68114B68115B68115B68115B6
        8115B68115B68115B68115B68115B68114B78115B88217CBA353}
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = bDetallesClick
    end
  end
  inherited PageControl1: TPageControl
    Width = 729
    Height = 429
    ExplicitWidth = 729
    ExplicitHeight = 429
    inherited tsListado: TTabSheet
      ExplicitWidth = 721
      ExplicitHeight = 398
      inherited dgGrid: TDBGrid
        Width = 721
        Height = 372
      end
      inherited Panel3: TPanel
        Width = 721
        ExplicitWidth = 721
        inherited Panel4: TPanel
          Left = 534
          ExplicitLeft = 534
        end
      end
    end
    inherited tsRegistro: TTabSheet
      ExplicitWidth = 721
      ExplicitHeight = 398
      inherited Bevel1: TBevel
        Width = 721
        ExplicitWidth = 721
      end
      inherited Bevel2: TBevel
        Height = 394
        ExplicitHeight = 394
      end
      inherited Bevel3: TBevel
        Top = 396
        Width = 721
        ExplicitTop = 396
        ExplicitWidth = 721
      end
      inherited Bevel4: TBevel
        Left = 719
        Height = 394
        ExplicitLeft = 719
        ExplicitHeight = 394
      end
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 87
        Height = 13
        Caption = 'Tipo Comprobante'
      end
      object Label2: TLabel
        Left = 16
        Top = 56
        Width = 63
        Height = 13
        Caption = 'Comprobante'
        FocusControl = eComprobante
      end
      object Label3: TLabel
        Left = 16
        Top = 96
        Width = 56
        Height = 13
        Caption = 'Descripcion'
        FocusControl = eDescripcion
      end
      object Label4: TLabel
        Left = 16
        Top = 136
        Width = 83
        Height = 13
        Caption = 'Tipo Transaccion'
      end
      object eComprobante: TDBEdit
        Left = 16
        Top = 72
        Width = 134
        Height = 21
        DataField = 'Comprobante'
        DataSource = dsDataSource
        TabOrder = 1
      end
      object eDescripcion: TDBEdit
        Left = 16
        Top = 112
        Width = 654
        Height = 21
        DataField = 'Descripcion'
        DataSource = dsDataSource
        TabOrder = 2
      end
      object eTipoTransaccion: TDBLookupComboBox
        Left = 16
        Top = 155
        Width = 241
        Height = 21
        DataField = 'TipoTransaccion'
        DataSource = dsDataSource
        TabOrder = 3
      end
      object eTipoComprobante: TDBLookupComboBox
        Left = 16
        Top = 29
        Width = 241
        Height = 21
        DataField = 'TipoComprobante'
        DataSource = dsDataSource
        TabOrder = 0
      end
    end
  end
  inherited JvEnterAsTab1: TJvEnterAsTab
    Left = 518
  end
  inherited dsDataSource: TDataSource
    Left = 560
  end
end
