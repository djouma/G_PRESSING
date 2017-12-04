object DmPressing: TDmPressing
  OldCreateOrder = False
  Left = 453
  Top = 259
  Height = 407
  Width = 868
  object Database1: TDatabase
    AliasName = 'ODBC_BD_PRESSING'
    Connected = True
    DatabaseName = 'BD_PRESSING'
    LoginPrompt = False
    Params.Strings = (
      'DATABASE NAME='
      'USER NAME=sa'
      'ODBC DSN=ODBC_BD_PRESSING'
      'OPEN MODE=READ/WRITE'
      'SCHEMA CACHE SIZE=8'
      'SQLQRYMODE='
      'LANGDRIVER='
      'SQLPASSTHRU MODE=SHARED AUTOCOMMIT'
      'SCHEMA CACHE TIME=-1'
      'MAX ROWS=-1'
      'BATCH COUNT=200'
      'ENABLE SCHEMA CACHE=FALSE'
      'SCHEMA CACHE DIR='
      'ENABLE BCD=FALSE'
      'ROWSET SIZE=20'
      'BLOBS TO CACHE=64'
      'PASSWORD=12345')
    SessionName = 'Default'
    Left = 24
    Top = 16
  end
  object TLinge: TTable
    DatabaseName = 'BD_PRESSING'
    TableName = 'dbo.LINGE'
    Left = 88
    Top = 16
    object TLingeIDLINGE: TStringField
      FieldName = 'IDLINGE'
      Required = True
      Size = 8
    end
    object TLingeIDTYPELINGE: TStringField
      FieldName = 'IDTYPELINGE'
      Required = True
      Size = 8
    end
    object TLingeLIBLINGE: TStringField
      FieldName = 'LIBLINGE'
      Required = True
      Size = 30
    end
    object TLingePRIXTRAITLINGE: TFloatField
      FieldName = 'PRIXTRAITLINGE'
    end
  end
  object DsTLinge: TDataSource
    DataSet = TLinge
    Left = 88
    Top = 64
  end
  object DsTDepot: TDataSource
    Left = 152
    Top = 64
  end
  object Tuser: TTable
    DatabaseName = 'BD_PRESSING'
    TableName = 'dbo.GESTIONNAIRE'
    Left = 24
    Top = 112
    object TuserMATGEST: TStringField
      FieldName = 'MATGEST'
      Required = True
      Size = 8
    end
    object TuserIDGP: TIntegerField
      FieldName = 'IDGP'
      Required = True
    end
    object TuserNOMGEST: TStringField
      FieldName = 'NOMGEST'
      Required = True
      Size = 15
    end
    object TuserPRENOMGEST: TStringField
      FieldName = 'PRENOMGEST'
    end
    object TuserSEXEGEST: TStringField
      FieldName = 'SEXEGEST'
      Required = True
      FixedChar = True
      Size = 1
    end
    object TuserTELGEST: TStringField
      FieldName = 'TELGEST'
      Required = True
    end
    object TuserLoginGest: TStringField
      FieldName = 'LoginGest'
      Required = True
    end
    object TuserPasswordGest: TStringField
      FieldName = 'PasswordGest'
      Required = True
    end
  end
  object Quser: TQuery
    DatabaseName = 'BD_PRESSING'
    Left = 80
    Top = 120
  end
  object TClient: TTable
    DatabaseName = 'BD_PRESSING'
    TableName = 'dbo.CLIENT'
    Left = 128
    Top = 120
    object TClientNUMCLI: TIntegerField
      FieldName = 'NUMCLI'
    end
    object TClientCODEQUART: TIntegerField
      FieldName = 'CODEQUART'
      Required = True
    end
    object TClientNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Required = True
      Size = 30
    end
    object TClientPRENOMCLI: TStringField
      FieldName = 'PRENOMCLI'
      Size = 30
    end
    object TClientSEXECLI: TStringField
      FieldName = 'SEXECLI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object TClientDATENAISSCLI: TDateTimeField
      FieldName = 'DATENAISSCLI'
    end
    object TClientTELCLI: TStringField
      FieldName = 'TELCLI'
      Required = True
      Size = 15
    end
    object TClientADRESSECLI: TStringField
      FieldName = 'ADRESSECLI'
      Required = True
      Size = 60
    end
  end
  object DsTClient: TDataSource
    DataSet = TClient
    Left = 216
    Top = 120
  end
  object TQuartier: TTable
    DatabaseName = 'BD_PRESSING'
    TableName = 'dbo.QUARTIER'
    Left = 208
    Top = 16
    object TQuartierCODEQUART: TIntegerField
      FieldName = 'CODEQUART'
    end
    object TQuartierLIBQUART: TStringField
      FieldName = 'LIBQUART'
      Required = True
      Size = 15
    end
  end
  object DsTQuartier: TDataSource
    DataSet = TQuartier
    Left = 216
    Top = 64
  end
  object QRechClient: TQuery
    DatabaseName = 'BD_PRESSING'
    SQL.Strings = (
      'Select *'
      'From Client'
      'where nomcli like :p1 or prenomcli like :p1;')
    Left = 288
    Top = 120
    ParamData = <
      item
        DataType = ftString
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'p1'
        ParamType = ptUnknown
      end>
  end
  object DsQRechClient: TDataSource
    DataSet = QRechClient
    Left = 288
    Top = 64
  end
  object TTypeTraitement: TTable
    DatabaseName = 'BD_PRESSING'
    TableName = 'dbo.TYPE_TRAITEMENT'
    Left = 280
    Top = 16
    object TTypeTraitementIDTYPETRAIT: TIntegerField
      FieldName = 'IDTYPETRAIT'
      Required = True
    end
    object TTypeTraitementLIBTYPETRAIT: TStringField
      FieldName = 'LIBTYPETRAIT'
      Required = True
      Size = 15
    end
    object TTypeTraitementTAUXTRAIT: TIntegerField
      FieldName = 'TAUXTRAIT'
    end
  end
  object DsTTypeTraitement: TDataSource
    DataSet = TTypeTraitement
    Left = 368
    Top = 16
  end
  object TQuartier2: TTable
    DatabaseName = 'BD_PRESSING'
    TableName = 'dbo.QUARTIER'
    Left = 352
    Top = 64
    object IntegerField1: TIntegerField
      FieldName = 'CODEQUART'
    end
    object StringField1: TStringField
      FieldName = 'LIBQUART'
      Required = True
      Size = 15
    end
  end
  object TIntervenir: TTable
    DatabaseName = 'BD_PRESSING'
    TableName = 'dbo.INTERVENIR'
    Left = 352
    Top = 120
    object TIntervenirIDDEP: TIntegerField
      FieldName = 'IDDEP'
      Required = True
    end
    object TIntervenirIDLINGE: TStringField
      FieldName = 'IDLINGE'
      Required = True
      Size = 8
    end
    object TIntervenirIDTYPETRAIT: TIntegerField
      FieldName = 'IDTYPETRAIT'
      Required = True
    end
    object TIntervenirNOMBRELINGE: TIntegerField
      FieldName = 'NOMBRELINGE'
    end
    object TIntervenirPRIXTRAIT: TFloatField
      FieldName = 'PRIXTRAIT'
    end
    object TIntervenirDATEPROLIV: TDateTimeField
      FieldName = 'DATEPROLIV'
    end
    object TIntervenirDATELIVEFF: TDateTimeField
      FieldName = 'DATELIVEFF'
    end
    object TIntervenirLIVRE: TBooleanField
      FieldName = 'LIVRE'
    end
    object TIntervenirMONTANT: TFloatField
      FieldName = 'MONTANT'
    end
  end
  object TClient2: TTable
    DatabaseName = 'BD_PRESSING'
    TableName = 'dbo.CLIENT'
    Left = 168
    Top = 120
    object IntegerField2: TIntegerField
      FieldName = 'NUMCLI'
    end
    object IntegerField3: TIntegerField
      FieldName = 'CODEQUART'
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'NOMCLI'
      Required = True
      Size = 30
    end
    object StringField3: TStringField
      FieldName = 'PRENOMCLI'
      Size = 30
    end
    object StringField4: TStringField
      FieldName = 'SEXECLI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'DATENAISSCLI'
    end
    object StringField5: TStringField
      FieldName = 'TELCLI'
      Required = True
      Size = 15
    end
    object StringField6: TStringField
      FieldName = 'ADRESSECLI'
      Required = True
      Size = 60
    end
  end
  object TReglement: TTable
    DatabaseName = 'BD_PRESSING'
    TableName = 'dbo.REGLEMENT'
    Left = 24
    Top = 168
    object TReglementIDREG: TIntegerField
      FieldName = 'IDREG'
    end
    object TReglementIDDEP: TIntegerField
      FieldName = 'IDDEP'
      Required = True
    end
    object TReglementMATGEST: TStringField
      FieldName = 'MATGEST'
      Required = True
      Size = 8
    end
    object TReglementDATEREG: TDateTimeField
      FieldName = 'DATEREG'
      Required = True
    end
    object TReglementMODEREG: TStringField
      FieldName = 'MODEREG'
      Required = True
      Size = 10
    end
    object TReglementMONTANTREG: TFloatField
      FieldName = 'MONTANTREG'
      Required = True
    end
  end
  object DsTReglement: TDataSource
    DataSet = TReglement
    Left = 96
    Top = 168
  end
  object QRechClientDepot: TQuery
    DatabaseName = 'BD_PRESSING'
    SQL.Strings = (
      'SELECT *'
      'FROM CLIENT C, DEPOT D'
      'WHERE C.NUMCLI=D.NUMCLI'
      'and D.restant <>0'
      'and nomcli like :p1'
      'union'
      'SELECT *'
      'FROM CLIENT C, DEPOT D'
      'WHERE C.NUMCLI=D.NUMCLI'
      'and D.restant <>0'
      'and prenomcli like :p1;')
    Left = 192
    Top = 168
    ParamData = <
      item
        DataType = ftString
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'p1'
        ParamType = ptUnknown
      end>
    object QRechClientDepotNUMCLI: TIntegerField
      FieldName = 'NUMCLI'
      Origin = 'BD_PRESSING.CLIENT.NUMCLI'
    end
    object QRechClientDepotCODEQUART: TIntegerField
      FieldName = 'CODEQUART'
      Origin = 'BD_PRESSING.CLIENT.CODEQUART'
    end
    object QRechClientDepotNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Origin = 'BD_PRESSING.CLIENT.NOMCLI'
      Size = 30
    end
    object QRechClientDepotPRENOMCLI: TStringField
      FieldName = 'PRENOMCLI'
      Origin = 'BD_PRESSING.CLIENT.PRENOMCLI'
      Size = 30
    end
    object QRechClientDepotSEXECLI: TStringField
      FieldName = 'SEXECLI'
      Origin = 'BD_PRESSING.CLIENT.SEXECLI'
      FixedChar = True
      Size = 1
    end
    object QRechClientDepotDATENAISSCLI: TDateTimeField
      FieldName = 'DATENAISSCLI'
      Origin = 'BD_PRESSING.CLIENT.DATENAISSCLI'
    end
    object QRechClientDepotTELCLI: TStringField
      FieldName = 'TELCLI'
      Origin = 'BD_PRESSING.CLIENT.TELCLI'
      Size = 15
    end
    object QRechClientDepotADRESSECLI: TStringField
      FieldName = 'ADRESSECLI'
      Origin = 'BD_PRESSING.CLIENT.ADRESSECLI'
      Size = 60
    end
    object QRechClientDepotIDDEP: TIntegerField
      FieldName = 'IDDEP'
      Origin = 'BD_PRESSING.CLIENT.ADRESSECLI'
    end
    object QRechClientDepotNUMCLI_1: TIntegerField
      FieldName = 'NUMCLI_1'
      Origin = 'BD_PRESSING.CLIENT.ADRESSECLI'
    end
    object QRechClientDepotMATGEST: TStringField
      FieldName = 'MATGEST'
      Origin = 'BD_PRESSING.CLIENT.ADRESSECLI'
      Size = 8
    end
    object QRechClientDepotLIBDEP: TStringField
      FieldName = 'LIBDEP'
      Origin = 'BD_PRESSING.CLIENT.ADRESSECLI'
      Size = 15
    end
    object QRechClientDepotDATEDEP: TDateTimeField
      FieldName = 'DATEDEP'
      Origin = 'BD_PRESSING.CLIENT.ADRESSECLI'
    end
    object QRechClientDepotTOTALDEP: TFloatField
      FieldName = 'TOTALDEP'
      Origin = 'BD_PRESSING.CLIENT.ADRESSECLI'
    end
    object QRechClientDepotAPAYER: TFloatField
      FieldName = 'APAYER'
      Origin = 'BD_PRESSING.CLIENT.ADRESSECLI'
    end
    object QRechClientDepotRESTANT: TFloatField
      FieldName = 'RESTANT'
      Origin = 'BD_PRESSING.CLIENT.ADRESSECLI'
    end
  end
  object DsQRechClientDepot: TDataSource
    DataSet = QRechClientDepot
    Left = 296
    Top = 168
  end
  object QRecuDepot: TQuery
    DatabaseName = 'BD_PRESSING'
    SQL.Strings = (
      
        'SELECT C.NOMCLI,C.PRENOMCLI,T.LIBTYPETRAIT,D.IDDEP,D.DATEDEP,I.M' +
        'ONTANT,D.TOTALDEP, L.LIBLINGE'
      'FROM CLIENT C, DEPOT D, TYPE_TRAITEMENT T, INTERVENIR I, LINGE L'
      'WHERE D.NUMCLI=C.NUMCLI'
      ' AND D.IDDEP=I.IDDEP'
      ' AND T.IDTYPETRAIT=I.IDTYPETRAIT'
      ' AND L.IDLINGE=I.IDLINGE'
      'AND D.IDDEP= :C1'
      ' ORDER BY D.DATEDEP;')
    Left = 24
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C1'
        ParamType = ptUnknown
      end>
    object QRecuDepotNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Origin = 'BD_PRESSING.CLIENT.NOMCLI'
      Size = 30
    end
    object QRecuDepotPRENOMCLI: TStringField
      FieldName = 'PRENOMCLI'
      Origin = 'BD_PRESSING.CLIENT.PRENOMCLI'
      Size = 30
    end
    object QRecuDepotLIBTYPETRAIT: TStringField
      FieldName = 'LIBTYPETRAIT'
      Origin = 'BD_PRESSING.TYPE_TRAITEMENT.LIBTYPETRAIT'
      Size = 15
    end
    object QRecuDepotIDDEP: TIntegerField
      FieldName = 'IDDEP'
      Origin = 'BD_PRESSING.DEPOT.IDDEP'
    end
    object QRecuDepotDATEDEP: TDateTimeField
      FieldName = 'DATEDEP'
      Origin = 'BD_PRESSING.DEPOT.DATEDEP'
    end
    object QRecuDepotMONTANT: TFloatField
      FieldName = 'MONTANT'
      Origin = 'BD_PRESSING.INTERVENIR.MONTANT'
    end
    object QRecuDepotTOTALDEP: TFloatField
      FieldName = 'TOTALDEP'
      Origin = 'BD_PRESSING.DEPOT.TOTALDEP'
      DisplayFormat = '### ### ###'
    end
    object QRecuDepotLIBLINGE: TStringField
      FieldName = 'LIBLINGE'
      Origin = 'BD_PRESSING.LINGE.LIBLINGE'
      Size = 30
    end
  end
  object DsQRecuDepot: TDataSource
    DataSet = QRecuDepot
    Left = 104
    Top = 232
  end
  object QRecuDepot1: TQuery
    DatabaseName = 'BD_PRESSING'
    SQL.Strings = (
      'SELECT SUM(D.TOTALDEP) as Sommetotal'
      'FROM CLIENT C, DEPOT D, TYPE_TRAITEMENT T, INTENVENIR I, LINGE L'
      'WHERE D.NUMCLI=C.NUMCLI'
      ' AND D.IDDEP=I.IDDEP'
      ' AND T.IDTYPETRAIT=I.IDTYPETRAIT'
      ' AND L.IDLINGE=I.IDLINGE'
      'AND D.IDDEP= :C1;')
    Left = 280
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C1'
        ParamType = ptUnknown
      end>
  end
  object DsQRecuDepot1: TDataSource
    DataSet = QRecuDepot1
    Left = 192
    Top = 232
  end
  object DsQDepotjourTotal: TDataSource
    DataSet = QDepotjourTotal
    Left = 504
    Top = 200
  end
  object QDepotjourTotal: TQuery
    DatabaseName = 'BD_PRESSING'
    SQL.Strings = (
      'select SUM(d.totaldep) as sumtotal'
      'FROM DEPOT D, CLIENT C,LINGE L, INTERVENIR I'
      'WHERE D.NUMCLI=C.NUMCLI'
      'AND'
      'I.IDDEP=D.IDDEP'
      'AND'
      'L.IDLINGE=I.IDLINGE'
      'and d.datedep between :d1 and :d2'
      'order by 1;')
    Left = 488
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'd1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'd2'
        ParamType = ptUnknown
      end>
    object QDepotjourTotalsumtotal: TFloatField
      FieldName = 'sumtotal'
      DisplayFormat = '### ### ###'
    end
  end
  object QReglementJournalier: TQuery
    DatabaseName = 'BD_PRESSING'
    SQL.Strings = (
      
        'SELECT D.IDDEP, D.DATEDEP, D.TOTALDEP, R.IDREG, R.MONTANTREG, D.' +
        'RESTANT'
      'FROM DEPOT D, REGLEMENT R'
      'WHERE D.IDDEP=R.IDDEP'
      'and R.DATEREG between :d1 and :d2'
      'ORDER BY D.DATEDEP;')
    Left = 600
    Top = 40
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'd1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'd2'
        ParamType = ptUnknown
      end>
    object QReglementJournalierIDDEP: TIntegerField
      DisplayWidth = 12
      FieldName = 'IDDEP'
      Origin = 'BD_PRESSING.DEPOT.IDDEP'
    end
    object QReglementJournalierDATEDEP: TDateTimeField
      DisplayWidth = 22
      FieldName = 'DATEDEP'
      Origin = 'BD_PRESSING.DEPOT.DATEDEP'
    end
    object QReglementJournalierTOTALDEP: TFloatField
      DisplayWidth = 12
      FieldName = 'TOTALDEP'
      Origin = 'BD_PRESSING.DEPOT.TOTALDEP'
    end
    object QReglementJournalierIDREG: TIntegerField
      DisplayWidth = 12
      FieldName = 'IDREG'
      Origin = 'BD_PRESSING.REGLEMENT.IDREG'
    end
    object QReglementJournalierMONTANTREG: TFloatField
      DisplayWidth = 17
      FieldName = 'MONTANTREG'
      Origin = 'BD_PRESSING.REGLEMENT.MONTANTREG'
    end
    object QReglementJournalierRESTANT: TFloatField
      FieldName = 'RESTANT'
      Origin = 'BD_PRESSING.DEPOT.RESTANT'
    end
  end
  object DsQReglementJournalier: TDataSource
    DataSet = QReglementJournalier
    Left = 600
    Top = 88
  end
  object QReglementJournaliertotal: TQuery
    DatabaseName = 'BD_PRESSING'
    SQL.Strings = (
      
        'SELECT SUM(D.TOTALDEP) as SumTotDep,SUM(D.RESTANT) as SumTotRest' +
        'ant ,SUM( R.MONTANTREG) as SumMontantreg'
      'FROM DEPOT D, REGLEMENT R'
      'WHERE D.IDDEP=R.IDDEP'
      'and R.DATEREG between :d1 and :d2'
      'ORDER BY 1;')
    Left = 624
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'd1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'd2'
        ParamType = ptUnknown
      end>
    object QReglementJournaliertotalSumMontantreg: TFloatField
      FieldName = 'SumMontantreg'
      Origin = 'BD_PRESSING.REGLEMENT.MONTANTREG'
      DisplayFormat = '### ### ###'
    end
    object QReglementJournaliertotalSumTotDep: TFloatField
      FieldName = 'SumTotDep'
      Origin = 'BD_PRESSING.DEPOT.TOTALDEP'
      DisplayFormat = '### ### ###'
    end
    object QReglementJournaliertotalSumTotRestant: TFloatField
      FieldName = 'SumTotRestant'
      Origin = 'BD_PRESSING.DEPOT.RESTANT'
      DisplayFormat = '### ### ###'
    end
  end
  object DsQReglementJournaliertotal: TDataSource
    DataSet = QReglementJournaliertotal
    Left = 640
    Top = 200
  end
  object DsQrLivraison: TDataSource
    DataSet = QrLivraison
    Left = 712
    Top = 8
  end
  object QrDepotjour: TQuery
    DatabaseName = 'BD_PRESSING'
    SQL.Strings = (
      
        'SELECT D.IDDEP, D.DATEDEP, D.TOTALDEP, C.NOMCLI, C.PRENOMCLI, C.' +
        'TELCLI, L.LIBLINGE'
      'FROM DEPOT D, CLIENT C,LINGE L, INTERVENIR I'
      'WHERE D.NUMCLI=C.NUMCLI'
      'AND'
      'I.IDDEP=D.IDDEP'
      'AND'
      'L.IDLINGE=I.IDLINGE'
      'and D.DATEDEP between :d1 and :d2'
      'order by D.DATEDEP;')
    Left = 456
    Top = 24
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'd1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'd2'
        ParamType = ptUnknown
      end>
    object IntegerField4: TIntegerField
      DisplayWidth = 12
      FieldName = 'IDDEP'
      Origin = 'BD_PRESSING.DEPOT.IDDEP'
    end
    object DateTimeField2: TDateTimeField
      DisplayWidth = 14
      FieldName = 'DATEDEP'
      Origin = 'BD_PRESSING.DEPOT.DATEDEP'
    end
    object FloatField1: TFloatField
      DisplayWidth = 12
      FieldName = 'TOTALDEP'
      Origin = 'BD_PRESSING.DEPOT.TOTALDEP'
      DisplayFormat = '### ### ###'
    end
    object StringField7: TStringField
      DisplayWidth = 29
      FieldName = 'NOMCLI'
      Origin = 'BD_PRESSING.CLIENT.NOMCLI'
      Size = 30
    end
    object StringField8: TStringField
      DisplayWidth = 25
      FieldName = 'PRENOMCLI'
      Origin = 'BD_PRESSING.CLIENT.PRENOMCLI'
      Size = 30
    end
    object StringField9: TStringField
      DisplayWidth = 22
      FieldName = 'TELCLI'
      Origin = 'BD_PRESSING.CLIENT.TELCLI'
      Size = 15
    end
    object StringField10: TStringField
      DisplayWidth = 30
      FieldName = 'LIBLINGE'
      Origin = 'BD_PRESSING.LINGE.LIBLINGE'
      Size = 30
    end
  end
  object DsQrDepotjour: TDataSource
    DataSet = QrDepotjour
    Left = 456
    Top = 72
  end
  object QUpdatePass: TQuery
    DatabaseName = 'BD_PRESSING'
    SQL.Strings = (
      'update gestionnaire'
      'set PasswordGest =:p1'
      'where MATGEST =:p2;')
    Left = 528
    Top = 264
    ParamData = <
      item
        DataType = ftString
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'p2'
        ParamType = ptUnknown
      end>
  end
  object QrLivraison: TQuery
    DatabaseName = 'BD_PRESSING'
    SQL.Strings = (
      
        'select D.IDDEP, D.TOTALDEP,  C.NOMCLI, C.PRENOMCLI, C.TELCLI, I.' +
        'DATELIVEFF, I.DATEPROLIV,I.IDLINGE,LIBLINGE'
      'from INTERVENIR I, DEPOT D, CLIENT C, LINGE L'
      'WHERE '
      'D.IDDEP=I.IDDEP'
      'AND C.NUMCLI=D.NUMCLI'
      ''
      ' and D.restant=0'
      ' and LIVRE='#39'false'#39
      'and nomcli like :p1 '
      ''
      'UNION'
      ''
      
        'select D.IDDEP, D.TOTALDEP,  C.NOMCLI, C.PRENOMCLI, C.TELCLI, I.' +
        'DATELIVEFF, I.DATEPROLIV,I.IDLINGE,LIBLINGE'
      'from INTERVENIR I, DEPOT D, CLIENT C, LINGE L'
      'WHERE '
      'D.IDDEP=I.IDDEP'
      'AND C.NUMCLI=D.NUMCLI'
      ''
      ' and D.restant=0'
      ' and LIVRE='#39'false'#39
      'AND prenomcli like :p1;')
    Left = 776
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'p1'
        ParamType = ptUnknown
      end>
    object QrLivraisonIDDEP: TIntegerField
      FieldName = 'IDDEP'
    end
    object QrLivraisonTOTALDEP: TFloatField
      FieldName = 'TOTALDEP'
      DisplayFormat = '### ### ###'
    end
    object QrLivraisonNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 30
    end
    object QrLivraisonPRENOMCLI: TStringField
      FieldName = 'PRENOMCLI'
      Size = 30
    end
    object QrLivraisonTELCLI: TStringField
      FieldName = 'TELCLI'
      Size = 15
    end
    object QrLivraisonDATELIVEFF: TDateTimeField
      FieldName = 'DATELIVEFF'
    end
    object QrLivraisonDATEPROLIV: TDateTimeField
      FieldName = 'DATEPROLIV'
    end
    object QrLivraisonIDLINGE: TStringField
      FieldName = 'IDLINGE'
      Size = 8
    end
    object QrLivraisonLIBLINGE: TStringField
      FieldName = 'LIBLINGE'
      Size = 30
    end
  end
  object TDepot: TTable
    DatabaseName = 'BD_PRESSING'
    TableName = 'dbo.DEPOT'
    Left = 152
    Top = 16
    object IntegerField5: TIntegerField
      FieldName = 'IDDEP'
    end
    object IntegerField6: TIntegerField
      FieldName = 'NUMCLI'
      Required = True
    end
    object StringField11: TStringField
      FieldName = 'MATGEST'
      Required = True
      Size = 8
    end
    object StringField12: TStringField
      FieldName = 'LIBDEP'
      Required = True
      Size = 15
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'DATEDEP'
      Required = True
    end
    object FloatField2: TFloatField
      FieldName = 'TOTALDEP'
    end
    object FloatField3: TFloatField
      FieldName = 'APAYER'
    end
    object FloatField4: TFloatField
      FieldName = 'RESTANT'
    end
  end
  object QRecuReglement: TQuery
    DatabaseName = 'BD_PRESSING'
    SQL.Strings = (
      
        'select C.NOMCLI,C.PRENOMCLI,C.TELCLI,D.IDDEP,D.DATEDEP,D.TOTALDE' +
        'P,D.RESTANT,R.DATEREG,R.MODEREG,R.MONTANTREG, R.IDREG'
      'from CLIENT C, REGLEMENT R, DEPOT D'
      'WHERE C.NUMCLI=D.NUMCLI'
      'AND R.IDDEP=D.IDDEP'
      'AND R.IDREG = :p1'
      'order by 2;')
    Left = 400
    Top = 168
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p1'
        ParamType = ptUnknown
      end>
    object QRecuReglementNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Origin = 'BD_PRESSING.CLIENT.NOMCLI'
      Size = 30
    end
    object QRecuReglementPRENOMCLI: TStringField
      FieldName = 'PRENOMCLI'
      Origin = 'BD_PRESSING.CLIENT.PRENOMCLI'
      Size = 30
    end
    object QRecuReglementTELCLI: TStringField
      FieldName = 'TELCLI'
      Origin = 'BD_PRESSING.CLIENT.TELCLI'
      Size = 15
    end
    object QRecuReglementIDDEP: TIntegerField
      FieldName = 'IDDEP'
      Origin = 'BD_PRESSING.DEPOT.IDDEP'
    end
    object QRecuReglementDATEDEP: TDateTimeField
      FieldName = 'DATEDEP'
      Origin = 'BD_PRESSING.DEPOT.DATEDEP'
    end
    object QRecuReglementTOTALDEP: TFloatField
      FieldName = 'TOTALDEP'
      Origin = 'BD_PRESSING.DEPOT.TOTALDEP'
    end
    object QRecuReglementRESTANT: TFloatField
      FieldName = 'RESTANT'
      Origin = 'BD_PRESSING.DEPOT.RESTANT'
    end
    object QRecuReglementDATEREG: TDateTimeField
      FieldName = 'DATEREG'
      Origin = 'BD_PRESSING.REGLEMENT.DATEREG'
    end
    object QRecuReglementMODEREG: TStringField
      FieldName = 'MODEREG'
      Origin = 'BD_PRESSING.REGLEMENT.MODEREG'
      Size = 10
    end
    object QRecuReglementMONTANTREG: TFloatField
      FieldName = 'MONTANTREG'
      Origin = 'BD_PRESSING.REGLEMENT.MONTANTREG'
    end
    object QRecuReglementIDREG: TIntegerField
      FieldName = 'IDREG'
      Origin = 'BD_PRESSING.REGLEMENT.IDREG'
    end
  end
  object DsQRecuReglement: TDataSource
    DataSet = QRecuReglement
    Left = 392
    Top = 232
  end
end
