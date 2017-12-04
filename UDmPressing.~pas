unit UDmPressing;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDmPressing = class(TDataModule)
    Database1: TDatabase;
    TLinge: TTable;
    DsTLinge: TDataSource;
    DsTDepot: TDataSource;
    Tuser: TTable;
    Quser: TQuery;
    TClient: TTable;
    DsTClient: TDataSource;
    TClientNUMCLI: TIntegerField;
    TClientCODEQUART: TIntegerField;
    TClientNOMCLI: TStringField;
    TClientPRENOMCLI: TStringField;
    TClientSEXECLI: TStringField;
    TClientDATENAISSCLI: TDateTimeField;
    TClientTELCLI: TStringField;
    TClientADRESSECLI: TStringField;
    TQuartier: TTable;
    DsTQuartier: TDataSource;
    QRechClient: TQuery;
    DsQRechClient: TDataSource;
    TTypeTraitement: TTable;
    DsTTypeTraitement: TDataSource;
    TQuartierCODEQUART: TIntegerField;
    TQuartierLIBQUART: TStringField;
    TQuartier2: TTable;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    TLingeIDLINGE: TStringField;
    TLingeIDTYPELINGE: TStringField;
    TLingeLIBLINGE: TStringField;
    TLingePRIXTRAITLINGE: TFloatField;
    TTypeTraitementIDTYPETRAIT: TIntegerField;
    TTypeTraitementLIBTYPETRAIT: TStringField;
    TTypeTraitementTAUXTRAIT: TIntegerField;
    TIntervenir: TTable;
    TIntervenirIDDEP: TIntegerField;
    TIntervenirIDLINGE: TStringField;
    TIntervenirIDTYPETRAIT: TIntegerField;
    TIntervenirNOMBRELINGE: TIntegerField;
    TIntervenirPRIXTRAIT: TFloatField;
    TIntervenirDATEPROLIV: TDateTimeField;
    TIntervenirDATELIVEFF: TDateTimeField;
    TIntervenirLIVRE: TBooleanField;
    TIntervenirMONTANT: TFloatField;
    TClient2: TTable;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    DateTimeField1: TDateTimeField;
    StringField5: TStringField;
    StringField6: TStringField;
    TReglement: TTable;
    DsTReglement: TDataSource;
    QRechClientDepot: TQuery;
    DsQRechClientDepot: TDataSource;
    TuserMATGEST: TStringField;
    TuserIDGP: TIntegerField;
    TuserNOMGEST: TStringField;
    TuserPRENOMGEST: TStringField;
    TuserSEXEGEST: TStringField;
    TuserTELGEST: TStringField;
    TuserLoginGest: TStringField;
    TuserPasswordGest: TStringField;
    TReglementIDREG: TIntegerField;
    TReglementIDDEP: TIntegerField;
    TReglementMATGEST: TStringField;
    TReglementDATEREG: TDateTimeField;
    TReglementMODEREG: TStringField;
    TReglementMONTANTREG: TFloatField;
    QRecuDepot: TQuery;
    DsQRecuDepot: TDataSource;
    QRecuDepot1: TQuery;
    DsQRecuDepot1: TDataSource;
    DsQDepotjourTotal: TDataSource;
    QDepotjourTotal: TQuery;
    QDepotjourTotalsumtotal: TFloatField;
    QReglementJournalier: TQuery;
    DsQReglementJournalier: TDataSource;
    QReglementJournaliertotal: TQuery;
    DsQReglementJournaliertotal: TDataSource;
    QReglementJournalierIDDEP: TIntegerField;
    QReglementJournalierDATEDEP: TDateTimeField;
    QReglementJournalierTOTALDEP: TFloatField;
    QReglementJournalierIDREG: TIntegerField;
    QReglementJournalierMONTANTREG: TFloatField;
    QReglementJournaliertotalSumMontantreg: TFloatField;
    QReglementJournaliertotalSumTotDep: TFloatField;
    QReglementJournaliertotalSumTotRestant: TFloatField;
    QReglementJournalierRESTANT: TFloatField;
    DsQrLivraison: TDataSource;
    QrDepotjour: TQuery;
    IntegerField4: TIntegerField;
    DateTimeField2: TDateTimeField;
    FloatField1: TFloatField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    DsQrDepotjour: TDataSource;
    QUpdatePass: TQuery;
    QRechClientDepotNUMCLI: TIntegerField;
    QRechClientDepotCODEQUART: TIntegerField;
    QRechClientDepotNOMCLI: TStringField;
    QRechClientDepotPRENOMCLI: TStringField;
    QRechClientDepotSEXECLI: TStringField;
    QRechClientDepotDATENAISSCLI: TDateTimeField;
    QRechClientDepotTELCLI: TStringField;
    QRechClientDepotADRESSECLI: TStringField;
    QRechClientDepotIDDEP: TIntegerField;
    QRechClientDepotNUMCLI_1: TIntegerField;
    QRechClientDepotMATGEST: TStringField;
    QRechClientDepotLIBDEP: TStringField;
    QRechClientDepotDATEDEP: TDateTimeField;
    QRechClientDepotTOTALDEP: TFloatField;
    QRechClientDepotAPAYER: TFloatField;
    QRechClientDepotRESTANT: TFloatField;
    QrLivraison: TQuery;
    QrLivraisonIDDEP: TIntegerField;
    QrLivraisonTOTALDEP: TFloatField;
    QrLivraisonNOMCLI: TStringField;
    QrLivraisonPRENOMCLI: TStringField;
    QrLivraisonTELCLI: TStringField;
    QrLivraisonDATELIVEFF: TDateTimeField;
    QrLivraisonDATEPROLIV: TDateTimeField;
    QrLivraisonIDLINGE: TStringField;
    QrLivraisonLIBLINGE: TStringField;
    QRecuDepotNOMCLI: TStringField;
    QRecuDepotPRENOMCLI: TStringField;
    QRecuDepotLIBTYPETRAIT: TStringField;
    QRecuDepotIDDEP: TIntegerField;
    QRecuDepotDATEDEP: TDateTimeField;
    QRecuDepotMONTANT: TFloatField;
    QRecuDepotTOTALDEP: TFloatField;
    QRecuDepotLIBLINGE: TStringField;
    TDepot: TTable;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    StringField11: TStringField;
    StringField12: TStringField;
    DateTimeField3: TDateTimeField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    QRecuReglement: TQuery;
    DsQRecuReglement: TDataSource;
    QRecuReglementNOMCLI: TStringField;
    QRecuReglementPRENOMCLI: TStringField;
    QRecuReglementTELCLI: TStringField;
    QRecuReglementIDDEP: TIntegerField;
    QRecuReglementDATEDEP: TDateTimeField;
    QRecuReglementTOTALDEP: TFloatField;
    QRecuReglementRESTANT: TFloatField;
    QRecuReglementDATEREG: TDateTimeField;
    QRecuReglementMODEREG: TStringField;
    QRecuReglementMONTANTREG: TFloatField;
    QRecuReglementIDREG: TIntegerField;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  DmPressing: TDmPressing;

implementation

{$R *.dfm}

end.
