
unit AnuncioRestrito;

interface

uses
  System.Collections, System.ComponentModel,
  System.Data, System.Drawing, System.Web, System.Web.SessionState,
  System.Web.UI, System.Web.UI.WebControls, System.Web.UI.HtmlControls;

type
  TWebForm1 = class(System.Web.UI.Page)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
    procedure Button3_Click(sender: System.Object; e: System.EventArgs);
    procedure Button4_Click(sender: System.Object; e: System.EventArgs);
    procedure Button2_Click(sender: System.Object; e: System.EventArgs);
    procedure Button5_Click(sender: System.Object; e: System.EventArgs);
    procedure Button1_Click(sender: System.Object; e: System.EventArgs);
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
    Button1: System.Web.UI.WebControls.Button;
    Button3: System.Web.UI.WebControls.Button;
    Button2: System.Web.UI.WebControls.Button;
    Button4: System.Web.UI.WebControls.Button;
    Button5: System.Web.UI.WebControls.Button;
    procedure OnInit(e: EventArgs); override;
  private
      Anuncio: System.Object;
    { Private Declarations }
  public
    { Public Declarations }
  end;

implementation

{$REGION 'Designer Managed Code'}
/// <summary>
/// Required method for Designer support -- do not modify
/// the contents of this method with the code editor.
/// </summary>
procedure TWebForm1.InitializeComponent;
begin
  Include(Self.Button1.Click, Self.Button1_Click);
  Include(Self.Button3.Click, Self.Button3_Click);
  Include(Self.Button4.Click, Self.Button4_Click);
  Include(Self.Button5.Click, Self.Button5_Click);
  Include(Self.Button2.Click, Self.Button2_Click);
  Include(Self.Load, Self.Page_Load);
end;
{$ENDREGION}

procedure TWebForm1.Page_Load(sender: System.Object; e: System.EventArgs);
begin
  // TODO: Put user code to initialize the page here
  Anuncio:= Request.QueryString['anun_cod'];
end;

procedure TWebForm1.OnInit(e: EventArgs);
begin
  //
  // Required for Designer support
  //
  InitializeComponent;
  inherited OnInit(e);
end;

procedure TWebForm1.Button1_Click(sender: System.Object; e: System.EventArgs);
begin
if Session['Usuario'] = nil then
Response.Redirect('Login.aspx')
else
Response.Redirect('Anuncio.aspx');
end;

procedure TWebForm1.Button5_Click(sender: System.Object; e: System.EventArgs);
begin
  Response.Redirect('ClassificadosSexo.aspx?anun_cod='+Anuncio.ToString);
end;

procedure TWebForm1.Button2_Click(sender: System.Object; e: System.EventArgs);
begin
  Response.Redirect('Default.aspx');
end;

procedure TWebForm1.Button4_Click(sender: System.Object; e: System.EventArgs);
begin
Session['Privativo']:= nil;
  Response.Redirect('Default.aspx');
end;

procedure TWebForm1.Button3_Click(sender: System.Object; e: System.EventArgs);
begin
  Response.Redirect('Default.aspx');
end;

end.

