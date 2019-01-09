unit zhuce;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    ADOQuery1: TADOQuery;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  SqlStr:String;
  yhm:string;
  mima:string;

implementation

{$R *.dfm}
uses cloudre,zhucesuccess,cunzai;

procedure TForm2.Button2Click(Sender: TObject);
begin
close;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
      yhm:=edit1.Text;
      mima:=edit2.Text;
      SqlStr:='select *from users where username='''+yhm+'''';
      adoquery1.Close;            //关闭ADOQuery1，以便于进行SQL语句更新
      adoquery1.SQL.Clear;        //清空SQL语句
      adoquery1.SQL.Add(sqlStr);  //添加新的SQL
      adoquery1.Open;             //新SQL有效
      if(adoquery1.IsEmpty)
      then
      begin
      SqlStr:='insert into users values('''+yhm+''','''+mima+''')';
      adoquery1.Close;            //关闭ADOQuery1，以便于进行SQL语句更新
      adoquery1.SQL.Clear;        //清空SQL语句
      adoquery1.SQL.Add(sqlStr);  //添加新的SQL
      adoquery1.ExecSQL;             //新SQL有效
      zhucesuccess.Form3.Show;
      end
      else
      begin
      cunzai.Form5.show;
      end
end;

procedure TForm2.Edit1Click(Sender: TObject);
begin
edit1.Text:='';
end;

procedure TForm2.Edit2Click(Sender: TObject);
begin
edit2.Text:='';
end;

end.
