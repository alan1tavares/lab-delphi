unit ViewMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, ClassCachorro;

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
    procedure Button1Click(Sender: TObject);
    procedure ClickImg(Sender: TObject);
    procedure btCriarObjetoCachorroClick(Sender: TObject);
    procedure btDestroiCachorroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Cachorro: TCachorro;

implementation

{$R *.dfm}

uses ClassPessoa;

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
    Cachorro.Free;
  end;
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

procedure TForm1.ClickImg(Sender: TObject);
begin
  if Cachorro <> nil then
  begin
    lblAction.Caption := Cachorro.Latir;
  end;
end;

end.
