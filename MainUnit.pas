unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,

  System.StrUtils,
  System.RegularExpressions,
  System.RegularExpressionsCore, Vcl.ExtCtrls, Vcl.StdCtrls, LabeledMemo;


type
  TRegexToolForm = class(TForm)
    RegexStringEdit: TLabeledEdit;
    TestStringEdit: TLabeledEdit;
    MoveNextButton: TButton;
    GetEunumButton: TButton;
    CountEdit: TLabeledEdit;
    EnumMemo: TLabledMemo;
    ClearEnumMemoButton: TButton;
    GroupBox1: TGroupBox;
    EnumCurrentButton: TButton;
    GroupBox2: TGroupBox;
    ResultsMemo: TLabledMemo;
    ClearResultsButton: TButton;
    SecondCollectionButton: TButton;
    FirstCollectionButton: TButton;
    procedure FirstCollectionButtonClick(Sender: TObject);
    procedure GetEunumButtonClick(Sender: TObject);
    procedure MoveNextButtonClick(Sender: TObject);
    procedure SecondCollectionButtonClick(Sender: TObject);
    procedure EnumCurrentButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ClearResultsButtonClick(Sender: TObject);
    procedure GroupBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RegexToolForm: TRegexToolForm;
  mycoll: TMatchCollection;
  myenum: TMatchCollectionEnumerator;

const
  TestString = '400-500 600.5-777.7 8000000-1000000';
  RexegExpression = '(\d{3,4}\.?\d?)-(\d{3,4}\.?\d?)';

implementation

{$R *.dfm}

procedure TRegexToolForm.FormCreate(Sender: TObject);
begin
  RegexStringEdit.Text := RexegExpression;
  TestStringEdit.Text := TestString;
  GroupBox1.Color := clBtnFace;
  GroupBox2.Color := clBtnFace;
end;


// Creates and lists the match collection,
// that matches in that collection and the groups in those matches.
procedure TRegexToolForm.FirstCollectionButtonClick(Sender: TObject);
var
  regex: TRegEx;
  i, j: integer;
  mygrps: TGroupCollection;
begin
  regex:= TRegEx.Create(RegexStringEdit.Text);
  mycoll:= regex.Matches(TestStringEdit.Text);
  ResultsMemo.AMemo.Lines.Clear;
  CountEdit.Text:= 'Count: ' + IntToStr(mycoll.Count);
  ResultsMemo.AMemo.Lines.Add('First Collection: ');
  for i := 0 to mycoll.Count-1 do
  begin
    ResultsMemo.Amemo.Lines.Add('Match #:' + IntToStr(i) + ': ' + mycoll.Item[i].Value);
    ResultsMemo.Amemo.Lines.Add('Group #: ' + IntToStr(i));
    mygrps:= mycoll.Item[i].Groups;
    ResultsMemo.Amemo.Lines.Add('mygrps.Item[0].Value: ' + mygrps.Item[0].Value + ' -- Item[0] is completed match');
    for j := 1 to mygrps.Count-1 do
    begin
      ResultsMemo.Amemo.Lines.Add('mygrps.Item['+j.ToString+'].Value: ' + mygrps.Item[j].Value);
    end;
    ResultsMemo.AMemo.Lines.Add('');
  end;
end;

// Sets the enumerator in the current match collection.
procedure TRegexToolForm.GetEunumButtonClick(Sender: TObject);
begin
  myenum:= mycoll.GetEnumerator;
  EnumMemo.Amemo.Lines.Add('Enumerator Created');
  myenum.MoveNext;
end;

procedure TRegexToolForm.GroupBox2Click(Sender: TObject);
begin

end;

// Moves the enumerator to the next member of the collection.
// Create the match collection and set the enumerator first.
// MoveNext only moves to the last, does not wrap to the first.
procedure TRegexToolForm.MoveNextButtonClick(Sender: TObject);
begin
  try
    myenum.MoveNext;
    EnumMemo.AMemo.Lines.Add('Move Enumerator');
  except
    ShowMessage('No Enum Created!!');
//    raise;
  end;
end;

// Create a different match collection.
// Note that MoveNext and Current work on the old match collection
// until the enumerator is set.
procedure TRegexToolForm.SecondCollectionButtonClick(Sender: TObject);
var
  regex: TRegEx;
  i: integer;
begin
  regex:= TRegEx.Create(RexegExpression);
  mycoll:= regex.Matches(TestString);
  CountEdit.Text:= 'Count: ' + IntToStr(mycoll.Count);
  for i := 0 to mycoll.Count-1 do
    ResultsMemo.Amemo.Lines.Add('Second collection: ' + mycoll.Item[i].Value);
end;

procedure TRegexToolForm.ClearResultsButtonClick(Sender: TObject);
begin
  ResultsMemo.Amemo.Lines.Clear;
end;

// Displays the current match of the collection.
// Current does not work unit the match collection is created,
// the enumeration is set and MoveNext sets the index to the first member.
procedure TRegexToolForm.EnumCurrentButtonClick(Sender: TObject);
begin
//  ResultsMemo.AMemo.Lines.Add('Enum InstanceSize: '+ myenum.InstanceSize.ToString);
  EnumMemo.Amemo.Lines.Add('Enum current: ' + myenum.Current.Value);
end;


end.
