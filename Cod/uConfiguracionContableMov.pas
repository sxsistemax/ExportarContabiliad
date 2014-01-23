unit uConfiguracionContableMov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MantenimientoSPA, DB, JvComponentBase, JvEnterTab, DBCtrls, ExtCtrls,
  StdCtrls, Grids, DBGrids, ComCtrls, Buttons, dbisamtb, Mask, JvExStdCtrls,
  JvEdit, JvDBSearchEdit;

type
  TfrConfiguracionContableMov = class(TfmBaseMantenimiento)
    dsMaestro: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    eCuenta: TDBEdit;
    eOrigenMonto: TDBLookupComboBox;
    eTipoAsiento: TDBRadioGroup;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBText1: TDBText;
    eIdConfiguracionContable: TDBEdit;
    procedure OcultarCamposGrid; override;
    procedure ConectarMaestroDetalle; override;
    function Validar : boolean; override;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btAceptarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frConfiguracionContableMov: TfrConfiguracionContableMov;

implementation

uses uDatosExportacion, uCuentas;

{$R *.dfm}

{ TfrConfiguracionContableMov }

procedure TfrConfiguracionContableMov.btAceptarClick(Sender: TObject);
begin
  if dsDataSource.DataSet.State = dsInsert then
    dsDataSource.DataSet.FieldByName('IdConfiguracionContable').Value := dmEC.SPAConfiguracionContableIdConfiguracionContable.Value;
  inherited;
end;

procedure TfrConfiguracionContableMov.ConectarMaestroDetalle;
begin
  inherited;
  TDBISAMTable(dsDataSource.DataSet).Filtered := false;
  TDBISAMTable(dsDataSource.DataSet).Filter := 'IdConfiguracionContable = ' + IntToStr( dmEC.SPAConfiguracionContableIdConfiguracionContable.Value);
  TDBISAMTable(dsDataSource.DataSet).Filtered := True;
end;

procedure TfrConfiguracionContableMov.OcultarCamposGrid;
begin
  inherited;

  dgGrid.Columns[0].Visible := false;
  dgGrid.Columns[1].Visible := false;
  dgGrid.Columns[2].Visible := false;
  dgGrid.Columns[3].Visible := false;

end;

procedure TfrConfiguracionContableMov.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if dsDataSource.DataSet.State in [dsEdit, dsInsert] then
  begin
    eCuenta.Text := TfrCuentas.Seleccionar(dmEC.a2CCuentas, true, 'Codigo' );
  end;
end;

function TfrConfiguracionContableMov.Validar: boolean;
begin
  Result := inherited;

  Result := false;

  if eOrigenMonto.Text = '' then
  Begin
    ShowMessage('Seleccione el origen del monto.');
    eOrigenMonto.SetFocus;
    Exit;
  End;

  if eCuenta.Text = '' then
  Begin
    ShowMessage('Seleccione la cuenta contable.');
    eCuenta.SetFocus;
    Exit;
  End;

  if eTipoAsiento.Value = '' then
  Begin
    ShowMessage('Seleccione el tipo de asiento (Débito o Crédio).');
    eTipoAsiento.SetFocus;
    Exit;
  End;

  Result := true;
end;

end.
