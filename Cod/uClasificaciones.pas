unit uClasificaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MantenimientoSPA, JvFormPlacement, JvAppStorage,
  JvAppRegistryStorage, DB, JvComponentBase, JvEnterTab, DBCtrls, ExtCtrls,
  StdCtrls, Grids, DBGrids, ComCtrls, Buttons, Mask;

type
  TfmClasificaciones = class(TfmBaseMantenimiento)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    eCuenta: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmClasificaciones: TfmClasificaciones;

implementation

uses uDatosExportacion, uCuentas;

{$R *.dfm}

procedure TfmClasificaciones.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if dsDataSource.DataSet.State in [dsEdit, dsInsert] then
  begin
    eCuenta.Text := TfrCuentas.Seleccionar(dmEC.a2CCuentas, true, 'Codigo' );
  end;

end;

end.
