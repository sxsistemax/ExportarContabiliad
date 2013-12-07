inherited frAgrupaciones: TfrAgrupaciones
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Agrupaciones'
  ClientHeight = 309
  ClientWidth = 586
  ExplicitHeight = 338
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 277
    Width = 586
    ExplicitTop = 277
    ExplicitWidth = 586
    inherited Panel2: TPanel
      Left = 254
      ExplicitLeft = 254
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
      Caption = 'Cuentas'
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
    Width = 586
    Height = 277
    ActivePage = tsRegistro
    ExplicitWidth = 586
    ExplicitHeight = 277
    inherited tsListado: TTabSheet
      ExplicitWidth = 578
      ExplicitHeight = 246
      inherited dgGrid: TDBGrid
        Width = 578
        Height = 220
      end
      inherited Panel3: TPanel
        Width = 578
        ExplicitTop = 0
        ExplicitWidth = 578
        inherited Panel4: TPanel
          Left = 391
          ExplicitLeft = 391
        end
      end
    end
    inherited tsRegistro: TTabSheet
      ExplicitWidth = 578
      ExplicitHeight = 246
      inherited Bevel1: TBevel
        Width = 578
        ExplicitWidth = 578
      end
      inherited Bevel2: TBevel
        Height = 242
        ExplicitHeight = 242
      end
      inherited Bevel3: TBevel
        Top = 244
        Width = 578
        ExplicitTop = 244
        ExplicitWidth = 578
      end
      inherited Bevel4: TBevel
        Left = 576
        Height = 242
        ExplicitLeft = 576
        ExplicitHeight = 242
      end
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 54
        Height = 13
        Caption = 'Agrupacion'
        FocusControl = DBEdit1
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 32
        Width = 524
        Height = 21
        DataField = 'Agrupacion'
        DataSource = dsDataSource
        TabOrder = 0
      end
    end
  end
end
