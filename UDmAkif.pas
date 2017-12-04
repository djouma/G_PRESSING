unit UDmAkif;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDmAkif = class(TDataModule)
    DBakif: TDatabase;
    TClient: TTable;
    TClientNOMCLIENT: TStringField;
    TClientPRENOMCLIENT: TStringField;
    TClientTELCLIENT: TStringField;
    TClientadressclient: TStringField;
    DSClient: TDataSource;
    DSCommande: TDataSource;
    TType: TTable;
    DSType: TDataSource;
    TServeur: TTable;
    TServeurIDSERVEUR: TStringField;
    TServeurNOMSERVEUR: TStringField;
    TServeurPRENOMSERV: TStringField;
    TServeurTELSERV: TStringField;
    TServeurADRESSESERV: TStringField;
    TServeurSEXE: TStringField;
    TTable: TTable;
    DSTable: TDataSource;
    DSServeur: TDataSource;
    QRechClient: TQuery;
    TClientIDCLIENT: TIntegerField;
    Tplat: TTable;
    DSRechClient: TDataSource;
    TUtil: TTable;
    QUtil: TQuery;
    TUtilNumutil: TIntegerField;
    TUtilUtilLogin: TStringField;
    TUtilUtilPasword: TStringField;
    TUtilUtilGroup: TStringField;
    QRechClientNOMCLIENT: TStringField;
    QRechClientPRENOMCLIENT: TStringField;
    QRechClientTELCLIENT: TStringField;
    QRechClientadressclient: TStringField;
    QRechClientidclient: TIntegerField;
    QRechPlat: TQuery;
    DSRechPlat: TDataSource;
    Ttypeplat: TTable;
    DSTypeplat: TDataSource;
    TplatIDPLAT: TStringField;
    TplatLIBELLEPLAT: TStringField;
    TplatPRIXPLAT: TFloatField;
    Tplatidtypeplat: TIntegerField;
    TConserner: TTable;
    TConsernerIDPLAT: TStringField;
    TConsernerQUANTITE: TStringField;
    TConsernerMONTANT: TFloatField;
    TConsernerIDCOM: TIntegerField;
    Ttypeplatidtypeplat: TIntegerField;
    TtypeplatLibelleTypeplat: TStringField;
    TTableIDTABLE: TStringField;
    TTableLIBELLETABLE: TStringField;
    TCommande: TTable;
    TCommandeIDTYPECOM: TStringField;
    TCommandeIDSERVEUR: TStringField;
    TCommandeIDTABLE: TStringField;
    TCommandeDATECOM: TDateTimeField;
    TCommandeNumutil: TIntegerField;
    TCommandeIDCLIENT: TIntegerField;
    TCommandeIDCOM: TIntegerField;
    TCommandeLIVRER: TStringField;
    QRechCmde: TQuery;
    DSRechCmde: TDataSource;
    QRechCmdeIDTYPECOM: TStringField;
    QRechCmdeIDSERVEUR: TStringField;
    QRechCmdeIDTABLE: TStringField;
    QRechCmdeDATECOM: TDateTimeField;
    QRechCmdeNumutil: TIntegerField;
    QRechCmdeIDCLIENT: TIntegerField;
    QRechCmdeIDCOM: TIntegerField;
    QRechCmdeLIVRER: TStringField;
    QRechCmdeLIVRE: TStringField;
    Ttypecom: TTable;
    QCmdeFacture: TQuery;
    TCommandeMontantTotal: TFloatField;
    QRechPlatIDPLAT: TStringField;
    QRechPlatLIBELLEPLAT: TStringField;
    QRechPlatPRIXPLAT: TFloatField;
    QRechPlatidtypeplat: TIntegerField;
    QRechPlatLibelleTypeplat: TStringField;
    QCmdePer: TQuery;
    DsQCmdePer: TDataSource;
    QCmdePerTot: TQuery;
    DsQCmdePerTot: TDataSource;
    QCmdePerTotTOTAL: TFloatField;
    QCmdePerIdcom: TIntegerField;
    QCmdePerDATECOM: TDateTimeField;
    QCmdePerLIBELLETYPE: TStringField;
    QCmdePerNOMCLIENT: TStringField;
    QCmdePerPRENOMCLIENT: TStringField;
    QCmdePerTELCLIENT: TStringField;
    QCmdePermontanttotal: TFloatField;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  DmAkif: TDmAkif;

implementation

{$R *.dfm}

end.
