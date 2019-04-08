inherited frmCadIgreja: TfrmCadIgreja
  Caption = 'Cadastro de Igreja'
  ClientHeight = 269
  ClientWidth = 769
  ExplicitWidth = 775
  ExplicitHeight = 298
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    Width = 769
    Height = 231
    ActivePage = tabManutencao
    ExplicitWidth = 769
    ExplicitHeight = 231
    inherited tabListagem: TTabSheet
      ExplicitWidth = 761
      ExplicitHeight = 203
      inherited pnlListagem: TPanel
        Width = 761
        ExplicitWidth = 761
      end
      inherited grdListagem: TDBGrid
        Width = 761
        Height = 138
        DataSource = dtsListagem
        Columns = <
          item
            Expanded = False
            FieldName = 'cod_igreja'
            Width = 41
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_igreja'
            Width = 226
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cidade'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_presidente'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'situacao'
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitWidth = 761
      ExplicitHeight = 203
      object lbledtNome: TLabeledEdit
        Tag = 2
        Left = 55
        Top = 20
        Width = 272
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 29
        EditLabel.Height = 13
        EditLabel.Caption = 'Igreja'
        MaxLength = 45
        TabOrder = 0
      end
      object lbledt_codigo: TLabeledEdit
        Tag = 1
        Left = 3
        Top = 20
        Width = 46
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo'
        MaxLength = 10
        NumbersOnly = True
        TabOrder = 1
      end
      object lbledtCidade: TLabeledEdit
        Tag = 2
        Left = 404
        Top = 20
        Width = 166
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'Cidade'
        MaxLength = 45
        TabOrder = 2
      end
      object lbledtPresidente: TLabeledEdit
        Tag = 2
        Left = 3
        Top = 60
        Width = 265
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 51
        EditLabel.Height = 13
        EditLabel.Caption = 'Presidente'
        MaxLength = 45
        TabOrder = 3
      end
      object lbledtSigla: TLabeledEdit
        Left = 333
        Top = 20
        Width = 65
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 22
        EditLabel.Height = 13
        EditLabel.Caption = 'Sigla'
        MaxLength = 45
        TabOrder = 4
      end
      object lbledtSite: TLabeledEdit
        Tag = 2
        Left = 274
        Top = 60
        Width = 199
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 18
        EditLabel.Height = 13
        EditLabel.Caption = 'Site'
        MaxLength = 45
        TabOrder = 5
      end
      object lbledtEmail: TLabeledEdit
        Tag = 2
        Left = 119
        Top = 148
        Width = 218
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 24
        EditLabel.Height = 13
        EditLabel.Caption = 'Email'
        MaxLength = 45
        TabOrder = 6
      end
      object lbledtCNPJ: TLabeledEdit
        Tag = 2
        Left = 3
        Top = 148
        Width = 110
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 25
        EditLabel.Height = 13
        EditLabel.Caption = 'CNPJ'
        MaxLength = 45
        TabOrder = 7
      end
      object lbledtLogradouro: TLabeledEdit
        Tag = 2
        Left = 3
        Top = 103
        Width = 265
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 45
        EditLabel.Height = 13
        EditLabel.Caption = 'Endere'#231'o'
        MaxLength = 45
        TabOrder = 8
      end
      object lbledtBairro: TLabeledEdit
        Tag = 2
        Left = 274
        Top = 103
        Width = 151
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 24
        EditLabel.Height = 13
        EditLabel.Caption = 'Bairo'
        MaxLength = 45
        TabOrder = 9
      end
      object lbledtPercAjuste: TLabeledEdit
        Tag = 2
        Left = 431
        Top = 103
        Width = 42
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 60
        EditLabel.Height = 13
        EditLabel.Caption = '% de Ajuste'
        MaxLength = 45
        NumbersOnly = True
        TabOrder = 10
      end
      object pnlImage: TPanel
        Left = 576
        Top = 3
        Width = 145
        Height = 166
        TabOrder = 11
        object imgFoto: TImage
          Left = 1
          Top = 1
          Width = 143
          Height = 164
          Align = alClient
          PopupMenu = pmFoto
          ExplicitWidth = 144
        end
      end
    end
  end
  inherited pnlRodape: TPanel
    Top = 231
    Width = 769
    ExplicitTop = 231
    ExplicitWidth = 769
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
    inherited btnNovo: TBitBtn
      Visible = False
    end
    inherited btnApagar: TBitBtn
      Visible = False
    end
    inherited btnFechar: TBitBtn
      Left = 677
      ExplicitLeft = 677
    end
  end
  inherited QryListagem: TFDQuery
    SQL.Strings = (
      
        'SELECT cod_igreja, nome_igreja, cidade, dta_fundacao, nome_presi' +
        'dente, dta_inclusao, sigla_igreja, site, email, cnpj, logradouro' +
        ', bairro, uf, fone, foto, percentual_ajuste, sistema, situacao'
      'FROM igreja.tb_igreja')
    Left = 264
    Top = 0
    object fdtncfldQryListagemcod_igreja: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_igreja'
      Origin = 'cod_igreja'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object strngfldQryListagemnome_igreja: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'nome_igreja'
      Origin = 'nome_igreja'
      Size = 50
    end
    object strngfldQryListagemcidade: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cidade'
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 50
    end
    object strngfldQryListagemnome_presidente: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Presidente'
      FieldName = 'nome_presidente'
      Origin = 'nome_presidente'
      Size = 50
    end
    object intgrfldQryListagemsituacao: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'situacao'
      Origin = 'situacao'
    end
    object dtfldQryListagemdta_fundacao: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dta_fundacao'
      Origin = 'dta_fundacao'
    end
    object dtmfldQryListagemdta_inclusao: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'dta_inclusao'
      Origin = 'dta_inclusao'
    end
    object strngfldQryListagemsigla_igreja: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sigla_igreja'
      Origin = 'sigla_igreja'
    end
    object strngfldQryListagemsite: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'site'
      Origin = 'site'
      Size = 50
    end
    object strngfldQryListagememail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 50
    end
    object strngfldQryListagemcnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cnpj'
      Origin = 'cnpj'
      Size = 50
    end
    object strngfldQryListagemlogradouro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 50
    end
    object strngfldQryListagembairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 50
    end
    object strngfldQryListagemuf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf'
      Origin = 'uf'
      Size = 2
    end
    object strngfldQryListagemfone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fone'
      Origin = 'fone'
      Size = 25
    end
    object blbfldQryListagemfoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'foto'
      Origin = 'foto'
    end
    object intgrfldQryListagempercentual_ajuste: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'percentual_ajuste'
      Origin = 'percentual_ajuste'
    end
    object intgrfldQryListagemsistema: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'sistema'
      Origin = 'sistema'
    end
  end
  inherited dtsListagem: TDataSource
    Left = 160
    Top = 0
  end
  object pmFoto: TPopupMenu
    Left = 640
    Top = 56
    object CarregarImagem1: TMenuItem
      Caption = 'Carregar Imagem'
    end
    object LimparImagem1: TMenuItem
      Caption = 'Limpar Imagem'
    end
  end
end
