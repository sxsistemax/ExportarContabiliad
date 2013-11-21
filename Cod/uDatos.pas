unit uDatos;

interface

uses
  SysUtils, Classes, DB, ADODB, JvMemoryDataset, ComCtrls, dbisamtb;

type
  Tdm = class(TDataModule)
    tbmContai: TJvMemoryData;
    tbmContaiCuenta: TStringField;
    tbmContaiComprobante: TStringField;
    tbmContaiFecha: TStringField;
    tbmContaiDocumento: TStringField;
    tbmContaiDocumentoRef: TStringField;
    tbmContaiNit: TStringField;
    tbmContaiDetalle: TStringField;
    tbmContaiTipo: TIntegerField;
    tbmContaiValor: TFloatField;
    tbmContaiBase: TFloatField;
    tbmContaiCCosto: TStringField;
    a2ContabDiario: TDBISAMTable;
    a2ContabDiarioMov: TDBISAMTable;
    a2ContabDiarioNUMERO: TStringField;
    a2ContabDiarioFECHA: TDateField;
    a2ContabDiarioTIPO: TSmallintField;
    a2ContabDiarioESTATUS: TSmallintField;
    a2ContabDiarioDESCRIPCION: TStringField;
    a2ContabDiarioDETALLADA: TMemoField;
    a2ContabDiarioPROCEDENCIA: TSmallintField;
    a2ContabDiarioNUMERO_INTEG: TSmallintField;
    a2ContabDiarioMONTO_DEBE: TCurrencyField;
    a2ContabDiarioMONTO_HABER: TCurrencyField;
    a2ContabDiarioMANEJA_EFECTIVO: TBooleanField;
    a2ContabDiarioCMONEDA: TStringField;
    a2ContabDiarioFACTOR: TCurrencyField;
    a2ContabDiarioUSER_PREPARADO: TBooleanField;
    a2ContabDiarioUSER_REVISADO: TBooleanField;
    a2ContabDiarioUSER_APROBADO: TBooleanField;
    a2ContabDiarioUSER_CONTROLADO: TBooleanField;
    a2ContabDiarioUSER_FECHA_CONTROL: TDateField;
    a2ContabDiarioUSER_FECHA_CUENTA: TDateField;
    a2ContabDiarioUSERCODE: TStringField;
    a2ContabDiarioFLAG: TStringField;
    a2ContabDiarioBASE_AUTOINCREMENT: TAutoIncField;
    a2ContabDiarioNO_MOVIMIENTOS: TIntegerField;
    a2ContabDiarioMovNUMERO: TStringField;
    a2ContabDiarioMovBASE_AUTOINCREMENT: TAutoIncField;
    a2ContabDiarioMovFECHA: TDateField;
    a2ContabDiarioMovLINEA: TIntegerField;
    a2ContabDiarioMovTIPO: TSmallintField;
    a2ContabDiarioMovESTATUS: TSmallintField;
    a2ContabDiarioMovASIENTO: TIntegerField;
    a2ContabDiarioMovCUENTA: TStringField;
    a2ContabDiarioMovCAUXILIAR: TStringField;
    a2ContabDiarioMovCCOSTO: TStringField;
    a2ContabDiarioMovCTA_GASTO: TStringField;
    a2ContabDiarioMovCACTIVO: TStringField;
    a2ContabDiarioMovDESCRIPCION: TStringField;
    a2ContabDiarioMovDETALLADA: TMemoField;
    a2ContabDiarioMovMONTO_DEBE: TCurrencyField;
    a2ContabDiarioMovMONTO_HABER: TCurrencyField;
    a2ContabDiarioMovMONTO_BASE: TCurrencyField;
    a2ContabDiarioMovMONTO_BASE_DEBE: TCurrencyField;
    a2ContabDiarioMovMONTO_BASE_HABER: TCurrencyField;
    a2ContabDiarioMovMONTO_EFECTIVO: TCurrencyField;
    a2ContabDiarioMovMONTO_EFECTIVO_DEBE: TCurrencyField;
    a2ContabDiarioMovMONTO_EFECTIVO_HABER: TCurrencyField;
    a2ContabDiarioMovDOC_TIPO: TSmallintField;
    a2ContabDiarioMovDOC_REF: TStringField;
    a2ContabDiarioMovDOC_FECHA: TDateField;
    a2ContabDiarioMovCMONEDA: TStringField;
    a2ContabDiarioMovFACTOR: TCurrencyField;
    a2ContabDiarioMovFECHA_INICIO_DEP: TDateField;
    a2ContabDiarioMovREVISADO: TBooleanField;
    a2ContabDiarioMovTRANSFERIDO: TBooleanField;
    a2ContabDiarioMovFLAG: TStringField;
    a2ContabDiarioMovUSERCODE: TStringField;
    a2ContabDiarioMovCTA_ORIGEN: TStringField;
    a2ContabDiarioMovDOCUMENTO: TIntegerField;
    ConsultaMovimiento: TDBISAMQuery;
    DBISAMQuery1: TDBISAMQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Registros : integer;
    Debe, Haber : double;
    Procedure CargarArchivo( AArchivo : string);
    procedure Importar( P : TProgressBar);
    function Comprobante( AComprobante : string):string;
    procedure InsertarEncabezadoDiario( AComprobante : string; AFecha : string);
    procedure InsertarDetalle( AComprobante : string);
    procedure Totalizar;
    procedure AbrirArchivos;
    procedure CerrarArchivos;
  end;

