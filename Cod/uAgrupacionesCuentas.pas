unit uAgrupacionesCuentas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MantenimientoSPA, Buttons, DBCtrls, Mask, DB, JvComponentBase,
  JvEnterTab, ExtCtrls, StdCtrls, Grids, DBGrids, ComCtrls, dbisamtb,
  JvExStdCtrls, JvEdit, JvDBSearchEdit;

type
  TfrAgrupacionesCuentas = class(TfmBaseMantenimiento)
    Label1: TLabel;
    Label2: TLabel;
    eCuenta: TDBEdit;
    eOrigenMonto: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    DBText1: TDBText;
    dsMaestro: TDataSource;
    eIdAgrupacion: TDBEdit;
    eTipoOperacion: TDBLookupComboBox;
    Label4: TLabel;
    Label3: TLabel;
    eSubCentro: TDBEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure OcultarCamposGrid; override;
    procedure ConectarMaestroDetalle; override;
    procedure btAceptarClick(Sender: TObject);
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
  dgGrid.Columns[3].Visible := false;
  dgGrid.Columns[4].Visible := false;
end;

procedure TfrAgrupacionesCuentas.btAceptarClick(Sender: TObject);
begin
  if dsDataSource.DataSet.State = dsInsert then
  begin
    eIdAgrupacion.Text := IntToStr( dmEC.SPAAgrupacionesIdAgrupacion.Value);
  end;
  inherited;

end;

procedure TfrAgrupacionesCuentas.ConectarMaestroDetalle;
begin
  inherited;
  TDBISAMTable(dsDataSource.DataSet).Filtered := false;
  TDBISAMTable(dsDataSource.DataSet).Filter := 'IdAgrupacion = ' + IntToStr( dmEC.SPAAgrupacionesIdAgrupacion.Value);
  TDBISAMTable(dsDataSource.DataSet).Filtered := True;
end;


end.
