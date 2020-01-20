object dtmGrafico: TdtmGrafico
  OldCreateOrder = False
  Height = 337
  Width = 650
  object fdqryPessoas: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select count(*) as qtd,membro_congregado as tipo from tb_pessoa '
      
        'where cod_congregacao=:cod_congregacao group by membro_congregad' +
        'o')
    Left = 72
    Top = 128
    ParamData = <
      item
        Name = 'COD_CONGREGACAO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 2
      end>
  end
  object fdqryDizimosAnual: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select x.ano,x.mes,sum(x.valor)as valor,'
      #9'     case when x.mes = 1 then '#39'Jan'#39' '
      'when x.mes = 2 then '#39'Fev'#39' '
      ' when x.mes = 3 then '#39'Mar'#39' '
      ' when x.mes = 4 then '#39'Abr'#39' '
      ' when x.mes = 5 then '#39'Mai'#39' '
      ' when x.mes = 6 then '#39'Jun'#39' '
      ' when x.mes = 7 then '#39'Jul'#39' '
      ' when x.mes = 8 then '#39'Ago'#39' '
      ' when x.mes = 9 then '#39'Set'#39' '
      ' when x.mes = 10 then '#39'Out'#39' '
      ' when x.mes = 11 then '#39'Nov'#39' '
      ' when x.mes = 12 then '#39'Dez'#39' END as sigla'
      'from (select '
      'year(a.data) AS ano'
      ',month(a.data) AS mes'
      ',sum(a.valor) AS valor '
      
        'from tb_dizimista a where a.cod_congregacao=:cod_congregacao and' +
        ' (year(a.data) = year(sysdate())) '
      'group by year(a.data),month(a.data)'
      'union'
      'select year(sysdate()) ,1 ,0 from dual '
      'union'
      'select year(sysdate()) ,2 ,0 from dual '
      'union'
      'select year(sysdate()) ,3 ,0 from dual '
      'union'
      'select year(sysdate()) ,4 ,0 from dual '
      'union'
      'select year(sysdate()) ,5 ,0 from dual '
      'union'
      'select year(sysdate()) ,6 ,0 from dual '
      'union'
      'select year(sysdate()) ,7 ,0 from dual '
      'union'
      'select year(sysdate()) ,8 ,0 from dual '
      'union'
      'select year(sysdate()) ,9 ,0 from dual '
      'union'
      'select year(sysdate()) ,10 ,0 from dual '
      'union'
      'select year(sysdate()) ,11,0 from dual '
      'union'
      'select year(sysdate())  ,12,0 from dual )x group by x.ano,x.mes'
      'order by x.mes')
    Left = 80
    Top = 40
    ParamData = <
      item
        Name = 'COD_CONGREGACAO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 12
      end>
    object fdqryDizimosAnualano: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ano'
      Origin = 'ano'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqryDizimosAnualmes: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'mes'
      Origin = 'mes'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqryDizimosAnualvalor: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqryDizimosAnualsigla: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sigla'
      Origin = 'sigla'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
  end
  object fdqryClassesAlunos: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select count(a.cod_aluno) as qtd,a.classe from tb_classe_aluno a'
      'inner join tb_pessoa b on b.cod_pessoa = a.cod_aluno'
      'where b.cod_congregacao=:cod_congregacao'
      'group by classe')
    Left = 232
    Top = 40
    ParamData = <
      item
        Name = 'COD_CONGREGACAO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 4
      end>
    object lrgntfldClassesAlunosqtd: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'qtd'
      Origin = 'qtd'
      ProviderFlags = []
      ReadOnly = True
    end
    object strngfldClassesAlunosclasse: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'classe'
      Origin = 'classe'
      Size = 50
    end
  end
  object fdqryPessoasCargos: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      
        'select count(COD_CARG_PESSOA) as qtd,concat(count(COD_CARG_PESSO' +
        'A),'#39' - '#39',CARGO)as CARGO from tb_obreiro_cargo'
      'where cod_congregacao=:cod_congregacao'
      'group by CARGO'
      'union all'
      
        'select count(a.cod_pessoa) as qtd, concat(count(a.cod_pessoa),'#39' ' +
        '- '#39',a.membro_congregado) as tipo from tb_pessoa a'
      
        'where a.cod_pessoa not in (select COD_MEMBRO  from tb_obreiro_ca' +
        'rgo where cod_congregacao=:cod_congregacao)'
      'and cod_congregacao=:cod_congregacao'
      'group by a.membro_congregado')
    Left = 384
    Top = 56
    ParamData = <
      item
        Name = 'COD_CONGREGACAO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 4
      end>
  end
  object fdqryEntrasAnual: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select x.ano,x.mes,sum(x.valor)as valor,'
      #9'     case when x.mes = 1 then '#39'Jan'#39' '
      'when x.mes = 2 then '#39'Fev'#39' '
      ' when x.mes = 3 then '#39'Mar'#39' '
      ' when x.mes = 4 then '#39'Abr'#39' '
      ' when x.mes = 5 then '#39'Mai'#39' '
      ' when x.mes = 6 then '#39'Jun'#39' '
      ' when x.mes = 7 then '#39'Jul'#39' '
      ' when x.mes = 8 then '#39'Ago'#39' '
      ' when x.mes = 9 then '#39'Set'#39' '
      ' when x.mes = 10 then '#39'Out'#39' '
      ' when x.mes = 11 then '#39'Nov'#39' '
      ' when x.mes = 12 then '#39'Dez'#39' END as sigla'
      'from (select '
      'year(a.dta_movimento) AS ano'
      ',month(a.dta_movimento) AS mes'
      ',sum(a.valor) AS valor '
      'from tb_tesouraria a '
      
        'INNER join tb_parametro_sistema b ON a.cod_congregacao = b.cod_c' +
        'ongregacao '
      'where  (YEAR(a.dta_movimento) =  year(sysdate())) '
      'AND a.tipo = '#39'ENTRADA'#39
      'group by year(a.dta_movimento),month(a.dta_movimento)'
      'union'
      'select year(sysdate()) ,1 ,0 from dual '
      'union'
      'select year(sysdate()) ,2 ,0 from dual '
      'union'
      'select year(sysdate()) ,3 ,0 from dual '
      'union'
      'select year(sysdate()) ,4 ,0 from dual '
      'union'
      'select year(sysdate()) ,5 ,0 from dual '
      'union'
      'select year(sysdate()) ,6 ,0 from dual '
      'union'
      'select year(sysdate()) ,7 ,0 from dual '
      'union'
      'select year(sysdate()) ,8 ,0 from dual '
      'union'
      'select year(sysdate()) ,9 ,0 from dual '
      'union'
      'select year(sysdate()) ,10 ,0 from dual '
      'union'
      'select year(sysdate()) ,11,0 from dual '
      'union'
      'select year(sysdate()) ,12,0 from dual )x group by x.ano,x.mes'
      'order by x.mes')
    Left = 72
    Top = 224
    object lrgntfld1: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ano'
      Origin = 'ano'
      ProviderFlags = []
      ReadOnly = True
    end
    object lrgntfld2: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'mes'
      Origin = 'mes'
      ProviderFlags = []
      ReadOnly = True
    end
    object fltfld1: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
      ProviderFlags = []
      ReadOnly = True
    end
    object strngfld1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sigla'
      Origin = 'sigla'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
  end
  object fdqrySaidasAnual: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select x.ano,x.mes,sum(x.valor)as valor,'
      #9'     case when x.mes = 1 then '#39'Jan'#39' '
      'when x.mes = 2 then '#39'Fev'#39' '
      ' when x.mes = 3 then '#39'Mar'#39' '
      ' when x.mes = 4 then '#39'Abr'#39' '
      ' when x.mes = 5 then '#39'Mai'#39' '
      ' when x.mes = 6 then '#39'Jun'#39' '
      ' when x.mes = 7 then '#39'Jul'#39' '
      ' when x.mes = 8 then '#39'Ago'#39' '
      ' when x.mes = 9 then '#39'Set'#39' '
      ' when x.mes = 10 then '#39'Out'#39' '
      ' when x.mes = 11 then '#39'Nov'#39' '
      ' when x.mes = 12 then '#39'Dez'#39' END as sigla'
      'from (select '
      'year(a.dta_movimento) AS ano'
      ',month(a.dta_movimento) AS mes'
      ',sum(a.valor) AS valor '
      'from tb_tesouraria a '
      
        'INNER join tb_parametro_sistema b ON a.cod_congregacao = b.cod_c' +
        'ongregacao '
      'where (YEAR(a.dta_movimento) =  year(sysdate())) '
      'AND a.tipo = '#39'SAIDA'#39
      'group by year(a.dta_movimento),month(a.dta_movimento)'
      'union'
      'select year(sysdate()) ,1 ,0 from dual '
      'union'
      'select year(sysdate()) ,2 ,0 from dual '
      'union'
      'select year(sysdate()) ,3 ,0 from dual '
      'union'
      'select year(sysdate()) ,4 ,0 from dual '
      'union'
      'select year(sysdate()) ,5 ,0 from dual '
      'union'
      'select year(sysdate()) ,6 ,0 from dual '
      'union'
      'select year(sysdate()) ,7 ,0 from dual '
      'union'
      'select year(sysdate()) ,8 ,0 from dual '
      'union'
      'select year(sysdate()) ,9 ,0 from dual '
      'union'
      'select year(sysdate()) ,10 ,0 from dual '
      'union'
      'select year(sysdate()) ,11,0 from dual '
      'union'
      'select year(sysdate()) ,12,0 from dual )x group by x.ano,x.mes'
      'order by x.mes')
    Left = 216
    Top = 224
    object lrgntfld3: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ano'
      Origin = 'ano'
      ProviderFlags = []
      ReadOnly = True
    end
    object lrgntfld4: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'mes'
      Origin = 'mes'
      ProviderFlags = []
      ReadOnly = True
    end
    object fltfld2: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
      ProviderFlags = []
      ReadOnly = True
    end
    object strngfld2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sigla'
      Origin = 'sigla'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
  end
  object fdqryAniverariantesMes: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      
        'select x.cod_pessoa,x.nome_pessoa,x.sexo,x.membro_congregado,x.d' +
        'ta_nascimento, x.idade,x.filtro ,DAYOFMONTH(x.dta_nascimento)dia' +
        ' from ('
      
        'select a.cod_pessoa,a.nome_pessoa,a.sexo,a.membro_congregado,a.d' +
        'ta_nascimento, '
      
        'YEAR(FROM_DAYS(TO_DAYS(NOW())-TO_DAYS(a.dta_nascimento)))as idad' +
        'e , a.membro_congregado as filtro'
      ' from tb_pessoa a '
      
        'inner join tb_parametro_sistema c on c.cod_congregacao =a.cod_co' +
        'ngregacao'
      
        'where Month(a.dta_nascimento) = month(sysdate()) and a.cod_pesso' +
        'a not in (select x.cod_membro from tb_obreiro_cargo x'
      
        'inner join tb_parametro_sistema c on c.cod_congregacao =x.cod_co' +
        'ngregacao)'
      'union all'
      
        'select a.cod_pessoa,a.nome_pessoa,a.sexo,a.membro_congregado,a.d' +
        'ta_nascimento, '
      
        'YEAR(FROM_DAYS(TO_DAYS(NOW())-TO_DAYS(a.dta_nascimento)))as idad' +
        'e , b.cargo'
      ' from tb_pessoa a'
      
        'inner join tb_parametro_sistema c on c.cod_congregacao =a.cod_co' +
        'ngregacao'
      
        'inner join tb_obreiro_cargo b on b.cod_membro = a.cod_pessoa whe' +
        're Month(a.dta_nascimento) = month(sysdate())'
      '  )x'
      'where x.filtro like :filtro'
      'order by dia,x.nome_pessoa'
      ''
      ''
      ''
      '')
    Left = 368
    Top = 217
    ParamData = <
      item
        Name = 'FILTRO'
        DataType = ftString
        ParamType = ptInput
        Value = '%%'
      end>
    object fdtncfldAniverariantescod_pessoa: TFDAutoIncField
      FieldName = 'cod_pessoa'
      Origin = 'cod_pessoa'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object strngfldAniverariantesnome_pessoa: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'nome_pessoa'
      Origin = 'nome_pessoa'
      Size = 50
    end
    object strngfldAniverariantessexo: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sexo'
      FieldName = 'sexo'
      Origin = 'sexo'
      Size = 1
    end
    object strngfldAniverariantesmembro_congregado: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo'
      FieldName = 'membro_congregado'
      Origin = 'membro_congregado'
      Size = 15
    end
    object dtfldAniverariantesdta_nascimento: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data Nascimento'
      FieldName = 'dta_nascimento'
      Origin = 'dta_nascimento'
    end
    object lrgntfldAniverariantesidade: TLargeintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Idade'
      FieldName = 'idade'
      Origin = 'idade'
      ProviderFlags = []
      ReadOnly = True
    end
    object strngfldAniverariantesfiltro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'filtro'
      Origin = 'filtro'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object lrgntfldAniverariantesMesdia: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'dia'
      Origin = 'dia'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dsAniver: TDataSource
    DataSet = fdqryAniverariantesMes
    Left = 480
    Top = 216
  end
end
