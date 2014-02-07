unit uCuentasClasificaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MantenimientoSPA, DBCtrls, Mask, Buttons, DB, JvComponentBase,
  JvEnterTab, ExtCtrls, StdCtrls, JvExStdCtrls, JvEdit, JvDBSearchEdit, Grids,
  DBGrids, ComCtrls, dbisamtb, JvFormPlacement, JvAppStorage,
  JvAppRegistryStorage;

type
  TfrCuentasClasifiaciones = class(TfmBaseMantenimiento)
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    DBText1: TDBText;
    Label1: TLabel;
    eCuenta: TDBEdit;
    eOrigenMonto: TDBLookupComboBox;
    eIdConfiguracionContable: TDBEdit;
    eClasificacion: TDBLookupComboBox;
    Label2: TLabel;
    eSubCentro: TDBEdit;
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
  frCuentasClasifiaciones: TfrCuentasClasifiaciones;

implementation

uses uCuentas, uDatosExportacion;

{$R *.dfm}

procedure TfrCuentasClasifiaciones.btAceptarClick(Sender: TObject);
begin
  if dsDataSource.DataSet.State = dsInsert then
    dsDataSource.DataSet.FieldByName('IdConfiguracionContable').Value := dmEC.SPAConfiguracionContableIdConfiguracionContable.Value;
  inherited;
end;

procedure TfrCuentasClasifiaciones.ConectarMaestroDetalle;
begin
  inherited;
  TDBISAMTable(dsDataSource.DataSet).Filtered := false;
  TDBISAMTable(dsDataSource.DataSet).Filter := 'IdConfiguracionContable = ' + IntToStr( dmEC.SPAConfiguracionContableIdConfiguracionContable.Value);
  TDBISAMTable(dsDataSource.DataSet).Filtered := True;
end;

procedure TfrCuentasClasifiaciones.OcultarCamposGrid;
begin
  inherited;
  dgGrid.Columns[0].Visible := false;
  dgGrid.Columns[1].Visible := false;
  dgGrid.Columns[2].Visible := false;
  dgGrid.Columns[3].Visible := false;
end;

procedure TfrCuentasClasifiaciones.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if dsDataSource.DataSet.State in [dsEdit, dsInsert] then
  begin
    eCuenta.Text := TfrCuentas.Seleccionar(dmEC.a2CCuentas, true, 'Codigo' );
  end;
end;

end.
