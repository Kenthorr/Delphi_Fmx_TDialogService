unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls,
  FMX.DialogService;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Rectangle1: TRectangle;
    procedure Button1Click(Sender: TObject);
  private
    { D�clarations priv�es }

    procedure ChangerCouleur ;

  public
    { D�clarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
begin
  TDialogService.PreferredMode:=TDialogService.TPreferredMode.Sync;
  TDialogService.MessageDialog('�tes-vous certain de vouloir changer de couleur ?', TMsgDlgType.mtConfirmation,
  [ TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo ], TMsgDlgBtn.mbYes, 0,
  procedure(const AResult: TModalResult)
  begin
    case AResult of
      mrYes:    ChangerCouleur ;
      mrNo: //
    end;
  end);
end;

procedure TForm1.ChangerCouleur ;
begin
  if Rectangle1.Fill.Color = TAlphaColors.Aqua then begin
    Rectangle1.Fill.Color := TAlphaColors.Green ;
    Exit ;
  end;

  if Rectangle1.Fill.Color = TAlphaColors.Green then begin
    Rectangle1.Fill.Color := TAlphaColors.Fuchsia ;
    Exit ;
  end;

  if Rectangle1.Fill.Color = TAlphaColors.Fuchsia then begin
    Rectangle1.Fill.Color := TAlphaColors.Mediumslateblue ;
    Exit ;
  end;

  if Rectangle1.Fill.Color = TAlphaColors.Mediumslateblue then begin
    Rectangle1.Fill.Color := TAlphaColors.Orangered ;
    Exit ;
  end;

  if Rectangle1.Fill.Color = TAlphaColors.Orangered then begin
    Rectangle1.Fill.Color := TAlphaColors.Aqua ;
    Exit ;
  end;
end;

end.
