inherited frmCadLancamento: TfrmCadLancamento
  Caption = 'Lan'#231'amento de Entradas / Sa'#237'das'
  ClientWidth = 727
  ExplicitWidth = 733
  ExplicitHeight = 485
  PixelsPerInch = 96
  TextHeight = 13
  object lbl4: TLabel [0]
    Left = 474
    Top = 23
    Width = 81
    Height = 13
    Caption = 'Data Nascimento'
  end
  inherited pgcPrincipal: TPageControl
    Width = 727
    ExplicitWidth = 736
    inherited tabListagem: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 728
      ExplicitHeight = 390
      inherited pnlListagem: TPanel
        Width = 719
        Height = 89
        ExplicitWidth = 728
        ExplicitHeight = 89
        inherited lblIndice: TLabel
          Top = 8
          ExplicitTop = 8
        end
        object lblDataNascimento: TLabel [1]
          Left = 370
          Top = 7
          Width = 53
          Height = 13
          Caption = 'Data Inicial'
        end
        object lbl5: TLabel [2]
          Left = 470
          Top = 9
          Width = 48
          Height = 13
          Caption = 'Data Final'
        end
        object lbl6: TLabel [3]
          Left = 16
          Top = 51
          Width = 67
          Height = 24
          Caption = 'Per'#237'odo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        inherited mskPesquisar: TMaskEdit
          Top = 24
          Width = 226
          ExplicitTop = 24
          ExplicitWidth = 226
        end
        inherited btnPesquisar: TBitBtn
          Top = 22
          ExplicitTop = 22
        end
        object dtdtIni: TDateEdit
          Left = 370
          Top = 26
          Width = 84
          Height = 21
          Hint = 'Data Inicial'
          ClickKey = 114
          DialogTitle = 'Selecione a Data'
          NumGlyphs = 2
          CalendarStyle = csDialog
          TabOrder = 2
          Text = '01/04/2019'
        end
        object dtdtFim: TDateEdit
          Left = 470
          Top = 26
          Width = 84
          Height = 21
          Hint = 'Data Finaal'
          ClickKey = 114
          DialogTitle = 'Selecione a Data'
          NumGlyphs = 2
          CalendarStyle = csDialog
          TabOrder = 3
          Text = '10/04/2019'
        end
        object btnBuscar: TBitBtn
          Left = 560
          Top = 22
          Width = 49
          Height = 25
          Caption = 'Buscar'
          TabOrder = 4
          OnClick = btnBuscarClick
        end
        object btnImprimir: TBitBtn
          Left = 632
          Top = 22
          Width = 49
          Height = 25
          Caption = 'Imprimir'
          TabOrder = 5
          OnClick = btnImprimirClick
        end
        object mmoSemana: TMemo
          Left = 121
          Top = 51
          Width = 121
          Height = 24
          Alignment = taRightJustify
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Lines.Strings = (
            '01 a 30 /2019')
          ParentFont = False
          TabOrder = 6
        end
      end
      inherited grdListagem: TDBGrid
        Top = 89
        Width = 719
        Height = 301
        DataSource = dtsListagem
        Columns = <
          item
            Expanded = False
            FieldName = 'cod_entrada'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nro_documento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dta_movimento'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tipo'
            Width = 69
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 728
      ExplicitHeight = 390
      object pnl1: TPanel
        Left = 3
        Top = 3
        Width = 781
        Height = 65
        TabOrder = 0
        object lbl1: TLabel
          Left = 471
          Top = 5
          Width = 23
          Height = 13
          Caption = 'Data'
        end
        object lbl2: TLabel
          Left = 637
          Top = 5
          Width = 20
          Height = 13
          Caption = 'Tipo'
        end
        object lbl3: TLabel
          Left = 562
          Top = 7
          Width = 24
          Height = 13
          Caption = 'Valor'
        end
        object cbbTipo: TComboBox
          Tag = 2
          Left = 637
          Top = 24
          Width = 69
          Height = 21
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 4
          Text = 'ENTRADA'
          OnKeyPress = cbbTipoKeyPress
          Items.Strings = (
            'ENTRADA'
            'SAIDA')
        end
        object crncydtValor: TCurrencyEdit
          Left = 562
          Top = 24
          Width = 65
          Height = 21
          DisplayFormat = '0.00;-0.00'
          TabOrder = 3
        end
        object dtdtData: TDateEdit
          Left = 471
          Top = 24
          Width = 84
          Height = 21
          Hint = 'Data de abertura como Sub Congrega'#231#227'o.'
          ClickKey = 114
          DialogTitle = 'Selecione a Data'
          NumGlyphs = 2
          CalendarStyle = csDialog
          TabOrder = 2
        end
        object lbledtCodTalao: TLabeledEdit
          Tag = 2
          Left = 64
          Top = 24
          Width = 129
          Height = 21
          EditLabel.Width = 128
          EditLabel.Height = 13
          EditLabel.Caption = 'N'#186' do Tal'#227'o ou Documento'
          NumbersOnly = True
          TabOrder = 0
        end
        object lbledtDescricao: TLabeledEdit
          Tag = 2
          Left = 201
          Top = 24
          Width = 264
          Height = 21
          CharCase = ecUpperCase
          EditLabel.Width = 46
          EditLabel.Height = 13
          EditLabel.Caption = 'Descri'#231#227'o'
          TabOrder = 1
        end
        object lbledtCodigo: TLabeledEdit
          Tag = 1
          Left = 5
          Top = 23
          Width = 52
          Height = 21
          EditLabel.Width = 33
          EditLabel.Height = 13
          EditLabel.Caption = 'C'#243'digo'
          NumbersOnly = True
          TabOrder = 5
        end
      end
    end
  end
  inherited pnlRodape: TPanel
    Width = 727
    ExplicitWidth = 736
    inherited btnNavigator: TDBNavigator
      Left = 413
      Hints.Strings = ()
      ExplicitLeft = 413
    end
    inherited btnFechar: TBitBtn
      Left = 635
      ExplicitLeft = 644
    end
  end
  inherited QryListagem: TFDQuery
    Active = True
    SQL.Strings = (
      'SELECT t.cod_entrada, t.nro_documento, t.dta_movimento'
      ', t.dta_inclusao, t.usuario_inclusao'
      ', t.descricao, t.valor, t.tipo, t.status'
      ', t.cod_congregacao, t.situacao'
      
        'FROM tb_tesouraria t join tb_parametro_sistema a on a.cod_congre' +
        'gacao = t.cod_congregacao where t.dta_movimento between '
      ':dtini'
      'and '
      ':dtfim')
    Left = 584
    Top = 208
    ParamData = <
      item
        Name = 'DTINI'
        DataType = ftDate
        ParamType = ptInput
        Value = 43466d
      end
      item
        Name = 'DTFIM'
        DataType = ftDate
        ParamType = ptInput
        Value = 43586d
      end>
    object fdtncfldQryListagemcod_entrada: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_entrada'
      Origin = 'cod_entrada'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object intgrfldQryListagemnro_documento: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#186' Documento'
      FieldName = 'nro_documento'
      Origin = 'nro_documento'
    end
    object dtfldQryListagemdta_movimento: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data'
      FieldName = 'dta_movimento'
      Origin = 'dta_movimento'
    end
    object dtmfldQryListagemdta_inclusao: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'dta_inclusao'
      Origin = 'dta_inclusao'
    end
    object strngfldQryListagemusuario_inclusao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'usuario_inclusao'
      Origin = 'usuario_inclusao'
      Size = 50
    end
    object strngfldQryListagemdescricao: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 50
    end
    object fltfldQryListagemvalor: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Origin = 'valor'
      currency = True
    end
    object strngfldQryListagemtipo: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo'
      FieldName = 'tipo'
      Origin = 'tipo'
    end
    object strngfldQryListagemstatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = '`status`'
    end
    object intgrfldQryListagemcod_congregacao: TIntegerField
      FieldName = 'cod_congregacao'
      Origin = 'cod_congregacao'
      Required = True
    end
    object intgrfldQryListagemsituacao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'situacao'
      Origin = 'situacao'
    end
  end
  inherited dtsListagem: TDataSource
    Left = 584
    Top = 280
  end
end
