object FEtatJourReg: TFEtatJourReg
  Left = 269
  Top = 145
  Width = 629
  Height = 439
  Caption = 'ETAT JOURNALIER DES REGLEMENTS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LbDateJ: TLabel
    Left = 160
    Top = 56
    Width = 163
    Height = 17
    Caption = 'DE LA JOURNEE DU '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Baskerville Old Face'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel3: TPanel
    Left = 3
    Top = 8
    Width = 606
    Height = 41
    Caption = 'ETAT  JOURNALIER DES REGLEMENTS'
    Color = clInfoText
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Century Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel4: TPanel
    Left = 4
    Top = 358
    Width = 605
    Height = 41
    TabOrder = 1
    object OfficeButton2: TOfficeButton
      Left = 24
      Top = 8
      Width = 129
      Height = 25
      Caption = 'Imprimer'
      DownGlyph.Data = {
        1A020000424D1A0200000000000036000000280000000B0000000B0000000100
        200000000000E401000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080800000FFFF0000FFFF
        0000FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFF
        0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFFFF00FFFFFF00FFFF
        FF00C0C0C000FF000000FFFF0000FFFF0000FFFFFF00FFFFFF00FFFF0000FFFF
        0000FFFF0000FFFFFF00FFFFFF00C0C0C00080800000FF000000FFFF0000FFFF
        FF00FFFFFF00FFFFFF00FFFF0000FFFF0000FFFFFF00FFFFFF00C0C0C000FF00
        0000FFFF0000FFFF0000FFFF0000FFFFFF00FFFF0000FFFF000080800000FFFF
        FF00FFFFFF00C0C0C000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
        0000FFFF0000FF000000FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFF0000FFFF
        0000FFFF000080800000FF000000FFFF0000C0C0C000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00C0C0C000C0C0C000FFFF0000FFFF000080800000C0C0C000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0
        C000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      OffGlyph.Data = {
        1A020000424D1A0200000000000036000000280000000B0000000B0000000100
        200000000000E401000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080000000800000008000
        000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C0008000
        00008000000080800000FF0000008080000080000000FFFFFF00FFFFFF00FFFF
        FF00C0C0C000800000008000000080800000808000008080000080800000FF00
        000080000000FFFFFF00FFFFFF00C0C0C0008000000080000000FF0000008080
        000080800000808000008080000080000000FFFFFF00FFFFFF00808080008000
        000080000000800000008000000080800000808000008000000080000000FFFF
        FF00FFFFFF008080800080000000FF000000808000008000000080000000FF00
        00008000000080000000FFFFFF00FFFFFF00C0C0C00080808000808000008080
        000080800000800000008000000080000000C0C0C000FFFFFF00FFFFFF00FFFF
        FF00C0C0C0008080800080800000FF0000008000000080000000C0C0C000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00080808000808080008080
        8000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      OnGlyph.Data = {
        1A020000424D1A0200000000000036000000280000000B0000000B0000000100
        200000000000E401000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080000000800000008000
        000080800000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C0008000
        00008000000080800000800000008080000080000000FFFFFF00FFFFFF00FFFF
        FF00C0C0C000800000008080000080800000FFFF0000FFFF0000808000008000
        000080000000FFFFFF00FFFFFF00C0C0C0008080000080800000FFFF0000FFFF
        FF00FFFF0000808000008000000080000000FFFFFF00FFFFFF00808080008000
        00008080000080800000FFFF0000FFFF0000808000008080000080000000FFFF
        FF00FFFFFF0080808000808000008080000080800000FFFF0000808000008080
        00008000000080800000FFFFFF00FFFFFF00C0C0C00080808000808000008080
        000080800000808000008000000080800000C0C0C000FFFFFF00FFFFFF00FFFF
        FF00C0C0C0008080800080800000800000008080000080000000C0C0C000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00080808000808080008080
        8000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      RoundSize = 20
      Color = 13172735
      OnClick = OfficeButton2Click
    end
    object Label3: TLabel
      Left = 210
      Top = 11
      Width = 37
      Height = 18
      Caption = 'Total :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Book Antiqua'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit2: TDBEdit
      Left = 280
      Top = 7
      Width = 121
      Height = 26
      DataField = 'SumMontantreg'
      DataSource = DmPressing.DsQReglementJournaliertotal
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Book Antiqua'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 88
    Width = 601
    Height = 265
    DataSource = DmPressing.DsQReglementJournalier
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IDDEP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Century Gothic'
        Font.Style = []
        Title.Caption = 'N'#176'Depot'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlue
        Title.Font.Height = -12
        Title.Font.Name = 'Century Gothic'
        Title.Font.Style = [fsBold]
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IDREG'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Century Gothic'
        Font.Style = []
        Title.Caption = 'N'#176'Reglement'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlue
        Title.Font.Height = -12
        Title.Font.Name = 'Century Gothic'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATEDEP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Century Gothic'
        Font.Style = []
        Title.Caption = 'Date du depot'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlue
        Title.Font.Height = -12
        Title.Font.Name = 'Century Gothic'
        Title.Font.Style = [fsBold]
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTALDEP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Century Gothic'
        Font.Style = []
        Title.Caption = 'Total du depot'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlue
        Title.Font.Height = -12
        Title.Font.Name = 'Century Gothic'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MONTANTREG'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Century Gothic'
        Font.Style = []
        Title.Caption = 'Montant du reglement'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlue
        Title.Font.Height = -12
        Title.Font.Name = 'Century Gothic'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RESTANT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Century Gothic'
        Font.Style = []
        Title.Caption = 'Montant restant'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlue
        Title.Font.Height = -12
        Title.Font.Name = 'Century Gothic'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object MainMenu1: TMainMenu
    Left = 51
    Top = 24
    object Fichier1: TMenuItem
      Caption = 'Fichier'
      object Fermer1: TMenuItem
        Caption = 'Fermer'
        OnClick = Fermer1Click
      end
    end
  end
end
