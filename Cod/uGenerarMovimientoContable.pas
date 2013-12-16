unit uGenerarMovimientoContable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, DBCtrls, ComCtrls, JvExComCtrls,
  JvProgressBar, JvComponentBase, JvDualList;

type
  TfrGenerarMovimientoContable = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    dsConfiguracionContable: TDataSource;
    dgListadoComprobantes: TJvDualListDialog;
    Progreso: TJvProgressBar;
    lMensaje: TLabel;
    bProcesar: TBitBtn;
    bSeleccionarTransacciones: TBitBtn;
    Label1: TLabel;
    dpFechaCorte: TDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure bSeleccionarTransaccionesClick(Sender: TObject);
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
  IdConfiguracion : integer;
  FechaCorte : string;
  i,p : integer;
begin
  if dgListadoComprobantes.List2.Count > 0 then
  begin
    FechaCorte := FormatDateTime('yyyy-MM-dd', dpFechaCorte.Date);
      for i := 0 to dgListadoComprobantes.List2.Count - 1 do
      begin
        P := Pos( '. ', dgListadoComprobantes.List2[i]);
        IdConfiguracion := StrToInt( Copy( dgListadoComprobantes.List2[i], P + 2, Length( dgListadoComprobantes.List2[i]) - P + 2));
        dmEC.ProcesarComprobante(Progreso, lMensaje, IdConfiguracion, FechaCorte);
      end;
  end
  else
  begin
    ShowMessage('Debe seleccionar los comprobantes a procesar');
    dgListadoComprobantes.Execute;
  end;
end;

procedure TfrGenerarMovimientoContable.bSeleccionarTransaccionesClick(
  Sender: TObject);
begin
  dgListadoComprobantes.Execute;
end;

procedure TfrGenerarMovimientoContable.FormShow(Sender: TObject);
begin
  dpFechaCorte.Date := Now;
  dmEC.SPAConfiguracionContable.First;
  while not dmEC.SPAConfiguracionContable.EOF do
  begin
    dgListadoComprobantes.List1.Add(dmEC.SPAConfiguracionContableDescripcion.Value + ' - ' +
                    dmEC.SPAConfiguracionContableComprobante.Value + ' . ' +
                    IntToStr(dmEC.SPAConfiguracionContableIdConfiguracionContable.Value));
    dmEC.SPAConfiguracionContable.Next;
  end;
end;

end.
