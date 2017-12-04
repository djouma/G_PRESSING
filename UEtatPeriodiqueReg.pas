unit UEtatPeriodiqueReg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, OButton, StdCtrls, ExtCtrls, Menus;

type
  TFEtatPeriodiqueReg = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    BtImprimer: TOfficeButton;
    Date1: TDateTimePicker;
    Date2: TDateTimePicker;
    MainMenu1: TMainMenu;
    Fichier1: TMenuItem;
    Fermer1: TMenuItem;
    procedure BtImprimerClick(Sender: TObject);
    procedure Fermer1Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  FEtatPeriodiqueReg: TFEtatPeriodiqueReg;

implementation

uses UDmPressing, UQrEtatJourReg;

{$R *.dfm}

procedure TFEtatPeriodiqueReg.BtImprimerClick(Sender: TObject);
begin
with DmPressing
do begin
QReglementJournalier.Close;
   QReglementJournalier.ParamByName('d1').AsDateTime:= date1.Date;
      QReglementJournalier.ParamByName('d2').AsDateTime:= date2.Date;
   QReglementJournalier.Open;

   QReglementJournaliertotal.Close;
   QReglementJournaliertotal.ParamByName('d1').AsDateTime:= date1.Date;
      QReglementJournaliertotal.ParamByName('d2').AsDateTime:= date2.Date;
   QReglementJournaliertotal.Open;
   if QReglementJournalier.IsEmpty
   then
   ShowMessage('Impossible d''�dit� l''�tat')
   else
   begin
   Qretatjourreg.Titre1.Caption:='ETAT PERIODIQUE DES REGLEMENTS' ;
    Qretatjourreg.Titre2.Caption:='Du ' +DateToStr(date1.Date) +' au ' +DateToStr(date2.Date) ;
    Qretatjourreg.Preview;
    end;
end;
end;

procedure TFEtatPeriodiqueReg.Fermer1Click(Sender: TObject);
begin
close;
end;

end.
