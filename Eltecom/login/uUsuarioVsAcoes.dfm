object frmUsuarioVsAcoes: TfrmUsuarioVsAcoes
  Left = 0
  Top = 0
  Caption = 'Usu'#225'rio VS A'#231#245'es'
  ClientHeight = 455
  ClientWidth = 534
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object spl1: TSplitter
    Left = 185
    Top = 0
    Height = 414
    ExplicitLeft = 392
    ExplicitTop = 152
    ExplicitHeight = 100
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 185
    Height = 414
    Align = alLeft
    TabOrder = 0
    object dbgrdUsuarios: TDBGrid
      Left = 1
      Top = 1
      Width = 183
      Height = 412
      Align = alClient
      DataSource = dsUsuarios
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'codigo'
          Width = 41
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'usuario'
          Width = 103
          Visible = True
        end>
    end
  end
  object pnl2: TPanel
    Left = 188
    Top = 0
    Width = 346
    Height = 414
    Align = alClient
    TabOrder = 1
    object dbgrdAcoes: TDBGrid
      Left = 1
      Top = 1
      Width = 344
      Height = 412
      Align = alClient
      DataSource = dsAcoes
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = dbgrdAcoesDrawColumnCell
      OnDblClick = dbgrdAcoesDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'cod_usuario'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'cod_acao_acesso'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Width = 281
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ativo'
          Visible = False
        end>
    end
  end
  object pnl3: TPanel
    Left = 0
    Top = 414
    Width = 534
    Height = 41
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      534
      41)
    object btnFechar: TBitBtn
      Left = 448
      Top = 6
      Width = 78
      Height = 25
      Anchors = [akTop, akRight, akBottom]
      Caption = '&Fechar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFB9B8B8BABABAB3B2B2B3B2B2BAB9B9B9B8B8FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB3B2B2BCBABAD8D5D5D6D2D2CE
        CACAC9C4C4C4BEBEBCB6B6B4B2B2B3B2B2FF00FFFF00FFFF00FFFF00FFFF00FF
        AAA9A9DDDCDCD8D6DF817FBD4E4DC16B6BD96A6AD25151C68582B8C0BBBBB7B2
        B2AAA9A9FF00FFFF00FFFF00FFB4B3B3EEEEEEBBB8D42B2BC55A5AED9393F6A9
        A9F8ABABF89393F75555EF302EC0B0ABB6B8B3B3B3B2B2FF00FFFF00FFC8C7C7
        E0DFE62222BD3C3CD63E3EB24848C38C8CF58D8DF54949C33F3FB23F3FD92929
        BCC4BFBFB5B3B3FF00FFCBCACAECECEC7D7CC92929D35959BCCACACAACACC73A
        3ABC3B3BBCACACC7CACACA5555B82020D57472B8C2BDBDCCCBCBC5C4C4E4E3E3
        1F1FBD2323BA2626B1ACACC7C6C6C6B0B0CAB0B0CAC6C6C6ACACC72424AE2323
        BF2A2AB7CCC8C8C2C2C2B9B8B8CFCECE1313C21212A91E1EB82020ABAFAFCACE
        CECECECECEAFAFCA2121AB1F1FBA1414AC0505B4D3CFCFB4B3B3B9B8B8CCCBCB
        7777D66868D93838CA2020ABC7C7E1E9E9E9E9E9E9C7C7E12121AB3D3DCB6E6E
        DC4747C8D9D6D6B4B3B3BBBABAD6D6D67676CA8383DF3939B6CFCFEAFEFEFECF
        CFEACFCFEAFEFEFECFCFEA3535B28B8BE17B7AC2E4E1E1BABABAB8B8B8D5D5D5
        9291C5A1A1E67F7FCAFEFEFECFCFEA4242BF4242BFCFCFEAFEFEFE7878C6A2A2
        E78382BBE6E5E5B9B8B8FF00FFBEBEBEC5C5CE8484D08484D47979C66D6DCF7E
        7EDB7E7EDB6868CC7979C68787D68181C7E5E4EDBEBEBEFF00FFFF00FFB3B2B2
        D3D3D3C4C4CB8E8ED3B4B4E8A9A9E3A2A2E1A3A3E1ACACE4B5B5E8908FCDBDBC
        D6EDEDEDB4B3B3FF00FFFF00FFFF00FFACACACD3D3D3D3D3D8B7B6D7A8A8DC9E
        9EDA9D9DDAA4A3DBAFAED6E1E1E6E7E7E7ACABABFF00FFFF00FFFF00FFFF00FF
        FF00FFB3B2B2C2C1C1D4D4D4D9D9D9DFDEDEE0E0E0E3E3E3E3E3E3C5C5C5B4B3
        B3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC2C1C1BEBDBDB4
        B3B3B4B3B3BDBCBCC2C1C1FF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 0
      OnClick = btnFecharClick
    end
    object btnAtualizar: TBitBtn
      Left = 8
      Top = 6
      Width = 171
      Height = 25
      Caption = 'Atualizar Lista de Permiss'#245'es'
      TabOrder = 1
      OnClick = btnAtualizarClick
    end
  end
  object fdqryUsuarios: TFDQuery
    AfterScroll = fdqryUsuariosAfterScroll
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT codigo, usuario'
      'FROM tb_usuario')
    Left = 376
    Top = 192
    object fdtncfldUsuarioscodigo: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object strngfldUsuariosusuario: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'usuario'
      Origin = 'usuario'
      Size = 12
    end
  end
  object fdqryAcoes: TFDQuery
    Active = True
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select ua.cod_usuario'
      ',ua.cod_acao_acesso'
      ',a.descricao'
      ',ua.ativo'
      ' from tb_usuarios_acao_acesso ua'
      
        'inner join tb_acao_acesso a on a.cod_acao_acesso = ua.cod_acao_a' +
        'cesso'
      'where ua.cod_usuario =:cod_usuario')
    Left = 408
    Top = 56
    ParamData = <
      item
        Name = 'COD_USUARIO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object intgrfldAcoescod_usuario: TIntegerField
      DisplayLabel = 'C'#243'digo Usu'#225'rio'
      FieldName = 'cod_usuario'
      Origin = 'cod_usuario'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object intgrfldAcoescod_acao_acesso: TIntegerField
      DisplayLabel = 'C'#243'digo A'#231#227'o'
      FieldName = 'cod_acao_acesso'
      Origin = 'cod_acao_acesso'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object strngfldAcoesdescricao: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Origin = 'descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object blnfldAcoesativo: TBooleanField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Ativo'
      FieldName = 'ativo'
      Origin = 'ativo'
    end
  end
  object dsUsuarios: TDataSource
    DataSet = fdqryUsuarios
    Left = 408
    Top = 120
  end
  object dsAcoes: TDataSource
    DataSet = fdqryAcoes
    Left = 424
    Top = 200
  end
end
