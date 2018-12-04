unit uViewCadeiras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCGrids, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList;

type
  TfmCadeiras = class(TForm)
    pnTop: TPanel;
    pnBot: TPanel;
    DBCtrlGrid1: TDBCtrlGrid;
    lbLegenda: TLabel;
    imgListCadeiras: TImageList;
    imgLivre: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    imgOcupado: TImage;
    imgSelecionado: TImage;
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCadeiras: TfmCadeiras;

implementation

{$R *.dfm}

procedure TfmCadeiras.FormCreate(Sender: TObject);
begin
  imgListCadeiras.GetBitmap(0, imgLivre.Picture.Bitmap);
  imgListCadeiras.GetBitmap(1, imgOcupado.Picture.Bitmap);
  imgListCadeiras.GetBitmap(2, imgSelecionado.Picture.Bitmap);
end;

end.
