unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.CategoryButtons, Vcl.ExtCtrls,
  Vcl.WinXCtrls, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    SplitView1: TSplitView;
    catMenu: TCategoryButtons;
    pnHeader: TPanel;
    pgControl: TPageControl;
    sheetTNetHTTPClient: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    btBuscarCep: TButton;
    edCep: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btBuscarCepClick(Sender: TObject);
    procedure edCepClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses uBoxTools, uModelViaCep;

{$R *.dfm}

procedure TfrmMain.btBuscarCepClick(Sender: TObject);
var
  cep: integer;
  mensagem: String;
begin
  cep := strToInt(edCep.Text);
  mensagem := ModelViaCep.buscarCep(cep);

  ShowMessage(mensagem+'Teste');


end;

procedure TfrmMain.edCepClick(Sender: TObject);
begin
  edCep.Text := '';
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  uBoxTools.HiddenTabsPageControl(pgControl);
  pgControl.ActivePage := sheetTNetHTTPClient;
end;

end.

