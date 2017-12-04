unit UEtatPeriodiqueDep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, OButton, Menus;

type
  TFEtatPeriodiqueDep = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Date1: TDateTimePicker;
    Date2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    BtImprimer: TOfficeButton;
    MainMenu1: TMainMenu;
    Fichier1: TMenuItem;
    Fermer1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure BtImprimerClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FEtatPeriodiqueDep: TFEtatPeriodiqueDep;

implementation

uses UDmPressing, UEtatJournalier;

{$R *.dfm}

procedure TFEtatPeriodiqueDep.FormShow(Sender: TObject);
begin
//LbDateJ.Caption:='De la journée du '+FormatDateTime('dddddd',(date));
with DmPressing
do begin
QrDepotjour.Close;
   QrDepotjour.ParamByName('d1').AsDateTime:= date();
      QrDepotjour.ParamByName('d2').AsDateTime:= date();
   QrDepotjour.Open;

   QDepotjourTotal.Close;
   QDepotjourTotal.ParamByName('d1').AsDateTime:= date();
      QDepotjourTotal.ParamByName('d2').AsDateTime:= date();
   QDepotjourTotal.Open;
end;
end;

procedure TFEtatPeriodiqueDep.BtImprimerClick(Sender: TObject);
begin
  with DmPressing
do begin
QrDepotjour.Close;
   QrDepotjour.ParamByName('d1').AsDateTime:= Date1.Date;
      QrDepotjour.ParamByName('d2').AsDateTime:= date2.Date;
   QrDepotjour.Open;

   QDepotjourTotal.Close;
   QDepotjourTotal.ParamByName('d1').AsDateTime:= date1.Date;
      QDepotjourTotal.ParamByName('d2').AsDateTime:= date2.Date;
   QDepotjourTotal.Open;
   if QrDepotjour.IsEmpty
   then
   ShowMessage('Impossible d''édité l''état')
   else
   begin
   QrEtatJournalier.QrTitre.Caption:='ETAT PERIODIQUE DES DEPOTS' ;
    QrEtatJournalier.QrTitre2.Caption:='Du ' +DateToStr(date1.Date) +' au ' +DateToStr(date2.Date) ;
    QrEtatJournalier.Preview;
    end;
end;
end;

end.
