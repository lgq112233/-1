unit zhonglele;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls;

type
  TForm7 = class(TForm)
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}
uses cloudre,gongyousc;

procedure TForm7.Button1Click(Sender: TObject);
begin
adoquery1.Close;
adoquery1.open;
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
close;
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
   gongyousc.Form8.Show;
end;

procedure TForm7.FormShow(Sender: TObject);
begin
adoquery1.Close;
adoquery1.open;
end;

end.
