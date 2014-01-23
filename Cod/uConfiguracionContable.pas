unit uConfiguracionContable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, JvComponentBase, JvEnterTab, DBCtrls, ExtCtrls,
  StdCtrls, Grids, DBGrids, ComCtrls, Buttons, MantenimientoSPA, Mask,
  JvExStdCtrls, JvEdit, JvDBSearchEdit, Menus;

type
  TfrConfiguracionContable = class(TfmBaseMantenimiento)
    Label2: TLabel;
    eComprobante: TDBEdit;
    Label3: TLabel;
    eDescripcion: TDBEdit;
    eTipoOperacion: TDBLookupComboBox;
    eConsecutivo: TDBLookupComboBox;
    Label7: TLabel;
    bCuentas: TBitBtn;
    bCentros: TBitBtn;
    bClasifiaciones: TBitBtn;
    pMenuAcciones: TPopupMenu;
    DuplicarRegistro1: TMenuItem;
    N1: TMenuItem;
    Cuentas1: TMenuItem;
    Centros1: TMenuItem;
    CuentasClasificaciones1: TMenuItem;
    Label1: TLabel;
    Label4: TLabel;
    eSubCentro: TDBEdit;
    procedure OcultarCamposGrid; override;
    procedure bCuentasClick(Sender: TObject);
    function Validar: boolean; override;
    procedure bCentrosClick(Sender: TObject);
    procedure bClasifiacionesClick(Sender: TObject);
    procedure DuplicarRegistro1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frConfiguracionContable: TfrConfiguracionContable;

implementation

uses uDatosExportacion, uConfiguracionContableMov, uCentrosCuentas,
  uCuentasClasificaciones;

{$R *.dfm}

{ TfrConfiguracionContable }

procedure TfrConfiguracionContable.bCentrosClick(Sender: TObject);
begin
  inherited;
  if dsDataSource.DataSet.State in [dsEdit, dsInsert] then
  begin
    ShowMessage('Solo se puede acceder a los detalles cuando no este editando o insertando');
    exit;
  end;

  TfrCentrosCuentas.prMantenimiento(dmEC.SPACuentasxCentro, 'IdCuentasxCentro');
end;

procedure TfrConfiguracionContable.bCuentasClick(Sender: TObject);
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

procedure TfrConfiguracionContable.DuplicarRegistro1Click(Sender: TObject);
var
  IdConfiguracionContable : integer;
