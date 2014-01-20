inherited frConsecutivos: TfrConsecutivos
  Caption = 'Consecutivos'
  ClientHeight = 300
  ClientWidth = 526
  ExplicitWidth = 542
  ExplicitHeight = 339
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 268
    Width = 526
    ExplicitTop = 268
    ExplicitWidth = 526
    inherited Panel2: TPanel
      Left = 194
      ExplicitLeft = 194
    end
  end
  inherited PageControl1: TPageControl
    Width = 526
    Height = 268
    ActivePage = tsRegistro
    ExplicitWidth = 526
    ExplicitHeight = 268
    inherited tsListado: TTabSheet
      ExplicitWidth = 518
      ExplicitHeight = 237
      inherited dgGrid: TDBGrid
        Width = 518
        Height = 168
        Columns = <
          item
            Expanded = False
            FieldName = 'IdConsecutivo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descripcion'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UltimoNumero'
            Visible = True
          end>
      end
      inherited pBuscar: TPanel
        Width = 518
      end
      inherited pFiltro: TPanel
        Width = 518
      end
    end
    inherited tsRegistro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 27
      ExplicitWidth = 518
      ExplicitHeight = 237
      inherited Bevel1: TBevel
        Width = 518
        ExplicitWidth = 518
      end
      inherited Bevel2: TBevel
        Height = 233
        ExplicitHeight = 233
      end
      inherited Bevel3: TBevel
        Top = 235
        Width = 518
        ExplicitTop = 235
        ExplicitWidth = 518
      end
      inherited Bevel4: TBevel
        Left = 516
        Height = 233
        ExplicitLeft = 516
        ExplicitHeight = 233
      end
      object Label2: TLabel
        Left = 8
        Top = 24
        Width = 56
        Height = 13
        Caption = 'Descripcion'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 8
        Top = 64
        Width = 69
        Height = 13
        Caption = 'Ultimo Numero'
        FocusControl = DBEdit3
      end
      object DBEdit2: TDBEdit
        Left = 8
        Top = 37
        Width = 499
        Height = 21
        DataField = 'Descripcion'
        DataSource = dsDataSource
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 8
        Top = 80
        Width = 134
        Height = 21
        DataField = 'UltimoNumero'
        DataSource = dsDataSource
        TabOrder = 1
      end
    end
  end
  inherited dsDataSource: TDataSource
    DataSet = dmEC.SPAConsecutivos
  end
end
