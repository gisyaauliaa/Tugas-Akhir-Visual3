object Form1: TForm1
  Left = 192
  Top = 122
  Width = 869
  Height = 552
  Caption = 'Form Apoteker'
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
    Left = 49
    Top = 24
    Width = 66
    Height = 13
    Caption = 'ID APOTEKER'
  end
  object Label2: TLabel
    Left = 48
    Top = 57
    Width = 84
    Height = 13
    Caption = 'NAMA APOTEKER'
  end
  object Label3: TLabel
    Left = 49
    Top = 89
    Width = 74
    Height = 13
    Caption = 'JENIS KELAMIN'
  end
  object Label4: TLabel
    Left = 49
    Top = 122
    Width = 121
    Height = 13
    Caption = 'TEMPAT TANGGAL LAHIR'
  end
  object Label5: TLabel
    Left = 49
    Top = 154
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object Label6: TLabel
    Left = 49
    Top = 185
    Width = 56
    Height = 13
    Caption = 'NO TELPON'
  end
  object Label7: TLabel
    Left = 48
    Top = 218
    Width = 30
    Height = 13
    Caption = 'EMAIL'
  end
  object Label8: TLabel
    Left = 49
    Top = 250
    Width = 94
    Height = 13
    Caption = 'NO IZIN APOTEKER'
  end
  object Label9: TLabel
    Left = 49
    Top = 281
    Width = 108
    Height = 13
    Caption = 'TANGGAL IZIN TERBIT'
  end
  object Label10: TLabel
    Left = 49
    Top = 313
    Width = 123
    Height = 13
    Caption = 'TANGGAL IZIN BERAKHIR'
  end
  object Label11: TLabel
    Left = 49
    Top = 348
    Width = 54
    Height = 13
    Caption = 'JAM KERJA'
  end
  object Label12: TLabel
    Left = 49
    Top = 387
    Width = 45
    Height = 13
    Caption = 'JABATAN'
  end
  object Label13: TLabel
    Left = 49
    Top = 424
    Width = 23
    Height = 13
    Caption = 'GAJI'
  end
  object Label14: TLabel
    Left = 49
    Top = 459
    Width = 83
    Height = 13
    Caption = 'CABANG APOTEK'
  end
  object Edit1: TEdit
    Left = 193
    Top = 25
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 193
    Top = 57
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 193
    Top = 121
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 193
    Top = 153
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 193
    Top = 186
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit6: TEdit
    Left = 193
    Top = 215
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edit7: TEdit
    Left = 194
    Top = 250
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Edit8: TEdit
    Left = 193
    Top = 281
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Edit9: TEdit
    Left = 194
    Top = 314
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object Edit10: TEdit
    Left = 193
    Top = 346
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object ComboBox1: TComboBox
    Left = 193
    Top = 90
    Width = 122
    Height = 21
    ItemHeight = 13
    TabOrder = 10
    Items.Strings = (
      'Laki-laki'
      'Perempuan')
  end
  object ComboBox2: TComboBox
    Left = 193
    Top = 385
    Width = 120
    Height = 21
    ItemHeight = 13
    TabOrder = 11
    Items.Strings = (
      'Apoteker'
      'Staff Apoteker')
  end
  object Button1: TButton
    Left = 352
    Top = 281
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 12
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 449
    Top = 282
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 13
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 552
    Top = 281
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 14
    OnClick = Button3Click
  end
  object DBGrid1: TDBGrid
    Left = 345
    Top = 25
    Width = 472
    Height = 237
    DataSource = DataSource1
    TabOrder = 15
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit11: TEdit
    Left = 193
    Top = 424
    Width = 121
    Height = 21
    TabOrder = 16
  end
  object Edit12: TEdit
    Left = 193
    Top = 458
    Width = 121
    Height = 21
    TabOrder = 17
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 367
    Top = 352
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
    Left = 437
    Top = 352
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tbl_apoteker')
    Params = <>
    Left = 499
    Top = 352
  end
end
