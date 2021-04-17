program EmbarcRegex;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {RegexToolForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TRegexToolForm, RegexToolForm);
  Application.Run;
end.
