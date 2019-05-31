object frmRelDept: TfrmRelDept
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rios'
  ClientHeight = 72
  ClientWidth = 236
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 22
    Top = 8
    Width = 185
    Height = 19
    Caption = 'Selecione o Departamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dblkcbbDepartamentos: TDBLookupComboBox
    Left = 28
    Top = 33
    Width = 179
    Height = 21
    KeyField = 'codigo'
    ListField = 'departamento'
    ListSource = dsDepartamentos
    TabOrder = 0
    OnClick = dblkcbbDepartamentosClick
  end
  object fdqryDepartamentos: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      
        'select cod_departamento as codigo, nome_departamento as departam' +
        'ento from tb_departamento')
    Left = 368
    Top = 96
  end
  object dsDepartamentos: TDataSource
    DataSet = fdqryDepartamentos
    Left = 368
    Top = 24
  end
end
