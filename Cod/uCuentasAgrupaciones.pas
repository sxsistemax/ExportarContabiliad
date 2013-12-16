unit uCuentasAgrupaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MantenimientoSPA, DBCtrls, Mask, Buttons, DB, JvComponentBase,
  JvEnterTab, ExtCtrls, StdCtrls, JvExStdCtrls, JvEdit, JvDBSearchEdit, Grids,
  DBGrids, ComCtrls;

type
  TfmBaseMantenimiento1 = class(TfmBaseMantenimiento)
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    DBText1: TDBText;
    Label1: TLabel;
    eCuenta: TDBEdit;
    eOrigenMonto: TDBLookupComboBox;
    eIdConfiguracionContable: TDBEdit;
    eClasificacion: TDBLookupComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBaseMantenimiento1: TfmBaseMantenimiento1;

implementation

{$R *.dfm}

end.
