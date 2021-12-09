unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait;

type
  TForm2 = class(TForm)
    grid: TDBGrid;
    ds: TDataSource;
    qr: TFDQuery;
    FDConnection1: TFDConnection;
    qrCodigo: TFDAutoIncField;
    qrCodigoInterno: TStringField;
    qrCodigoInternoTipo: TByteField;
    qrCodigoBarras: TStringField;
    qrNumeroReferencia: TStringField;
    qrCodProdutoPai: TIntegerField;
    qrDataIni: TDateField;
    qrDataFim: TDateField;
    qrDescricao: TStringField;
    qrDescricaoSubProduto: TStringField;
    qrMedida: TStringField;
    qrPeso: TSingleField;
    qrUnidade: TStringField;
    qrCEST: TStringField;
    qrClassFiscal: TStringField;
    qrAliquota: TBCDField;
    qrCodMarca: TIntegerField;
    qrPrecoCusto: TBCDField;
    qrUltimoPrecoCusto: TBCDField;
    qrPrecoVenda: TBCDField;
    qrUltimoPrecoVenda: TBCDField;
    qrPercDescVista: TBCDField;
    qrPercDescPrazo: TBCDField;
    qrDescPromocional: TBCDField;
    qrDescAtivoVista: TStringField;
    qrDescAtivoPrazo: TStringField;
    qrCodGrupo: TIntegerField;
    qrAcrescimoSimples: TStringField;
    qrPercMargemLucro: TBCDField;
    qrSubproduto: TStringField;
    qrReferencia: TStringField;
    qrCurva: TStringField;
    qrTipoProduto: TStringField;
    qrInativo: TStringField;
    qrCodProcesso: TIntegerField;
    qrData: TDateField;
    qrUsuario: TIntegerField;
    qrImagem01: TStringField;
    qrImagem02: TStringField;
    qrImagem03: TStringField;
    qrRevisao: TLongWordField;
    qrObservacoes: TStringField;
    qrMva: TBCDField;
    qrPesoLiquido: TBCDField;
    qrPermitirLocacao: TStringField;
    qrFracao: TFMTBCDField;
    qrCustoReal: TBCDField;
    qrCustoRealMedio: TBCDField;
    qrPesavel: TStringField;
    qrPrecoCustoMedio: TBCDField;
    qrCodPAFECFAntigo: TStringField;
    qrLote: TStringField;
    qrDataValidade: TDateField;
    qrCodPerfilTributacao: TIntegerField;
    qrFracionar: TStringField;
    qrLocalizacao: TStringField;
    qrDiasValidade: TSmallintField;
    procedure gridTitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.gridTitleClick(Column: TColumn);
begin
  if qr.IndexFieldNames = Column.FieldName then
    qr.IndexFieldNames := Column.FieldName + ':D'
  else
    qr.IndexFieldNames := Column.FieldName;
end;

end.
