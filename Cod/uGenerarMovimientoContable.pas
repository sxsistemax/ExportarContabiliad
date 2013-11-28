unit uGenerarMovimientoContable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, DBCtrls, ComCtrls, JvExComCtrls,
  JvProgressBar;

type
  TfrGenerarMovimientoContable = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    bProcesar: TBitBtn;
    Label1: TLabel;
    eTipoComprobante: TDBLookupComboBox;
    dsTiposComprobantes: TDataSource;
    Label2: TLabel;
    eTipoTransaccion: TDBLookupComboBox;
    dsTipoTransaccion: TDataSource;
    pProgreso: TPanel;
    Progreso: TJvProgressBar;
    lMensaje: TLabel;
    procedure bProcesarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frGenerarMovimientoContable: TfrGenerarMovimientoContable;

procedure GenerarMovimientoContable;

implementation

uses uDatosExportacion;

{$R *.dfm}

procedure GenerarMovimientoContable;
begin
  with TfrGenerarMovimientoContable.Create( Application) do
  begin
    ShowModal;
    Free;
  end;
end;

procedure TfrGenerarMovimientoContable.bProcesarClick(Sender: TObject);
var
  IdTipoComprobante : integer;
  IdTipoTransaccion : integer;
begin
  IdTipoComprobante := eTipoComprobante.KeyValue;
  IdTipoTransaccion := eTipoTransaccion.KeyValue;
  dmEC.ProcesarComprobante(Progreso, lMensaje, IdTipoComprobante, IdTipoTransaccion);
end;

end.
