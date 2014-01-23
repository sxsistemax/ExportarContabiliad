unit uPendientesDeExportar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MantenimientoSPA, DB, JvComponentBase, JvEnterTab, DBCtrls, ExtCtrls,
  StdCtrls, Grids, DBGrids, ComCtrls, Buttons, Mask;

type
  TfrPendientesDeExportar = class(TfmBaseMantenimiento)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    Panel3: TPanel;
    bExportar: TBitBtn;
    procedure bExportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frPendientesDeExportar: TfrPendientesDeExportar;

implementation

{$R *.dfm}

Uses uUtilidades, uDatosExportacion;

procedure TfrPendientesDeExportar.bExportarClick(Sender: TObject);
begin
  inherited;
  if Confirmar('¿ Está seguro de exportar la información actual ?') then
    dmEC.Exportar;
end;

end.
