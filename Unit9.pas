unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TForm9 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    DataSource1: TDataSource;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  nama, password, level, loginLevel, querylogin, userid: string;
  sts: integer;

implementation

uses Unit6, Unit11, Unit10;

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
begin
  //cukup jelas
  nama := Edit1.Text;
  password := Edit2.Text;

  //assign kueri ke variabel querylogin
  querylogin := 'select * from tbl_user where username = :nama and password = :password';

  //clear properti SQL dan tambahkan querylogin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add(querylogin);

  //bandingkan variabel 'nama' dan 'password' dengan kolom `nama` dan `password` di database
  ZQuery1.ParamByName('nama').AsString := nama; //assign var 'nama' ke :nama di kueri
  ZQuery1.ParamByName('password').AsString := password; //cukup jelas
  ZQuery1.Open; //jalankan kueri dan cocokan dengan parameter di atas

  if (ZQuery1.RecordCount > 0) then //jika kueri di atas mengembalikan hasil
    begin
      sts := ZQuery1.FieldValues['status']; //ambil value dari kolom `status`
      if (sts = 1) then //memeriksa sts
        begin
          loginLevel := ZQuery1.FieldValues['level']; //ambil value dari kolom `level` sebagai string
          if (loginLevel = 'Apoteker') then //memeriksa loginLevel
            begin
              userid := ZQuery1.FieldValues['user_id']; //set userid berdasarkan sintaks di kanan
              //l1.Caption := userid; //assign userid sebagai value di Label4.Caption
              ShowMessage('Anda Login sebagai Apoteker');
              Form6.ShowModal;
            end
          else if (loginLevel = 'Staff Apoteker') then
            begin
              userid := ZQuery1.FieldValues['user_id'];
              //lblId.Caption := userid;
              ShowMessage('Anda Login sebagai Staff Apoteker');
              Form11.ShowModal;
            end;
        end
      else //jika tidak
        begin
          ShowMessage('Login Gagal'); //jalankan ini
        end;
    end;
//  frConnection.ZqLogin.Close;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
  Form10.ShowModal;
end;

end.
