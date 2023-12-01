unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm11 = class(TForm)
    MainMenu1: TMainMenu;
    DaftarMenu1: TMenuItem;
    FormApoteker1: TMenuItem;
    FormSupplier1: TMenuItem;
    FormJenisObat1: TMenuItem;
    FormObat1: TMenuItem;
    FormTransaksiPembelian1: TMenuItem;
    FormTransaksiPenjualan1: TMenuItem;
    FormDetailPembelian1: TMenuItem;
    FormDetailPenjualan1: TMenuItem;
    procedure FormApoteker1Click(Sender: TObject);
    procedure FormSupplier1Click(Sender: TObject);
    procedure FormJenisObat1Click(Sender: TObject);
    procedure FormObat1Click(Sender: TObject);
    procedure FormTransaksiPembelian1Click(Sender: TObject);
    procedure FormTransaksiPenjualan1Click(Sender: TObject);
    procedure FormDetailPembelian1Click(Sender: TObject);
    procedure FormDetailPenjualan1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8;

{$R *.dfm}

procedure TForm11.FormApoteker1Click(Sender: TObject);
begin
  Form1.ShowModal;
end;

procedure TForm11.FormSupplier1Click(Sender: TObject);
begin
  Form2.ShowModal;
end;

procedure TForm11.FormJenisObat1Click(Sender: TObject);
begin
  Form3.ShowModal;
end;

procedure TForm11.FormObat1Click(Sender: TObject);
begin
  Form4.ShowModal; 
end;

procedure TForm11.FormTransaksiPembelian1Click(Sender: TObject);
begin
  Form5.ShowModal;
end;

procedure TForm11.FormTransaksiPenjualan1Click(Sender: TObject);
begin
  Form6.ShowModal
end;

procedure TForm11.FormDetailPembelian1Click(Sender: TObject);
begin
  Form7.ShowModal;
end;

procedure TForm11.FormDetailPenjualan1Click(Sender: TObject);
begin
  Form8.ShowModal;
end;

end.
 