unit ViewMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    imgCachorro: TImage;
    lblAction: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure ClickImg(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses ClassCachorro, ClassPessoa;

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
var
  Rex: TCachorro;
begin
  Rex := TCachorro.Create;
  try
    lblAction.Caption := Rex.latir;
  finally
    Rex.Free
  end;

end;

end.
