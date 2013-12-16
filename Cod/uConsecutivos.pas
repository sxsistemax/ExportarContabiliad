unit uConsecutivos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MantenimientoSPA, Mask, DBCtrls, DB, JvComponentBase, JvEnterTab,
  ExtCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Buttons, JvExStdCtrls, JvEdit,
  JvDBSearchEdit;

type
  TfrConsecutivos = class(TfmBaseMantenimiento)
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure OcultarCamposGrid; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frConsecutivos: TfrConsecutivos;

implementation

uses uDatosExportacion;

{$R *.dfm}

{ TfrConsecutivos }

procedure TfrConsecutivos.OcultarCamposGrid;
begin
  inherited;
  dgGrid.Columns[0].Visible := false;
end;

end.
