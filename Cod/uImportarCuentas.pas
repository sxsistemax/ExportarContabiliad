unit uImportarCuentas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvDialogs, ExtCtrls, DB, Grids, DBGrids, Buttons, StdCtrls;

type
  TfrImportarCuentas = class(TForm)
    odArchivo: TJvOpenDialog;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    dsCuentas: TDataSource;
    Label1: TLabel;
    eArchivo: TEdit;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    bImportar: TBitBtn;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure bImportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CargarCuentasContaI;
    procedure ImportarCuentasContaI;
  end;

var
  frImportarCuentas: TfrImportarCuentas;

procedure ImportarCuentas;

implementation

uses uDatosExportacion;

{$R *.dfm}

procedure ImportarCuentas;
begin
  with TfrImportarCuentas.Create(Application) do
  begin
    ShowModal;
    Free;
  end;
end;

procedure TfrImportarCuentas.bImportarClick(Sender: TObject);
begin
  if dmEC.tbCuentasContai.Active and (dmEC.tbCuentasContai.RecordCount > 0) then
  begin
    eArchivo.Text := odArchivo.FileName;

    Case dmEC.SPAConfiguracionExportarContabilidadModuloAExportar.Value of
      1 : begin
            ImportarCuentasContaI;
          end;
      2 : begin
            ShowMessage('Imporatacioón no implementada para el modulo Sistema UNO');
          end;
      else ShowMessage('Importación no implementada para el módulo.');
    End;

  end
  else
  begin
    ShowMessage( 'No hay datos a importar');
  end;
end;

procedure TfrImportarCuentas.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrImportarCuentas.CargarCuentasContaI;
var
  F : TextFile;
  S : string;
begin
  if not FileExists(eArchivo.Text) then
  begin
    ShowMessage( 'El archivo no se encontró.');
    Exit;
  end;

  if dmEC.tbCuentasContai.Active then
    dmEC.tbCuentasContai.EmptyTable
  else
    dmEC.tbCuentasContai.Open;


  AssignFile(F, eArchivo.Text);
  Reset(F);

  Readln(F, S);
  while not eof(F)do
  begin
    dmEC.tbCuentasContai.Append;

    dmEC.tbCuentasContaiCuenta.Value := Copy( S, 1, 10);
    dmEC.tbCuentasContaiDescripcion.Value := Copy(S, 11, 30);
    dmEC.tbCuentasContaiManejaMovimiento.Value := Copy( S, 43, 1);
    dmEC.tbCuentasContaiManejaTercero.Value := Copy(S, 42, 1);
    dmEC.tbCuentasContaiTipoCuenta.Value := Copy(S, 41, 1);
    dmEC.tbCuentasContai.Post;

    dmEC.tbCuentasContai.Next;
    Readln(F, S);
  end;

  CloseFile(F);

  dmEC.tbCuentasContai.First;

  dsCuentas.DataSet := dmEC.tbCuentasContai;
end;

procedure TfrImportarCuentas.ImportarCuentasContaI;
begin
  dmEC.BorrarCuentas;

  if not dmEC.a2CCuentas.Active then
    dmEC.a2CCuentas.Open;

  dmEC.tbCuentasContai.First;
  while not dmEC.tbCuentasContai.Eof do
  begin
    dmEC.a2CCuentas.Append;

    dmEc.a2CCuentasCODIGO.Value := dmEC.tbCuentasContaiCuenta.Value;
    dmEc.a2CCuentasDESCRIPCION.Value := dmEC.tbCuentasContaiDescripcion.Value;
    dmEc.a2CCuentasFECHA_APERTURA.Value := Now();
    dmEc.a2CCuentasMOVIMIENTO.Value := dmEc.tbCuentasContaiManejaMovimiento.Value = 'S';
    dmEc.a2CCuentasMANEJA_CCOSTO.Value := dmEC.tbCuentasContaiManejaCentroCostos.Value = 'S';
    dmEc.a2CCuentasMANEJA_AUXILIAR.Value := dmEc.tbCuentasContaiManejaTercero.Value = 'S';
    dmEc.a2CCuentasMANEJA_BASES.Value := dmEC.tbCuentasContaiTipoCuenta.Value = 'B';

    dmEC.a2CCuentas.Post;

    dmEC.tbCuentasContai.Next;
  end;
end;

procedure TfrImportarCuentas.SpeedButton1Click(Sender: TObject);
begin
  if odArchivo.Execute then
  begin
    eArchivo.Text := odArchivo.FileName;

    Case dmEC.SPAConfiguracionExportarContabilidadModuloAExportar.Value of
      1 : begin
            CargarCuentasContaI;
          end;
      2 : begin
            ShowMessage('Imporatacioón no implementada para el modulo Sistema UNO');
          end;
      else ShowMessage('Importación no implementada para el módulo.');
    End;

  end;
end;

end.
