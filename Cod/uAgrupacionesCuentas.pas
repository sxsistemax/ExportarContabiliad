unit uAgrupacionesCuentas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MantenimientoSPA, Buttons, DBCtrls, Mask, DB, JvComponentBase,
  JvEnterTab, ExtCtrls, StdCtrls, Grids, DBGrids, ComCtrls, dbisamtb;

type
  TfrAgrupacionesCuentas = class(TfmBaseMantenimiento)
    Label1: TLabel;
    Label2: TLabel;
    eCuenta: TDBEdit;
    eOrigenMonto: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    DBText1: TDBText;
    dsMaestro: TDataSource;
    procedure SpeedButton1Click(Sender: TObject);
    procedure OcultarCamposGrid; override;
    procedure ConectarMaestroDetalle; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frAgrupacionesCuentas: TfrAgrupacionesCuentas;

implementation

uses uDatosExportacion, uCuentas;

{$R *.dfm}

procedure TfrAgrupacionesCuentas.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if dsDataSource.DataSet.State in [dsEdit, dsInsert] then
  begin
    eCuenta.Text := TfrCuentas.Seleccionar(dmEC.a2CCuentas, true, 'Codigo' );
  end;
end;

procedure TfrAgrupacionesCuentas.OcultarCamposGrid;
begin
  inherited;
  dgGrid.Columns[0].Visible := false;
  dgGrid.Columns[1].Visible := false;
  dgGrid.Columns[2].Visible := false;
end;

procedure TfrAgrupacionesCuentas.ConectarMaestroDetalle;
begin
  inherited;
  TDBISAMTable(dsDataSource.DataSet).MasterSource := dsMaestro;
  TDBISAMTable(dsDataSource.DataSet).MasterFields := 'IdAgrupacion';
end;


end.