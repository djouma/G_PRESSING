program Project1;

uses
  Forms,
  ULinge in 'ULinge.pas' {FEnregLinge},
  UDmPressing in 'UDmPressing.pas' {DmPressing: TDataModule},
  UReglement in 'UReglement.pas' {FReg};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFEnregLinge, FEnregLinge);
  Application.CreateForm(TFReg, FReg);
  Application.CreateForm(TDmPressing, DmPressing);
  Application.Run;
end.
