unit WebControl_Links;

interface

uses System.Data, System.Drawing, System.Web, System.Web.UI,
     System.Web.UI.WebControls, System.Web.UI.HtmlControls;
     
type
    /// <summary>
    /// Summary description for WebUserControl1.
    /// </summary>
  TWebUserControl1 = class(System.Web.UI.UserControl)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
    procedure LinkButton2_Click(sender: System.Object; e: System.EventArgs);
    procedure LinkButton1_Click(sender: System.Object; e: System.EventArgs);
    procedure LinkButton4_Click(sender: System.Object; e: System.EventArgs);
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
    LinkButton1: System.Web.UI.WebControls.LinkButton;
    LinkButton2: System.Web.UI.WebControls.LinkButton;
    LinkButton4: System.Web.UI.WebControls.LinkButton;
    procedure OnInit(e: System.EventArgs); override;
  private
    { Private Declarations }
  public
    { Public Declarations }
  end;

implementation
 
procedure TWebUserControl1.Page_Load(sender: System.Object; e: System.EventArgs);
begin
  // TODO: Put user code to initialize the page here
end;

procedure TWebUserControl1.OnInit(e: System.EventArgs);
begin
  //
  // Required for Designer support
  //
  InitializeComponent;
  inherited OnInit(e);
end;

procedure TWebUserControl1.LinkButton4_Click(sender: System.Object; e: System.EventArgs);
begin
Response.Redirect('TermoPoliticaUso.aspx');
end;

procedure TWebUserControl1.LinkButton1_Click(sender: System.Object; e: System.EventArgs);
begin
  Response.Redirect('ComoFunciona.aspx');
end;

procedure TWebUserControl1.LinkButton2_Click(sender: System.Object; e: System.EventArgs);
begin
  Response.Redirect('mailto:rwd@rwd.net.br?subject=Contato com Populando');
end;

{$REGION 'Designer Managed Code'}
/// <summary>
/// Required method for Designer support -- do not modify
/// the contents of this method with the code editor.
/// </summary>
procedure TWebUserControl1.InitializeComponent;
begin
  Include(Self.LinkButton4.Click, Self.LinkButton4_Click);
  Include(Self.LinkButton1.Click, Self.LinkButton1_Click);
  Include(Self.LinkButton2.Click, Self.LinkButton2_Click);
  Include(Self.Load, Self.Page_Load);
end;
{$ENDREGION}


end.
