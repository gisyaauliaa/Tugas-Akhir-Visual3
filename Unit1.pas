unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls, ComCtrls, Grids, DBGrids;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DataSource1: TDataSource;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DBGrid1: TDBGrid;
    Edit11: TEdit;
    Edit12: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  id : string;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into tbl_apoteker values(null, "'+Edit1.Text+'", "'+Edit2.Text+'","'+ComboBox1.Text+'", "'+Edit3.Text+'", "'+Edit4.Text+'", "'+Edit5.Text+'", "'+Edit6.Text+'", "'+Edit7.Text+'", "'+Edit8.Text+'", "'+Edit9.Text+'", "'+Edit10.Text+'", "'+ComboBox2.Text+'", "'+Edit11.Text+'", "'+Edit12.Text+'")');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tbl_apoteker');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('update tbl_apoteker set id_apoteker="'+Edit1.Text+'", nama_apoteker="'+Edit2.Text+'", jenis_kelamin="'+ComboBox1.Text+'", ttl="'+Edit3.Text+'", alamat="'+Edit4.Text+'", no_telp="'+Edit5.Text+'", email="'+Edit6.Text+'", noIzin_apoteker="'+Edit7.Text+'", jam_kerja="'+Edit8.Text+'", tglIzin_apoteker="'+Edit9.Text+'", tglIzin_berakhir="'+Edit10.Text+'", jabatan="'+ComboBox2.Text+'", gaji="'+Edit11.Text+'", cabang_apotek="'+Edit12.Text+'" where id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tbl_apoteker');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI EDIT');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('delete from tbl_apoteker where id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tbl_apoteker');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI HAPUS');
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
  id:=ZQuery1.Fields[0].AsString;
  Edit1.Text:=ZQuery1.Fields[1].AsString;
  Edit2.Text:=ZQuery1.Fields[2].AsString;
  ComboBox1.Text:=ZQuery1.Fields[3].AsString;
  Edit3.Text:=ZQuery1.Fields[4].AsString;
  Edit4.Text:=ZQuery1.Fields[5].AsString;
  Edit5.Text:=ZQuery1.Fields[6].AsString;
  Edit6.Text:=ZQuery1.Fields[7].AsString;
  Edit7.Text:=ZQuery1.Fields[8].AsString;
  Edit8.Text:=ZQuery1.Fields[9].AsString;
  Edit9.Text:=ZQuery1.Fields[10].AsString;
  Edit10.Text:=ZQuery1.Fields[11].AsString;
  ComboBox2.Text:=ZQuery1.Fields[12].AsString;
  Edit11.Text:=ZQuery1.Fields[13].AsString;
  Edit12.Text:=ZQuery1.Fields[14].AsString;
end;

end.
