unit WebControl_Saldacao;

interface

uses System.Data, System.Drawing, System.Web, System.Web.UI,
     System.Web.UI.WebControls, System.Web.UI.HtmlControls, ControleMessageBox;
     
type
    /// <summary>
    /// Summary description for WebUserControl1.
    /// </summary>
  TWebUserControl1 = class(System.Web.UI.UserControl)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
    procedure LinkButton1_Click(sender: System.Object; e: System.EventArgs);
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
    Label1: System.Web.UI.WebControls.Label;
    LinkButton1: System.Web.UI.WebControls.LinkButton;
    MessageBox1: ControleMessageBox.MessageBox;
    Label2: System.Web.UI.WebControls.Label;
    procedure OnInit(e: System.EventArgs); override;
  private
    { Private Declarations }
  public
    { Public Declarations }
    function GetSaudacao: string;
  end;

implementation
 
procedure TWebUserControl1.Page_Load(sender: System.Object; e: System.EventArgs);
begin
  // TODO: Put user code to initialize the page here
  Label1.Text:= GetSaudacao;
  Label2.Text:= 'Temos <b>'+Cache['NumVisitante'].ToString+'</b> Visitante(s) On-line';
  if Session['Usuario'] = nil then
  LinkButton1.Text:= 'Efetuar Login'
  else
  LinkButton1.Text:= 'Efetuar Logout';
end;

procedure TWebUserControl1.OnInit(e: System.EventArgs);
begin
  //
  // Required for Designer support
  //
  InitializeComponent;
  inherited OnInit(e);
end;

{$REGION 'Designer Managed Code'}
/// <summary>
/// Required method for Designer support -- do not modify
/// the contents of this method with the code editor.
/// </summary>
function TWebUserControl1.GetSaudacao: string;
begin
if Session['Usuario'] <> nil then

  result := 'Bom Dia! <br><b>'+Session['Usuario'].ToString+'</b>'
  else
  result := 'Bom Dia! <b>Visitante</b>, Bem-vindo(a)';

  if System.DateTime.Now.Hour > 12 then

if Session['Usuario'] <> nil then

  result := 'Boa Tarde! <br><b>'+Session['Usuario'].ToString+'</b>'
  else
  result := 'Boa Tarde! <b>Visitante</b>, Bem-vindo(a)';

  if System.DateTime.Now.Hour > 18 then

if Session['Usuario'] <> nil then

  result := 'Boa Noite! <br><b>'+Session['Usuario'].ToString+'</b>'
  else
  result := 'Boa Noite! <b>Visitante</b>, Bem-vindo(a)';
end;

procedure TWebUserControl1.LinkButton1_Click(sender: System.Object; e: System.EventArgs);
begin
if Session['Usuario'] = nil then
begin
Response.Redirect('Login.aspx');
end;
Session['Usuario']:= nil;
Response.Redirect('Default.aspx');
end;

procedure TWebUserControl1.InitializeComponent;
begin
  Include(Self.LinkButton1.Click, Self.LinkButton1_Click);
  Include(Self.Load, Self.Page_Load);
end;
{$ENDREGION}


end.
