unit uAgrupaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MantenimientoSPA, DB, JvComponentBase, JvEnterTab, DBCtrls, ExtCtrls,
  StdCtrls, Grids, DBGrids, ComCtrls, Buttons, Mask;

type
  TfrAgrupaciones = class(TfmBaseMantenimiento)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    bDetalles: TBitBtn;
    procedure OcultarCamposGrid; override;
    procedure bDetallesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frAgrupaciones: TfrAgrupaciones;

implementation

uses uAgrupacionesCuentas, uDatosExportacion;

{$R *.dfm}

procedure TfrAgrupaciones.bDetallesClick(Sender: TObject);
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
  TfrAgrupacionesCuentas.prMantenimiento(dmEC.SPAAgrupacionesCuentas, 'IdAgrupacionCuenta');

end;

procedure TfrAgrupaciones.OcultarCamposGrid;
begin
  inherited;
  dgGrid.Columns[0].Visible := false;
end;


end.
