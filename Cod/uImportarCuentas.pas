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
  if dmEC.tbmCuentasContai.Active and (dmEC.tbmCuentasContai.RecordCount > 0) then
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

  if dmEC.tbmCuentasContai.Active then
    dmEC.tbmCuentasContai.EmptyTable
  else
    dmEC.tbmCuentasContai.Open;


  AssignFile(F, eArchivo.Text);
  Reset(F);

  Readln(F, S);
  while not eof(F)do
  begin
    dmEC.tbmCuentasContai.Append;

    dmEC.tbmCuentasContaiCuenta.Value := Copy( S, 1, 10);
    dmEC.tbmCuentasContaiDescripcion.Value := Copy(S, 11, 30);
    dmEC.tbmCuentasContaiManejaMovimiento.Value := Copy( S, 43, 1);
    dmEC.tbmCuentasContaiManejaTercero.Value := Copy(S, 42, 1);
    dmEC.tbmCuentasContaiTipoCuenta.Value := Copy(S, 41, 1);
    dmEC.tbmCuentasContai.Post;

    dmEC.tbmCuentasContai.Next;
    Readln(F, S);
  end;

  CloseFile(F);

  dmEC.tbmCuentasContai.First;

  dsCuentas.DataSet := dmEC.tbmCuentasContai;
end;

procedure TfrImportarCuentas.ImportarCuentasContaI;
begin
  dmEC.BorrarCuentas;

  if not dmEC.a2CCuentas.Active then
    dmEC.a2CCuentas.Open;

  dmEC.tbmCuentasContai.First;
  while not dmEC.tbmCuentasContai.Eof do
  begin
    dmEC.a2CCuentas.Append;

    dmEc.a2CCuentasCODIGO.Value := dmEC.tbmCuentasContaiCuenta.Value;
    dmEc.a2CCuentasDESCRIPCION.Value := dmEC.tbmCuentasContaiDescripcion.Value;
    dmEc.a2CCuentasFECHA_APERTURA.Value := Now();
    dmEc.a2CCuentasMOVIMIENTO.Value := dmEc.tbmCuentasContaiManejaMovimiento.Value = 'S';
    dmEc.a2CCuentasMANEJA_CCOSTO.Value := dmEC.tbmCuentasContaiManejaCentroCostos.Value = 'S';
    dmEc.a2CCuentasMANEJA_AUXILIAR.Value := dmEc.tbmCuentasContaiManejaTercero.Value = 'S';
    dmEc.a2CCuentasMANEJA_BASES.Value := dmEC.tbmCuentasContaiTipoCuenta.Value = 'B';

    dmEC.a2CCuentas.Post;

    dmEC.tbmCuentasContai.Next;
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
