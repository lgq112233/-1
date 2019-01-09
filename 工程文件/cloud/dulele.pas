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
      adoquery1.Close;            //关闭ADOQuery1，以便于进行SQL语句更新
      adoquery1.SQL.Clear;        //清空SQL语句
      adoquery1.SQL.Add(sqlStr);  //添加新的SQL
      adoquery1.Open;             //新SQL有效
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
      adoquery1.Close;            //关闭ADOQuery1，以便于进行SQL语句更新
      adoquery1.SQL.Clear;        //清空SQL语句
      adoquery1.SQL.Add(sqlStr);  //添加新的SQL
      adoquery1.Open;             //新SQL有效
end;

end.
