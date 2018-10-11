unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    Connection: TFDConnection;
    Query: TFDQuery;
    DataSource: TDataSource;
    btCreateTable: TButton;
    procedure btCreateTableClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.btCreateTableClick(Sender: TObject);
begin

  try
    Connection.ExecSQL('drop trigger TABLE_DROP_BI;');
    Connection.ExecSQL('DROP SEQUENCE GEN_TABLE_DROP_ID;');
    Connection.ExecSQL('drop table TABLE_DROP;');
  finally
    Connection.ExecSQL('CREATE TABLE TABLE_DROP (ID INTEGER);');
    Connection.ExecSQL('CREATE SEQUENCE GEN_TABLE_DROP_ID;');
    Connection.ExecSQL('create trigger table_drop_bi for table_drop ' +
                          'active before insert position 0 as ' +
                          'begin if (new.id is null) then '+
                          'new.id = gen_id(gen_table_drop_id,1); end ');
  end;

end;

end.
