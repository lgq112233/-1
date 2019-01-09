unit yonghu1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm6 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}
uses zhonglele,dulele,cloudre;

procedure TForm6.Button1Click(Sender: TObject);
begin
zhonglele.Form7.Show;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
close;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
dulele.Form10.show;
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
application.Terminate;
end;

end.
