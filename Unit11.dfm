object Form11: TForm11
  Left = 192
  Top = 125
  Width = 870
  Height = 450
  Caption = 'Form Utama'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 96
    Top = 42
    object DaftarMenu1: TMenuItem
      Caption = 'Daftar Menu'
      object FormApoteker1: TMenuItem
        Caption = 'Form Apoteker'
        OnClick = FormApoteker1Click
      end
      object FormSupplier1: TMenuItem
        Caption = 'Form Supplier'
        OnClick = FormSupplier1Click
      end
      object FormJenisObat1: TMenuItem
        Caption = 'Form Jenis Obat'
        OnClick = FormJenisObat1Click
      end
      object FormObat1: TMenuItem
        Caption = 'Form Obat'
        OnClick = FormObat1Click
      end
      object FormTransaksiPembelian1: TMenuItem
        Caption = 'Form Transaksi Pembelian'
        OnClick = FormTransaksiPembelian1Click
      end
      object FormTransaksiPenjualan1: TMenuItem
        Caption = 'Form Transaksi Penjualan'
        OnClick = FormTransaksiPenjualan1Click
      end
      object FormDetailPembelian1: TMenuItem
        Caption = 'Form Detail Pembelian'
        OnClick = FormDetailPembelian1Click
      end
      object FormDetailPenjualan1: TMenuItem
        Caption = 'Form Detail Penjualan'
        OnClick = FormDetailPenjualan1Click
      end
    end
  end
end
