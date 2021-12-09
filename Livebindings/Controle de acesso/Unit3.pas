unit Unit3;

interface

uses
  Vcl.Forms, Unit2, Vcl.StdCtrls, System.bindings.expression, System.bindings.helper,
  Unit1;

Type
  TController = class
  private
    FForm : TForm;
    FPermissao : TPermissao;

    FBtnIncluir : TButton;
    FBtnAlterar : TButton;
    FBtnExcluir : TButton;
    FBtnConsultar : TButton;

    FBindings : TBindingExpression;

    procedure FormShow(Sender : TObject);

  public
    constructor Create;
    destructor Destroy; override;
  end;


implementation

{ TController }

constructor TController.Create;
begin
  Application.CreateForm(TForm1, FForm);
  FForm.OnShow := FormShow;
  FPermissao := TPermissao.create;
  FForm.ShowModal;
end;

destructor TController.Destroy;
begin
  FForm.Free;
  FPermissao.Free;
  FBindings.Free;

  inherited;
end;

procedure TController.FormShow(Sender: TObject);
begin
  FBtnIncluir := TButton(FForm.FindComponent('btnIncluir'));
  FBtnAlterar := TButton(FForm.FindComponent('btnAlterar'));
  FBtnExcluir := TButton(FForm.FindComponent('btnExcluir'));
  FBtnConsultar := TButton(FForm.FindComponent('btnConsultar'));

  FBindings := TBindings.CreateManagedBinding(
    [TBindings.CreateAssociationScope(
      [Associate(FPermissao, 'permissao')] )
    ],
    'permissao.Incluir',
    [TBindings.CreateAssociationScope(
      [Associate(FBtnIncluir, 'btnIncluir')] )
    ], 'btnIncluir.visible', nil, nil
  );
  TBindings.Notify(FPermissao, 'Incluir');

    FBindings := TBindings.CreateManagedBinding(
    [TBindings.CreateAssociationScope(
      [Associate(FPermissao, 'permissao')] )
    ],
    'permissao.Alterar',
    [TBindings.CreateAssociationScope(
      [Associate(FBtnAlterar, 'btnAlterar')] )
    ], 'btnAlterar.visible', nil, nil
  );
  TBindings.Notify(FPermissao, 'Alterar');

  FBindings := TBindings.CreateManagedBinding(
    [TBindings.CreateAssociationScope(
      [Associate(FPermissao, 'permissao')] )
    ],
    'permissao.Excluir',
    [TBindings.CreateAssociationScope(
      [Associate(FBtnExcluir, 'btnExcluir')] )
    ], 'btnExcluir.visible', nil, nil
  );
  TBindings.Notify(FPermissao, 'Excluir');

  FBindings := TBindings.CreateManagedBinding(
    [TBindings.CreateAssociationScope(
      [Associate(FPermissao, 'permissao')] )
    ],
    'permissao.Consultar',
    [TBindings.CreateAssociationScope(
      [Associate(FBtnConsultar, 'btnConsultar')] )
    ], 'btnConsultar.visible', nil, nil
  );
  TBindings.Notify(FPermissao, 'Consultar');
end;

end.
