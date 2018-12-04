unit uDAOCadeiras;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmDAOCadeiras = class(TDataModule)
    mmCadeiras: TFDMemTable;
    dsCadeiras: TDataSource;
    mmCadeirasOcupado: TBooleanField;
    mmCadeirasId: TFDAutoIncField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDAOCadeiras: TdmDAOCadeiras;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmDAOCadeiras.DataModuleCreate(Sender: TObject);
var
  I: integer;
begin
  mmCadeiras.DisableControls;
  mmCadeiras.Open;

  for I := 1 to 100 do
  begin
    mmCadeiras.Append;
    mmCadeirasId.AsInteger := I;
    mmCadeirasOcupado.AsBoolean := false;
    mmCadeiras.Post;
  end;

  mmCadeiras.EnableControls;
end;

end.
