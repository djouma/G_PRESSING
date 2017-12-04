unit UConnexion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, OButton, StdCtrls, jpeg;

type
  TFConnect = class(TForm)
    LbConnect: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    EdLogin: TEdit;
    EdPassword: TEdit;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    BtQuitter: TOfficeButton;
    BtConnecter: TOfficeButton;
    StMessage: TStatusBar;
    Bevel1: TBevel;
    Timer1: TTimer;
    Image1: TImage;
    procedure Timer1Timer(Sender: TObject);
    procedure BtQuitterClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtConnecterClick(Sender: TObject);
    procedure EdLoginKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPasswordKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  //  procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FConnect: TFConnect;

implementation

uses UDmPressing, UMenuGen, DateUtils;

{$R *.dfm}

procedure TFConnect.Timer1Timer(Sender: TObject);
begin
LbConnect.Left:= LbConnect.Left-1;
if LbConnect.Left =-LbConnect.Width
then
LbConnect.Left:=FConnect.ClientWidth
end;

procedure TFConnect.BtQuitterClick(Sender: TObject);
begin
Close;
end;

procedure TFConnect.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TFConnect.BtConnecterClick(Sender: TObject);
begin
   if EdLogin.Text=''
   then
    begin
    StMessage.Panels[0].Text:='veuillez renseigner le login utilisateur';
    EdLogin.SetFocus;
   exit;
   end;
   if EdPassword.Text=''
   then
   begin
   StMessage.Panels[0].Text:='veuillez renseigner le password utilisateur';
   EdPassword.SetFocus;
    exit;
   end;
   DmPressing.TUser.Open;
   if not DmPressing.TUser.Locate('LoginGest',EdLogin.Text,[])
   then
    begin
      StMessage.Panels[0].Text:='Login incorrect,réessayer';
      EdLogin.Clear;
      EdLogin.SetFocus;
    exit;
    end;
    if not DmPressing.TUser.Locate('PasswordGest',EdPassword.Text,[])
    then
    begin
      StMessage.Panels[0].Text:='Password incorrect,réessayer';
      EdPassword.Clear;
      EdPassword.SetFocus;
    exit;
    end;
    With DmPressing
          do begin
    QUser.Close;
    QUser.SQL.Clear;
    QUser.SQL.Add('Select * from Gestionnaire');
    QUser.SQL.Add('where LoginGest= :p1 and PasswordGest= :p2');
    QUser.ParamByName('p1').AsString:=EdLogin.Text;
    QUser.ParamByName('p2').AsString:=EdPassword.Text;
    QUser.Open;
    if QUser.IsEmpty
    then
    StMessage.Panels[0].Text:=('Information d''identification incorrect, revoir la saisie')
        else
        begin
    FConnect.Hide;
    FMenuGen.ShowModal;
    end;
   end;
   end;



procedure TFConnect.EdLoginKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF KEY =vk_return
then
BtConnecterClick(self);
end;

procedure TFConnect.EdPasswordKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF KEY =vk_return
then
BtConnecterClick(self);
end;

end.
