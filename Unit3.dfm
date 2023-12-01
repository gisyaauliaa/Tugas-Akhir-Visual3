object Form3: TForm3
  Left = 191
  Top = 125
  Width = 870
  Height = 450
  Caption = 'Form Jenis Obat'
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
    Left = 63
    Top = 29
    Width = 65
    Height = 13
    Caption = 'ID Jenis Obat'
  end
  object Label2: TLabel
    Left = 66
    Top = 59
    Width = 51
    Height = 13
    Caption = 'Jenis Obat'
  end
  object Edit1: TEdit
    Left = 146
    Top = 26
    Width = 147
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 39
    Top = 110
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 133
    Top = 109
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 228
    Top = 107
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 3
    OnClick = Button3Click
  end
  object DBGrid1: TDBGrid
    Left = 370
    Top = 31
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
  object Edit2: TEdit
    Left = 146
    Top = 59
    Width = 146
    Height = 21
    TabOrder = 5
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 388
    Top = 169
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
    Left = 469
    Top = 170
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tbl_jenisobat')
    Params = <>
    Left = 540
    Top = 168
  end
end
