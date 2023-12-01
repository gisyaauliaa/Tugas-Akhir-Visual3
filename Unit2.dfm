object Form2: TForm2
  Left = 192
  Top = 125
  Width = 870
  Height = 450
  Caption = 'Form Supplier'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 55
    Top = 37
    Width = 52
    Height = 13
    Caption = 'ID Supplier'
  end
  object Label2: TLabel
    Left = 56
    Top = 64
    Width = 68
    Height = 13
    Caption = 'Nama Supplier'
  end
  object Label3: TLabel
    Left = 55
    Top = 95
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label4: TLabel
    Left = 57
    Top = 123
    Width = 48
    Height = 13
    Caption = 'No Telpon'
  end
  object Edit1: TEdit
    Left = 128
    Top = 34
    Width = 120
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 127
    Top = 63
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 126
    Top = 94
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 127
    Top = 126
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 386
    Top = 38
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Button1: TButton
    Left = 55
    Top = 169
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 154
    Top = 169
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 257
    Top = 169
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 7
    OnClick = Button3Click
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_apotek'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\KULIAH\Semester 5\Visual 3\Tugas Akhir\libmysql.dll'
    Left = 410
    Top = 173
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tbl_supplier')
    Params = <>
    Left = 482
    Top = 175
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 546
    Top = 175
  end
end
