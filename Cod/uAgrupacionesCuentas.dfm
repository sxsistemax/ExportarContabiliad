inherited frAgrupacionesCuentas: TfrAgrupacionesCuentas
  Caption = 'Cuentas para las agrupaciones'
  ClientHeight = 326
  ExplicitWidth = 592
  ExplicitHeight = 365
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 294
    ExplicitTop = 294
  end
  inherited PageControl1: TPageControl
    Height = 294
    ActivePage = tsRegistro
    ExplicitHeight = 294
    inherited tsListado: TTabSheet
      ExplicitHeight = 263
      inherited dgGrid: TDBGrid
        Height = 237
      end
    end
    inherited tsRegistro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 27
      ExplicitWidth = 568
      ExplicitHeight = 263
      inherited Bevel2: TBevel
        Height = 259
        ExplicitHeight = 178
      end
      inherited Bevel3: TBevel
        Top = 261
        ExplicitTop = 180
      end
      inherited Bevel4: TBevel
        Height = 259
        ExplicitHeight = 178
      end
      object Label1: TLabel
        Left = 8
        Top = 11
        Width = 64
        Height = 13
        Caption = 'Origen Monto'
      end
      object Label2: TLabel
        Left = 8
        Top = 150
        Width = 34
        Height = 13
        Caption = 'Cuenta'
        FocusControl = eCuenta
      end
      object SpeedButton1: TSpeedButton
        Left = 215
        Top = 166
        Width = 23
        Height = 22
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000DCDCDCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCDCDCDCFFFFFFFFFFFFDCDCDCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCDCDCDC949391767472706D6C6D6A69696765666362838180FF
          FFFFFFFFFF949391767472706D6C6D6A696967656663628381807A7876817E7D
          9C9996898583716F6C595756605D5CFFFFFFFFFFFF7A7876817E7D9C99968985
          83716F6C595756615E5D777573CFCFCFD9D7D6D0CFCEC8C8C7C3C1C15E5A59FF
          FFFFFFFFFF777573D0CFCFD9D7D6D0CFCEC8C8C7C3C1C15E5B5A767472B3B1AF
          CAC9C7B0AEAD91908E7574725E5A59CCCCCCCCCCCC777573B3B1AFCAC9C7B0AE
          AD91908E7575725F5C5B767472B3B1AFCAC9C7B1AEAE9392907776745E5A597A
          7876646260777573B3B1AFCAC9C7B1AEAE939290777674605D5C767472B3B0AE
          CAC9C7B0ADAD91908E7574725B5857767472615F5D767472B3B1AFCAC9C7B0AD
          AD91908E7575735F5C5B777472DEDDDDEBEBE9DBDAD9CAC9C8BBBAB9575453D6
          D5D38C8B89757371DEDDDCEBEBE9DBDAD9CAC9C8BCBCBB5E5B5A7A78766F6D6B
          666261605D5C5E5C5A5E5A5A908F8FD3D2D08A8987A09F9E6C6A68646160625F
          5E615F5D615E5D979594FFFFFF777473BCBAB8CDCBCAA5A3A27E7C7B595655D6
          D5D38C8C89767372BCBAB7CCCAC9A4A2A17E7C7B5F5C5BFFFFFFFFFFFF777473
          B9B7B5C9C7C6A2A09F7D7B7A5C5858777472615F5D777473B9B8B5C9C7C6A2A0
          9F7E7C7B605D5CFFFFFFFFFFFF787574BDBBB9CECCCBA5A3A27E7C7B5E5B5A7B
          7977646260797675BCBBB8CECCCBA6A4A3807E7D605D5CFFFFFFFFFFFFA4A3A1
          716E6D69666564605F625E5D8D8C8BFFFFFFFFFFFF9C9B9A6F6C6B6966656764
          63656261959392FFFFFFFFFFFFFFFFFFCCCCCC787574CBCAC79B9A99625E5DFF
          FFFFFFFFFF787574CAC8C6989796605D5CCCCCCCFFFFFFFFFFFFFFFFFFFFFFFF
          7A7976908D8C908E8C656461615E5DFFFFFFFFFFFF7977758E8B8A918F8D6866
          6463605FFFFFFFFFFFFFFFFFFFFFFFFF7B797773716F6D6B69696665625F5EFF
          FFFFFFFFFF7B797773716F6D6B6969666563605FFFFFFFFFFFFF}
        OnClick = SpeedButton1Click
      end
      object DBText1: TDBText
        Left = 244
        Top = 169
        Width = 316
        Height = 17
        DataField = 'NombreCuenta'
        DataSource = dsDataSource
      end
      object Label5: TLabel
        Left = 8
        Top = 54
        Width = 73
        Height = 13
        Caption = 'Tipo Operacion'
      end
      object Label6: TLabel
        Left = 8
        Top = 102
        Width = 59
        Height = 13
        Caption = 'Clasificaci'#243'n'
      end
      object Label3: TLabel
        Left = 8
        Top = 195
        Width = 88
        Height = 13
        Caption = 'Sub Centro Costos'
        FocusControl = btAceptar
      end
      object eCuenta: TDBEdit
        Left = 8
        Top = 166
        Width = 199
        Height = 21
        DataField = 'Cuenta'
        DataSource = dsDataSource
        TabOrder = 1
      end
      object eOrigenMonto: TDBLookupComboBox
        Left = 8
        Top = 27
        Width = 253
        Height = 21
        DataField = 'OrigenMonto'
        DataSource = dsDataSource
        TabOrder = 0
      end
      object eIdAgrupacion: TDBEdit
        Left = 439
        Top = 8
        Width = 121
        Height = 21
        DataField = 'IdAgrupacion'
        DataSource = dsDataSource
        TabOrder = 2
        Visible = False
      end
      object eTipoOperacion: TDBLookupComboBox
        Left = 8
        Top = 73
        Width = 241
        Height = 21
        DataField = 'TipoOperacion'
        DataSource = dsDataSource
        TabOrder = 3
      end
      object eClasificacion: TDBLookupComboBox
        Left = 8
        Top = 121
        Width = 241
        Height = 21
        DataField = 'Clasificacion'
        DataSource = dsDataSource
        TabOrder = 4
      end
      object eSubCentroCostos: TDBEdit
        Left = 8
        Top = 214
        Width = 177
        Height = 21
        DataField = 'SubCentroCostos'
        DataSource = dsDataSource
        TabOrder = 5
      end
    end
  end
  inherited dsDataSource: TDataSource
    DataSet = dmEC.SPAAgrupacionesCuentas
  end
  object dsMaestro: TDataSource
    AutoEdit = False
    DataSet = dmEC.SPAAgrupaciones
    Left = 312
    Top = 40
  end
end
