unit cloudre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TForm1 = class(TForm)
    con1: TADOConnection;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    ADOQuery1: TADOQuery;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  SqlStr:String;
  yhm:string;
  mima:string;

implementation

{$R *.dfm}
uses zhuce,denglufalse,yonghu1;

procedure TForm1.Button2Click(Sender: TObject);
begin
zhuce.Form2.Show;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
      yhm:=edit1.Text;
      mima:=edit2.Text;
      SqlStr:='select *from users where username='''+yhm+''' and pass='''+mima+'''';
      adoquery1.Close;            //关闭ADOQuery1，以便于进行SQL语句更新
      adoquery1.SQL.Clear;        //清空SQL语句
      adoquery1.SQL.Add(sqlStr);  //添加新的SQL
      adoquery1.Open;             //新SQL有效
      if (ADOQuery1.IsEmpty)
      then
      begin
      denglufalse.Form4.show;
      end
      else
      begin
      yonghu1.Form6.Show;
      form1.Hide;
      end
end;

end.
