unit WebControl_Manager;

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
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
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

{$REGION 'Designer Managed Code'}
/// <summary>
/// Required method for Designer support -- do not modify
/// the contents of this method with the code editor.
/// </summary>
procedure TWebUserControl1.InitializeComponent;
begin
  Include(Self.Load, Self.Page_Load);
end;
{$ENDREGION}


end.
