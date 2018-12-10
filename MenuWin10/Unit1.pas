unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXCtrls, Vcl.ExtCtrls,
  Vcl.CategoryButtons;

type
  TForm1 = class(TForm)
    pnlHeader: TPanel;
    splVwMenu: TSplitView;
    pnlContent: TPanel;
    imgMenuHamburger: TImage;
    CategoryButtons1: TCategoryButtons;
    procedure imgMenuHamburgerDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.imgMenuHamburgerDblClick(Sender: TObject);
begin
  if splVwMenu.Opened then
    splVwMenu.Close
  else
    splVwMenu.Open;

end;

end.
