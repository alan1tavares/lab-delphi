unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.CategoryButtons, Vcl.ExtCtrls,
  Vcl.WinXCtrls, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, uRequestAdress;

type
  TfrmMain = class(TForm)
    pnHeader: TPanel;
    Label2: TLabel;
    maskEdCep: TMaskEdit;
    pnBody: TPanel;
    lbTeste: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    edLogradouro: TEdit;
    edComplemento: TEdit;
    edBairro: TEdit;
    Label4: TLabel;
    edLocalidade: TEdit;
    Label5: TLabel;
    edUF: TEdit;
    Label6: TLabel;
    procedure maskEdCepChange(Sender: TObject);
  private
    procedure updateEdits(Adress: TRequestAdress);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses uBoxTools, uModelViaCep;

{$R *.dfm}

procedure TfrmMain.maskEdCepChange(Sender: TObject);
var
  RequestCep: TRequestAdress;
begin
  if Length(maskEdCep.Text) = 8 then
  begin

    try
      RequestCep := TRequestAdress.Create(maskEdCep.Text);
      updateEdits(RequestCep);
    except
      on Exception do
        showMessage('Cep não encontrado');
    end;

  end;
end;

procedure TfrmMain.updateEdits(Adress: TRequestAdress);
begin
  edLogradouro.Text := Adress.Logradouro;
  edComplemento.Text := Adress.Complemento;
  edBairro.Text := Adress.Bairro;
  edLocalidade.Text := Adress.Localidade;
  edUF.Text := Adress.Uf;
end;

end.
