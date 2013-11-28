unit uCuentas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, JvComponentBase, JvEnterTab, DBCtrls, ExtCtrls,
  StdCtrls, Grids, DBGrids, ComCtrls, Buttons, Mask, MantenimientoSPA;

type
  TfrCuentas = class(TfmBaseMantenimiento)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCuentas: TfrCuentas;

implementation

uses uDatosExportacion;

{$R *.dfm}

end.
