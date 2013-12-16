unit uCentrosCuentas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MantenimientoSPA, DBCtrls, Mask, Buttons, DB, JvComponentBase,
  JvEnterTab, ExtCtrls, StdCtrls, Grids, DBGrids, ComCtrls, JvExStdCtrls,
  JvEdit, JvDBSearchEdit, dbisamtb;

type
  TfrCentrosCuentas = class(TfmBaseMantenimiento)
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    DBText1: TDBText;
    eCuenta: TDBEdit;
    eOrigenMonto: TDBLookupComboBox;
    eIdConfiguracionContable: TDBEdit;
    Label1: TLabel;
    eCentroCostos: TDBLookupComboBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btAceptarClick(Sender: TObject);
    procedure OcultarCamposGrid; override;
    procedure ConectarMaestroDetalle; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCentrosCuentas: TfrCentrosCuentas;

implementation

uses uCuentas, uDatosExportacion;

{$R *.dfm}

procedure TfrCentrosCuentas.btAceptarClick(Sender: TObject);
begin
  if dsDataSource.DataSet.State = dsInsert then
    dsDataSource.DataSet.FieldByName('IdConfiguracionContable').Value := dmEC.SPAConfiguracionContableIdConfiguracionContable.Value;
  inherited;
end;

procedure TfrCentrosCuentas.ConectarMaestroDetalle;
begin
  inherited;
  dgGrid.Columns[0].Visible := false;
  dgGrid.Columns[1].Visible := false;
  dgGrid.Columns[2].Visible := false;
end;

procedure TfrCentrosCuentas.OcultarCamposGrid;
begin
  inherited;
  TDBISAMTable(dsDataSource.DataSet).Filtered := false;
  TDBISAMTable(dsDataSource.DataSet).Filter := 'IdConfiguracionContable = ' + IntToStr( dmEC.SPAConfiguracionContableIdConfiguracionContable.Value);
  TDBISAMTable(dsDataSource.DataSet).Filtered := True;
end;

procedure TfrCentrosCuentas.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if dsDataSource.DataSet.State in [dsEdit, dsInsert] then
  begin
    eCuenta.Text := TfrCuentas.Seleccionar(dmEC.a2CCuentas, true, 'Codigo' );
  end;
end;

end.