begin
  inherited;
  // Duplica el registro seleccionado y todos los registros de sus tablas
  with dmEC do
  begin
    IdConfiguracionContable := SPAConfiguracionContableIdConfiguracionContable.Value;


    try

      qrConsulta.Close;
      qrConsulta.SQL.Text := 'Select * from SPAConfiguracionContable Where IdConfiguracionContable = ' + IntToStr(IdConfiguracionContable);
      qrConsulta.Open;

      // Insertar el nuevo registro
      SPAConfiguracionContable.Append;
      SPAConfiguracionContableComprobante.Value := qrConsulta.FieldByName('Comprobante').Value;
      SPAConfiguracionContableDescripcion.Value := qrConsulta.FieldByName('Descripcion').Value + ' Copia';
      SPAConfiguracionContableIdConsecutivo.Value := qrConsulta.FieldByName('IdConsecutivo').Value;
      SPAConfiguracionContableIdTipoOperacion.Value := qrConsulta.FieldByName('IdTipoOperacion').Value;
      SPAConfiguracionContable.Post;

      // Inserta las cuentas
      qrConsulta.Close;
      qrConsulta.SQL.Text := 'Select * from SPAConfiguracionContableMov Where IdConfiguracionContable = ' + IntToStr(IdConfiguracionContable);
      qrConsulta.Open;
        
      qrConsulta.First;
      while not qrConsulta.EOF do
      begin
        SPAConfiguracionContableMov.Append;

        SPAConfiguracionContableMovIdConfiguracionContable.Value := SPAConfiguracionContableIdConfiguracionContable.Value;
        SPAConfiguracionContableMovIdOrigenMonto.Value := qrConsulta.FieldByName('IdOrigenMonto').Value;
        SPAConfiguracionContableMovDetalle.Value := qrConsulta.FieldByName('Detalle').Value;
        SPAConfiguracionContableMovCuentaGeneral.Value := qrConsulta.FieldByName('CuentaGeneral').Value;
        SPAConfiguracionContableMovTipoAsiento.Value := qrConsulta.FieldByName('TipoAsiento').Value;
        
        SPAConfiguracionContableMov.Post;
        qrConsulta.Next;
      end;
      
      // Inserta las Costos
      qrConsulta.Close;
      qrConsulta.SQL.Text := 'Select * from SPACuentasxCentro Where IdConfiguracionContable = ' + IntToStr(IdConfiguracionContable);
      qrConsulta.Open;

      qrConsulta.First;
      while not qrConsulta.EOF do
      begin
        SPACuentasxCentro.Append;

        SPACuentasxCentroIdConfiguracionContable.Value := SPAConfiguracionContableIdConfiguracionContable.Value;
        SPACuentasxCentroIdOrigenMonto.Value := qrConsulta.FieldByName('IdOrigenMonto').Value;
        SPACuentasxCentroCentroCostos.Value := qrConsulta.FieldByName('CentroCostos').Value;
        SPACuentasxCentroCuenta.Value := qrConsulta.FieldByName('Cuenta').Value;
        
        SPACuentasxCentro.Post;
        
        qrConsulta.Next;
      end;
      
      // Inserta las Clasificaciones
      qrConsulta.Close;
      qrConsulta.SQL.Text := 'Select * from SPAClasificacionCuentas Where IdConfiguracionContable = ' + IntToStr(IdConfiguracionContable);
      qrConsulta.Open;

      qrConsulta.First;
      while not qrConsulta.EOF do
      begin
        SPAClasificacionCuentas.Append;

        SPAClasificacionCuentasIdConfiguracionContable.Value := SPAConfiguracionContableIdConfiguracionContable.Value;
        SPAClasificacionCuentasIdOrigenMonto.Value := qrConsulta.FieldByName('IdOrigenMonto').Value;
        SPAClasificacionCuentasIdClasificacion.Value := qrConsulta.FieldByName('IdClasificacion').Value;
        SPAClasificacionCuentasCuenta.Value := qrConsulta.FieldByName('Cuenta').Value;
        
        SPAClasificacionCuentas.Post;
        
        qrConsulta.Next;
      end;

      ShowMessage('Registro duplicado.');
    except on E: Exception do
      ShowMessage( 'Ocurrio un error duplicando registro. \n' + E.Message);

    end;
  end;

end;

procedure TfrConfiguracionContable.bClasifiacionesClick(Sender: TObject);
begin
  inherited;
  if dsDataSource.DataSet.State in [dsEdit, dsInsert] then
  begin
    ShowMessage('Solo se puede acceder a los detalles cuando no este editando o insertando');
    exit;
  end;

  TfrCuentasClasifiaciones.prMantenimiento(dmEC.SPAClasificacionCuentas, 'IdClasificacionCuenta');
end;

procedure TfrConfiguracionContable.OcultarCamposGrid;
begin
  inherited;
  dgGrid.Columns[0].Visible := false;
  dgGrid.Columns[3].Visible := false;
  dgGrid.Columns[4].Visible := false;
  dgGrid.Columns[5].Visible := false;
end;

function TfrConfiguracionContable.Validar: boolean;
begin
  Result := inherited;

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

  if eTipoOperacion.Text = '' then
  Begin
    ShowMessage('Seleccione el tipo de operación.');
    eTipoOperacion.SetFocus;
    Exit;
  End;


  Result := true;
end;


end.
