unit Unit2;

interface

uses
  System.IniFiles;

Type
  TPermissao = class
  private
    FIni : TIniFile;
    FExcluir: Boolean;
    FConsultar: Boolean;
    FIncluir: Boolean;
    FAlterar: Boolean;

    procedure SetAlterar(const Value: Boolean);
    procedure SetConsultar(const Value: Boolean);
    procedure SetExcluir(const Value: Boolean);
    procedure SetIncluir(const Value: Boolean);

  public
    constructor create;
    destructor destroy; override;

    property Incluir: Boolean read FIncluir write SetIncluir;
    property Alterar: Boolean read FAlterar write SetAlterar;
    property Excluir: Boolean read FExcluir write SetExcluir;
    property Consultar: Boolean read FConsultar write SetConsultar;
  end;

implementation

{ TPermissao }

constructor TPermissao.create;
begin
  FIni := TIniFile.Create('C:\Users\haik\Documents\Devs\Delphi\Livebindings\Controle de acesso\permissao.ini');

  FIncluir := FIni.ReadBool('permissao','incluir',false);
  FAlterar := FIni.ReadBool('permissao','alterar',false);
  FExcluir := FIni.ReadBool('permissao','excluir',false);
  FConsultar := FIni.ReadBool('permissao','consultar',false);
end;

destructor TPermissao.destroy;
begin
  FIni.Free;
  inherited;
end;

procedure TPermissao.SetAlterar(const Value: Boolean);
begin
  FAlterar := Value;
end;

procedure TPermissao.SetConsultar(const Value: Boolean);
begin
  FConsultar := Value;
end;

procedure TPermissao.SetExcluir(const Value: Boolean);
begin
  FExcluir := Value;
end;

procedure TPermissao.SetIncluir(const Value: Boolean);
begin
    FIncluir := Value;
end;

end.