var
  dm: Tdm;

implementation

uses uBaseDatosA2, uTablasConBlobContabilidad;

{$R *.dfm}


Procedure Tdm.CargarArchivo( AArchivo : string);
var
  f : TextFile;
  s : WideString;
begin
  AssignFile( f, AArchivo);
  Reset( f);
  ReadLn( f, s);
  tbmContai.Close;
  tbmContai.Open;
  Registros := 0;
  while not EOF(f) do
  begin
    try
      tbmContai.Append;
      tbmContaiCuenta.value := Copy( S, 1, 20);
      tbmContaiComprobante.value := Copy( S, 21, 5);
      tbmContaiFecha.value := Copy( S, 26, 10);
      tbmContaiDocumento.value := Copy( S, 36, 20);
      tbmContaiDocumentoRef.value := Copy( S, 56, 20);
      tbmContaiNit.value := Copy( S, 76, 15);
      tbmContaiDetalle.value := Copy( S, 91, 28);
      if Copy( S, 119, 2) = 'DB' then
      begin
        tbmContaiTipo.Value := 1;
        tbmContaiValor.Value := StrToFloat( Copy( S, 121, 16));
        tbmContaiBase.Value := StrToFloat( Copy( S, 137, 16));
      end
      else
      begin
        tbmContaiTipo.Value := 2;
        tbmContaiValor.Value := StrToFloat( Copy( S, 121, 16));
        tbmContaiBase.Value := StrToFloat( Copy( S, 137, 16));
      end;
      tbmContaiCCosto.value := Copy( S, 152, 17);
      tbmContai.Post;
      inc( Registros);
    except
    end;
    ReadLn( f, s);
  end;
  CloseFile( f);
  tbmContai.First;
end;

procedure TDm.Importar( P : TProgressBar);
var
  lComprobante : string;
begin
  AbrirArchivos;
  tbmContai.First;
  DateSeparator := '/';
  ShortDateFormat := '/';
  p.Min := 0;
  p.Max := Registros;
  lComprobante := Comprobante( tbmContaiComprobante.Value);
  InsertarEncabezadoDiario( lComprobante, tbmContaiFecha.Value);
  while not tbmContai.EOF do
  begin
    p.Position := p.Position + 1;
    InsertarDetalle(lComprobante);
    tbmContai.Next;
  end;
  Totalizar;
  CerrarArchivos;
end;

function tdM.Comprobante( AComprobante : string):string;
var
  lContador : integer;
  lComprobante : String;
