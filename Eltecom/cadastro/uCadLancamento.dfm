inherited frmCadLancamento: TfrmCadLancamento
  Caption = 'Lan'#231'amento de Entradas / Sa'#237'das'
  ClientWidth = 736
  ExplicitWidth = 742
  ExplicitHeight = 485
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    Width = 736
    ExplicitLeft = 8
    ExplicitTop = 30
    ExplicitWidth = 736
    inherited tabListagem: TTabSheet
      inherited pnlListagem: TPanel
        Width = 728
      end
      inherited grdListagem: TDBGrid
        Width = 728
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
      ExplicitTop = 22
      ExplicitWidth = 792
      ExplicitHeight = 390
      object pnl1: TPanel
        Left = 3
        Top = 3
        Width = 781
        Height = 65
        TabOrder = 0
        object lbl1: TLabel
          Left = 489
          Top = 7
          Width = 23
          Height = 13
          Caption = 'Data'
        end
        object lbl2: TLabel
          Left = 655
          Top = 5
          Width = 20
          Height = 13
          Caption = 'Tipo'
        end
        object lbl3: TLabel
          Left = 580
          Top = 7
          Width = 24
          Height = 13
          Caption = 'Valor'
        end
        object cbbTipo: TComboBox
          Tag = 2
          Left = 655
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
          Left = 580
          Top = 24
          Width = 65
          Height = 21
          DisplayFormat = '0.00;-0.00'
          TabOrder = 3
        end
        object dtdtData: TDateEdit
          Left = 489
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
          Width = 278
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
    Width = 736
    inherited btnNavigator: TDBNavigator
      Left = 413
      Hints.Strings = ()
      ExplicitLeft = 413
    end
    inherited btnCancelar: TBitBtn
      TabOrder = 4
    end
    inherited btnApagar: TBitBtn
      TabOrder = 5
    end
    inherited btnFechar: TBitBtn
      Left = 644
      TabOrder = 6
    end
    inherited btnGravar: TBitBtn
      TabOrder = 3
    end
  end
  inherited QryListagem: TFDQuery
    Active = True
    SQL.Strings = (
      
        'SELECT cod_entrada, nro_documento, dta_movimento, dta_inclusao, ' +
        'usuario_inclusao, descricao, valor, tipo, status, cod_congregaca' +
        'o, situacao'
      'FROM igreja.tb_tesouraria;')
    Left = 584
    Top = 208
    object fdtncfldQryListagemcod_entrada: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_entrada'
      Origin = 'cod_entrada'
      ProviderFlags = [pfInWhere, pfInKey]
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
