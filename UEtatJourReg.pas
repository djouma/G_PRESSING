unit UEtatJourReg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, DBCtrls, OButton, ExtCtrls,
  Menus;

type
  TFEtatJourReg = class(TForm)
    Panel3: TPanel;
    LbDateJ: TLabel;
    Panel4: TPanel;
    OfficeButton2: TOfficeButton;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    Fichier1: TMenuItem;
    Fermer1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure OfficeButton2Click(Sender: TObject);
    procedure Fermer1Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  FEtatJourReg: TFEtatJourReg;

implementation

uses UDmPressing, UQrEtatJourReg;

{$R *.dfm}

procedure TFEtatJourReg.FormShow(Sender: TObject);
begin
LbDateJ.Caption:='De la journ�e du '+FormatDateTime('dddddd',(date));
with DmPressing
do begin
QReglementJournalier.Close;
   QReglementJournalier.ParamByName('d1').AsDateTime:= date();
      QReglementJournalier.ParamByName('d2').AsDateTime:= date();
   QReglementJournalier.Open;

   QReglementJournaliertotal.Close;
   QReglementJournaliertotal.ParamByName('d1').AsDateTime:= date();
      QReglementJournaliertotal.ParamByName('d2').AsDateTime:= date();
   QReglementJournaliertotal.Open;
end;
end;

procedure TFEtatJourReg.OfficeButton2Click(Sender: TObject);
begin
QrEtatJourReg.Preview;
end;

procedure TFEtatJourReg.Fermer1Click(Sender: TObject);
begin
Close;
end;

end.
