unit siyousc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TForm11 = class(TForm)
    ADOQuery1: TADOQuery;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;
  SqlStr:String;
  biaot:string;
  neir:string;
  tijiao:string;


implementation

{$R *.dfm}
uses cloudre,sccg;

procedure TForm11.Button1Click(Sender: TObject);
begin
      biaot:=edit1.Text;
      neir:=edit2.Text;
      tijiao:=cloudre.yhm;
      SqlStr:='insert into siyou values('''+biaot+''','''+neir+''','''+tijiao+''')';
      adoquery1.Close;            //关闭ADOQuery1，以便于进行SQL语句更新
      adoquery1.SQL.Clear;        //清空SQL语句
      adoquery1.SQL.Add(sqlStr);  //添加新的SQL
      adoquery1.ExecSQL;             //新SQL有效
      sccg.Form9.Show;
end;

procedure TForm11.Edit1Click(Sender: TObject);
begin
edit1.Text:='';
end;


procedure TForm11.Edit2Click(Sender: TObject);
begin
edit2.Text:='';
end;

procedure TForm11.Button2Click(Sender: TObject);
begin
close;
end;

end.
