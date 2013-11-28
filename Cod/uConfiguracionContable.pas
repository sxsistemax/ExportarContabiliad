unit uConfiguracionContable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, JvComponentBase, JvEnterTab, DBCtrls, ExtCtrls,
  StdCtrls, Grids, DBGrids, ComCtrls, Buttons, MantenimientoSPA, Mask;

type
  TfrConfiguracionContable = class(TfmBaseMantenimiento)
    Label1: TLabel;
    Label2: TLabel;
    eComprobante: TDBEdit;
    Label3: TLabel;
    eDescripcion: TDBEdit;
    Label4: TLabel;
    eTipoTransaccion: TDBLookupComboBox;
    eTipoComprobante: TDBLookupComboBox;
    bDetalles: TBitBtn;
    procedure OcultarCamposGrid; override;
    procedure bDetallesClick(Sender: TObject);
    function Validar: boolean; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frConfiguracionContable: TfrConfiguracionContable;

implementation

uses uDatosExportacion, uConfiguracionContableMov;

{$R *.dfm}

{ TfrConfiguracionContable }

procedure TfrConfiguracionContable.bDetallesClick(Sender: TObject);
begin
  inherited;
  if dsDataSource.DataSet.State in [dsEdit, dsInsert] then
  begin
    ShowMessage('Solo se puede acceder a los detalles cuando no este editando o insertando');
    exit;
  end;

  if dsDataSource.DataSet.RecordCount = 0 then
  begin
    ShowMessage('No hay registros en la tabla maestra.');
    Exit;
  end;
  TfrConfiguracionContableMov.prMantenimiento(dmEC.SPAConfiguracionContableMov, 'IdConfiguracionContableMov');
end;

procedure TfrConfiguracionContable.OcultarCamposGrid;
begin
  inherited;
  //dgGrid.Columns[0].Title.Caption := 'Id';
  dgGrid.Columns[1].Visible := false;
  dgGrid.Columns[4].Visible := false;
end;

function TfrConfiguracionContable.Validar: boolean;
begin
  Result := inherited;

  Result := false;

  if eTipoComprobante.Text = '' then
  Begin
    ShowMessage('Seleccione el tipo de comprobante.');
    eTipoComprobante.SetFocus;
    Exit;
  End;

  if eComprobante.Text = '' then
  Begin
    ShowMessage('Digite el comprobante contable.');
    eComprobante.SetFocus;
    Exit;
  End;

  if eDescripcion.Text = '' then
  Begin
    ShowMessage('Digite una descripción.');
    eDescripcion.SetFocus;
    Exit;
  End;

  if eTipoTransaccion.Text = '' then
  Begin
    ShowMessage('Seleccione el tipo de transacción.');
    eTipoTransaccion.SetFocus;
    Exit;
  End;

  Result := true;
end;


end.