begin
  lContador := 1;
  AComprobante := Trim( AComprobante) + FormatDateTime('yyyymmdd', Now());
  lComprobante := AComprobante;
  while a2ContabDiario.Locate('NUMERO', AComprobante, []) do
  begin
    AComprobante := lComprobante;
    AComprobante := AComprobante + IntToStr( lContador);
    Inc( lContador);
  end;
  Result := AComprobante;
end;

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
  dmBasesDatos.ConectarDB('C:\DB\a2Softway\Empre001\Data');
end;

Procedure TDm.InsertarEncabezadoDiario( AComprobante: String; AFecha : string);
begin
  try
    a2ContabDiario.Open;
    a2ContabDiario.Insert;
    a2ContabDiarioNUMERO.Value := AComprobante;
    a2ContabDiarioFECHA.Value := StrToDate( AFecha);
    a2ContabDiarioTIPO.Value := 0;
    a2ContabDiarioESTATUS.Value := 0;
    a2ContabDiarioDESCRIPCION.Value := 'IMPORTACION NOMINA';
    a2ContabDiarioDETALLADA.Value := '';
    a2ContabDiarioPROCEDENCIA.Value := 0;
    a2ContabDiarioNUMERO_INTEG.Value := 0;
    a2ContabDiarioMANEJA_EFECTIVO.Value := False;
    a2ContabDiarioCMONEDA.Value := '1';
    a2ContabDiarioFACTOR.Value := 1;
    a2ContabDiarioUSERCODE.Value := '1';
    a2ContabDiarioNO_MOVIMIENTOS.Value := Registros;
    a2ContabDiario.Post;
  Except

  end;
end;

procedure TDm.InsertarDetalle( AComprobante : string);
begin
  try
    a2ContabDiarioMov.Insert;
    a2ContabDiarioMovNUMERO.Value := AComprobante;
    a2ContabDiarioMovFECHA.Value  := StrToDateTime( tbmContaiFecha.Value);
    a2ContabDiarioMovLINEA.Value := 1;
    a2ContabDiarioMovTIPO.Value := 1;
    a2ContabDiarioMovESTATUS.Value := 1;
    a2ContabDiarioMovASIENTO.Value := 0;
    a2ContabDiarioMovCUENTA.Value := tbmContaiCuenta.Value;
    a2ContabDiarioMovCAUXILIAR.Value := tbmContaiNit.Value;
    a2ContabDiarioMovCCOSTO.Value := tbmContaiCCosto.Value;
    a2ContabDiarioMovCTA_GASTO.Value := '2';
    a2ContabDiarioMovCACTIVO.Value := '';
    a2ContabDiarioMovDESCRIPCION.Value := tbmContaiDetalle.Value;
    if tbmContaiTipo.Value = 1 then
    begin
      a2ContabDiarioMovMONTO_DEBE.Value := tbmContaiValor.Value;
      Debe := Debe + tbmContaiValor.Value;
      a2ContabDiarioMovMONTO_BASE_DEBE.Value := tbmContaiBase.Value;
    end
    else
    begin
      a2ContabDiarioMovMONTO_HABER.Value := tbmContaiValor.Value;
      Haber := Haber + tbmContaiValor.Value;
      a2ContabDiarioMovMONTO_BASE_HABER.Value := tbmContaiBase.Value;
    end;
    a2ContabDiarioMovDOC_REF.Value := tbmContaiDocumento.Value;
    a2ContabDiarioMovCMONEDA.Value := '1';
    a2ContabDiarioMovFACTOR.Value := 1;
    a2ContabDiarioMovDOCUMENTO.Value := 0;
    a2ContabDiarioMov.Post;
  except

  end;
end;

procedure TDM.Totalizar;
begin
  try
    a2ContabDiario.Edit;
    a2ContabDiarioMONTO_DEBE.Value := Debe;
    a2ContabDiarioMONTO_HABER.Value := Haber;
    a2ContabDiario.Post;
  except

  end;
end;

procedure TDM.AbrirArchivos;
begin
  a2ContabDiario.Open;
  a2ContabDiarioMov.Open;
end;

procedure Tdm.CerrarArchivos;
begin
  a2ContabDiario.Close;
  a2ContabDiarioMov.Close;
end;

end.
