object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 299
  ClientWidth = 996
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object grid: TDBGrid
    Left = 128
    Top = 0
    Width = 860
    Height = 291
    DataSource = ds
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnTitleClick = gridTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodigoInterno'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodigoInternoTipo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodigoBarras'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NumeroReferencia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodProdutoPai'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DataIni'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DataFim'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DescricaoSubProduto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Medida'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Peso'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEST'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ClassFiscal'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Aliquota'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodMarca'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PrecoCusto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UltimoPrecoCusto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PrecoVenda'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UltimoPrecoVenda'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PercDescVista'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PercDescPrazo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DescPromocional'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DescAtivoVista'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DescAtivoPrazo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodGrupo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AcrescimoSimples'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PercMargemLucro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Subproduto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Referencia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Curva'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TipoProduto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Inativo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodProcesso'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Usuario'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Imagem01'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Imagem02'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Imagem03'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Revisao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Observacoes'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Mva'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PesoLiquido'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PermitirLocacao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fracao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CustoReal'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CustoRealMedio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Pesavel'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PrecoCustoMedio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodPAFECFAntigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lote'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DataValidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodPerfilTributacao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fracionar'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Localizacao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DiasValidade'
        Visible = True
      end>
  end
  object ds: TDataSource
    DataSet = qr
    Left = 144
    Top = 176
  end
  object qr: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from produtos')
    Left = 264
    Top = 176
    object qrCodigo: TFDAutoIncField
      FieldName = 'Codigo'
      Origin = 'Codigo'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qrCodigoInterno: TStringField
      FieldName = 'CodigoInterno'
      Origin = 'CodigoInterno'
      Required = True
      Size = 60
    end
    object qrCodigoInternoTipo: TByteField
      AutoGenerateValue = arDefault
      FieldName = 'CodigoInternoTipo'
      Origin = 'CodigoInternoTipo'
    end
    object qrCodigoBarras: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodigoBarras'
      Origin = 'CodigoBarras'
      Size = 14
    end
    object qrNumeroReferencia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NumeroReferencia'
      Origin = 'NumeroReferencia'
    end
    object qrCodProdutoPai: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CodProdutoPai'
      Origin = 'CodProdutoPai'
    end
    object qrDataIni: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DataIni'
      Origin = 'DataIni'
    end
    object qrDataFim: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DataFim'
      Origin = 'DataFim'
    end
    object qrDescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Size = 120
    end
    object qrDescricaoSubProduto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DescricaoSubProduto'
      Origin = 'DescricaoSubProduto'
      Size = 53
    end
    object qrMedida: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Medida'
      Origin = 'Medida'
    end
    object qrPeso: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'Peso'
      Origin = 'Peso'
    end
    object qrUnidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Unidade'
      Origin = 'Unidade'
      Size = 6
    end
    object qrCEST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 7
    end
    object qrClassFiscal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ClassFiscal'
      Origin = 'ClassFiscal'
      Size = 8
    end
    object qrAliquota: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Aliquota'
      Origin = 'Aliquota'
      Precision = 6
      Size = 3
    end
    object qrCodMarca: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CodMarca'
      Origin = 'CodMarca'
    end
    object qrPrecoCusto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PrecoCusto'
      Origin = 'PrecoCusto'
      Precision = 14
    end
    object qrUltimoPrecoCusto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'UltimoPrecoCusto'
      Origin = 'UltimoPrecoCusto'
      Precision = 14
    end
    object qrPrecoVenda: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PrecoVenda'
      Origin = 'PrecoVenda'
      Precision = 14
    end
    object qrUltimoPrecoVenda: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'UltimoPrecoVenda'
      Origin = 'UltimoPrecoVenda'
      Precision = 14
    end
    object qrPercDescVista: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PercDescVista'
      Origin = 'PercDescVista'
      Precision = 6
      Size = 3
    end
    object qrPercDescPrazo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PercDescPrazo'
      Origin = 'PercDescPrazo'
      Precision = 6
      Size = 3
    end
    object qrDescPromocional: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DescPromocional'
      Origin = 'DescPromocional'
      Precision = 6
      Size = 3
    end
    object qrDescAtivoVista: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DescAtivoVista'
      Origin = 'DescAtivoVista'
      FixedChar = True
      Size = 1
    end
    object qrDescAtivoPrazo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DescAtivoPrazo'
      Origin = 'DescAtivoPrazo'
      FixedChar = True
      Size = 1
    end
    object qrCodGrupo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CodGrupo'
      Origin = 'CodGrupo'
    end
    object qrAcrescimoSimples: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AcrescimoSimples'
      Origin = 'AcrescimoSimples'
      FixedChar = True
      Size = 1
    end
    object qrPercMargemLucro: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PercMargemLucro'
      Origin = 'PercMargemLucro'
      Precision = 7
      Size = 3
    end
    object qrSubproduto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Subproduto'
      Origin = 'Subproduto'
      FixedChar = True
      Size = 1
    end
    object qrReferencia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Referencia'
      Origin = 'Referencia'
      FixedChar = True
      Size = 1
    end
    object qrCurva: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Curva'
      Origin = 'Curva'
      FixedChar = True
      Size = 1
    end
    object qrTipoProduto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TipoProduto'
      Origin = 'TipoProduto'
      Size = 2
    end
    object qrInativo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Inativo'
      Origin = 'Inativo'
      FixedChar = True
      Size = 1
    end
    object qrCodProcesso: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CodProcesso'
      Origin = 'CodProcesso'
    end
    object qrData: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Data'
      Origin = 'Data'
    end
    object qrUsuario: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = 'Usuario'
    end
    object qrImagem01: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Imagem01'
      Origin = 'Imagem01'
      Size = 100
    end
    object qrImagem02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Imagem02'
      Origin = 'Imagem02'
      Size = 100
    end
    object qrImagem03: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Imagem03'
      Origin = 'Imagem03'
      Size = 100
    end
    object qrRevisao: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'Revisao'
      Origin = 'Revisao'
    end
    object qrObservacoes: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Observacoes'
      Origin = 'Observacoes'
      Size = 120
    end
    object qrMva: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Mva'
      Origin = 'Mva'
      Precision = 6
      Size = 3
    end
    object qrPesoLiquido: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PesoLiquido'
      Origin = 'PesoLiquido'
      Precision = 12
      Size = 3
    end
    object qrPermitirLocacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PermitirLocacao'
      Origin = 'PermitirLocacao'
      FixedChar = True
      Size = 1
    end
    object qrFracao: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Fracao'
      Origin = 'Fracao'
      Precision = 16
      Size = 6
    end
    object qrCustoReal: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CustoReal'
      Origin = 'CustoReal'
      Precision = 14
    end
    object qrCustoRealMedio: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CustoRealMedio'
      Origin = 'CustoRealMedio'
      Precision = 14
    end
    object qrPesavel: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pesavel'
      Origin = 'Pesavel'
      FixedChar = True
      Size = 1
    end
    object qrPrecoCustoMedio: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PrecoCustoMedio'
      Origin = 'PrecoCustoMedio'
      Precision = 14
    end
    object qrCodPAFECFAntigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodPAFECFAntigo'
      Origin = 'CodPAFECFAntigo'
      Size = 14
    end
    object qrLote: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Lote'
      Origin = 'Lote'
      Size = 30
    end
    object qrDataValidade: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DataValidade'
      Origin = 'DataValidade'
    end
    object qrCodPerfilTributacao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CodPerfilTributacao'
      Origin = 'CodPerfilTributacao'
    end
    object qrFracionar: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Fracionar'
      Origin = 'Fracionar'
      FixedChar = True
      Size = 1
    end
    object qrLocalizacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Localizacao'
      Origin = 'Localizacao'
      Size = 500
    end
    object qrDiasValidade: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'DiasValidade'
      Origin = 'DiasValidade'
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=exata'
      'User_Name=root'
      'Password=root'
      'Port=33089'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 352
    Top = 176
  end
end
