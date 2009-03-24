
unit TermoPoliticaUso;

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
    procedure Button1_Click(sender: System.Object; e: System.EventArgs);
    procedure Button2_Click(sender: System.Object; e: System.EventArgs);
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
  PageTitulo: system.web.ui.htmlcontrols.htmlgenericcontrol;
    Button1: System.Web.UI.WebControls.Button;
    Button2: System.Web.UI.WebControls.Button;
    procedure OnInit(e: EventArgs); override;
  private
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
  Include(Self.Button2.Click, Self.Button2_Click);
  Include(Self.Load, Self.Page_Load);
end;
{$ENDREGION}

procedure TWebForm1.Page_Load(sender: System.Object; e: System.EventArgs);
begin
  // TODO: Put user code to initialize the page here
  PageTitulo.innertext:= 'Populando.com.br - Onde voc� anuncia e encontra tudo';
end;


procedure TWebForm1.OnInit(e: EventArgs);
begin
  //
  // Required for Designer support
  //
  InitializeComponent;
  inherited OnInit(e);
end;

procedure TWebForm1.Button2_Click(sender: System.Object; e: System.EventArgs);
begin
  Response.Redirect('Default.aspx');
end;

procedure TWebForm1.Button1_Click(sender: System.Object; e: System.EventArgs);
begin
if Session['Usuario'] = nil then
Response.Redirect('Login.aspx')
else
Response.Redirect('Anuncio.aspx');
end;

end.

