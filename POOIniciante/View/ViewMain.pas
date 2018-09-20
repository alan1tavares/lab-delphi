unit ViewMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, ClassCachorro, ClassCahorroTreinado;

type
  TForm1 = class(TForm)
    Button1: TButton;
    imgCachorro: TImage;
    lblAction: TLabel;
    gbPessoa: TGroupBox;
    gbCachorro: TGroupBox;
    lbNomeCachorro: TLabel;
    edCachorro: TEdit;
    pnNomeCachorroLeft: TPanel;
    btCriarObjetoCachorro: TButton;
    btDestroiCachorro: TButton;
    pnImagens: TPanel;
    imgCachorroTreinado: TImage;
    Splitter1: TSplitter;
    lbCachorroTreinado: TLabel;
    edtNomeCahcorroTreinado: TEdit;
    btCriarCachorroTreinado: TButton;
    btDestruirCachorroTreinado: TButton;
    lbAction2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure ClickImg(Sender: TObject);
    procedure btCriarObjetoCachorroClick(Sender: TObject);
    procedure btDestroiCachorroClick(Sender: TObject);
    procedure btCriarCachorroTreinadoClick(Sender: TObject);
    procedure ClickCachorroTreinadoLatir(Sender: TObject);
    procedure btDestruirCachorroTreinadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Cachorro: TCachorro;
  CachorroTreinado: TCachorro;

implementation

{$R *.dfm}

uses ClassPessoa;

procedure TForm1.btCriarCachorroTreinadoClick(Sender: TObject);
begin
  CachorroTreinado := TCachorroTreinado.Create;
end;

procedure TForm1.btCriarObjetoCachorroClick(Sender: TObject);
begin
  Cachorro := TCachorro.Create;
  Cachorro.Nome := lbNomeCachorro.Caption;
  imgCachorro.Visible := True;
end;

procedure TForm1.btDestroiCachorroClick(Sender: TObject);
begin
  if Cachorro <> nil then
  begin
    FreeAndNil(Cachorro);
  end;
end;

procedure TForm1.btDestruirCachorroTreinadoClick(Sender: TObject);
begin
  FreeAndNil(CachorroTreinado);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  Pessoa: TPessoa;
begin
  Pessoa := TPessoa.Create;
  try
    Pessoa.Nome := 'Alan';
    ShowMessage(Pessoa.Nome);
  finally
    Pessoa.Free;
  end;
end;

procedure TForm1.ClickCachorroTreinadoLatir(Sender: TObject);
begin
  if CachorroTreinado <> nil then
    lbAction2.Caption := CachorroTreinado.Latir
  else
    lbAction2.Caption := '';
end;

procedure TForm1.ClickImg(Sender: TObject);
begin
  if Cachorro <> nil then
    lblAction.Caption := Cachorro.Latir
  else
    lblAction.Caption := '';
end;

end.
