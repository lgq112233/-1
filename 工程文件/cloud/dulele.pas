unit dulele;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  TForm10 = class(TForm)
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
  Form10: TForm10;
  name:string;
  SqlStr:String;

implementation

{$R *.dfm}
uses cloudre,siyousc;

procedure TForm10.Button1Click(Sender: TObject);
begin
name:=cloudre.yhm;
      SqlStr:='select *from siyou where submitter='''+name+'''';
      adoquery1.Close;            //�ر�ADOQuery1���Ա��ڽ���SQL������
      adoquery1.SQL.Clear;        //���SQL���
      adoquery1.SQL.Add(sqlStr);  //����µ�SQL
      adoquery1.Open;             //��SQL��Ч
end;

procedure TForm10.Button3Click(Sender: TObject);
begin
close;
end;

procedure TForm10.Button2Click(Sender: TObject);
begin
 siyousc.Form11.show;
end;

procedure TForm10.FormShow(Sender: TObject);
begin
name:=cloudre.yhm;
      SqlStr:='select *from siyou where submitter='''+name+'''';
      adoquery1.Close;            //�ر�ADOQuery1���Ա��ڽ���SQL������
      adoquery1.SQL.Clear;        //���SQL���
      adoquery1.SQL.Add(sqlStr);  //����µ�SQL
      adoquery1.Open;             //��SQL��Ч
end;

end.
