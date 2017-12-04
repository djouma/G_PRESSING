unit UClient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, DBCtrls, StdCtrls, Mask, Buttons, jpeg,db;

type
  TFClient = class(TForm)
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    Fichier1: TMenuItem;
    Fermer1: TMenuItem;
    Label1: TLabel;
    DBNumero: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBNom: TDBEdit;
    Label4: TLabel;
    DBPrenom: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBTel: TDBEdit;
    Label8: TLabel;
    DBAdresse: TDBEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    RgSexe: TDBRadioGroup;
    DBQuartier: TDBLookupComboBox;
    BtAjouter: TBitBtn;
    BtValider: TBitBtn;
    BtAnnuler: TBitBtn;
    BtSuppr: TBitBtn;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DBNavigator3: TDBNavigator;
    DBNavigator4: TDBNavigator;
    Button1: TButton;
    Image1: TImage;
    EdDateNaiss: TMaskEdit;
    procedure FormShow(Sender: TObject);
    procedure BtValiderClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BtAjouterClick(Sender: TObject);
    procedure DBNomKeyPress(Sender: TObject; var Key: Char);
    procedure Fermer1Click(Sender: TObject);
    procedure BtAnnulerClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FClient: TFClient;

implementation

uses UDmPressing, UQuartier, DateUtils;

{$R *.dfm}

procedure TFClient.FormShow(Sender: TObject);
begin
DmPressing.TClient.Open;
DmPressing.TQuartier.Open;
end;

procedure TFClient.BtValiderClick(Sender: TObject);
begin


if DBNom.Text=' ' then
    begin
      ShowMessage('Veuillez entrer le Nom');
      DBNom.SetFocus;
      exit;
        end;
      if DBPrenom.Text=' ' then
    begin
      ShowMessage('Veuillez entrer le Prenom');
      DBPrenom.SetFocus;
      exit;
       end;
     //if RgSexe.ItemIndex=-1 then
   // begin
     // ShowMessage('Veuillez entrer le Sexe');
      //RgSexe.SetFocus;
      //exit;
      // end;
     if DBTel.Text=' ' then
    begin
      ShowMessage('Veuillez entrer le Telephone');
      DBTel.SetFocus;
      exit;
      end;
      if DBQuartier.KeyValue=0 then
    begin
      ShowMessage('Veuillez selectionner le Quartier');
      DBQuartier.SetFocus;
      exit;
        end;
     //   if DmPressing.TClient2.Locate('NOMCLI','PRENOMCLI','DATENAISSCLI',VarArrayOf[DBNom.Text;DBPrenom.Text;EdDateNaiss.Text],[locaseinsensitive])
   if DmPressing.TClient2.Locate('NOMCLI;PRENOMCLI;DATENAISSCLI',VarArrayOf([DBNom.Text,DBPrenom.Text,EdDateNaiss.Text]),[locaseinsensitive])

      then
      Begin
      ShowMessage('Ce client existe deja');
      DBNom.Clear;
      DBNom.SetFocus;
      exit;
      end ;
       if (EdDateNaiss.Text)> DateToStr(date())
      then
      begin
      ShowMessage('Date de naissance incorrect');
      EdDateNaiss.Clear;
      EdDateNaiss.SetFocus;
      exit;
      end ;
        DmPressing.TClient.Fields[5].Value:=EdDateNaiss.Text;
    DmPressing.TClient.Post;
      ShowMessage('Le client '+DBNom.Text+ ' est bien enregistre');
      BtAjouter.Enabled:=true;
      BtAnnuler.Enabled:=false;
      BtValider.Enabled:=false;
      BtSuppr.Enabled:=false;
    end;

procedure TFClient.Button1Click(Sender: TObject);
begin
FQuartier.Show;
end;

procedure TFClient.BtAjouterClick(Sender: TObject);
begin
DmPressing.TClient.Insert;
BtAjouter.Enabled:=false;
BtValider.Enabled:=true;
BtAnnuler.Enabled:=true;
end;

procedure TFClient.DBNomKeyPress(Sender: TObject; var Key: Char);
begin
Key:=UpCase(key);
end;

procedure TFClient.Fermer1Click(Sender: TObject);
begin
close;
end;

procedure TFClient.BtAnnulerClick(Sender: TObject);
begin
DmPressing.TClient.Cancel;
      BtAjouter.Enabled:=true;
      BtAnnuler.Enabled:=false;
      BtValider.Enabled:=false;
      BtSuppr.Enabled:=false;
end;

procedure TFClient.FormActivate(Sender: TObject);
begin
With DmPressing do
begin
TClient2.Open;
TClient.Open;
end;
end;

end.
