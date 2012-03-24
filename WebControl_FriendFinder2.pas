unit WebControl_FriendFinder2;

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
    Label1: System.Web.UI.WebControls.Label;
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
  if (System.DateTime.Now.Hour < 22) then
  begin
  Label1.Text:= '<iframe style="vertical-align: middle;" height="674" src="http://banners.adultfriendfinder.com/piclist?background_color= '+
'%23F3F3F3&banner_title=Encontre+mulheres+gostosas+procurando+por+algu%E9m+para+sair+em+sua+%E1rea&border_color= '+
'%23DDDDDD&grid=2x3&link_color=%230000FF&models=0&p=piclist_links&photo=2&pic_border_color=%23000000&pic_border_width= '+
'0&pid=g910904-ppc&rollover_header_color=%23FFEE80&rows=3&show_join_link=1&site=ffadult&size=2&target=_blank&text_color= '+
'%23000000&this_page=banners_member_models_customize&title_color=%23000000&width=285&iframe= '+
'1" scrolling="no" width="285" frameborder="0"></iframe> '+
'<br> '+
'<iframe style="vertical-align: middle;" height="205" src="http://banners.adultfriendfinder.com/piclist?background_color= '+
'%23F3F3F3&banner_title=Fique+com+pessoas+gostosas+de+sua+%E1rea&border_color=%23DDDDDD&find_sex=1&link_color= '+
'%230000FF&looking_for_person=2&models=0&p=piclist_links&photo=2&pic_border_color=%23000000&pic_border_width=0&pid= '+
'g910904-ppc&rollover_header_color=%23FFEE80&rows=1&show_join_link=1&site=ffadult&size=2&target=_blank&text_color= '+
'%23000000&this_page=banners_member_models_customize&thumb=thumb&title_color= '+
'%23000000&width=285&iframe=1" scrolling="no" width="285" frameborder="0"></iframe>';
  end;
    if (System.DateTime.Now.Hour > 22) then
  begin
  Label1.Text:= '<iframe style="vertical-align: middle;" height="655" src="http://banners.adultfriendfinder.com/piclist?background_color= '+
'%23F3F3F3&banner_title=Encontre+pessoas+gostosas+procurando+por+sexo+em+sua+cidade&border_color=%23DDDDDD&grid=2x3&link_color= '+
'%230000FF&models=0&p=piclist_links&pic_border_color=%23000000&pic_border_width=0&pid=g910904-ppc&rollover_header_color= '+
'%23FFEE80&rows=3&show_join_link=1&site=ffadult&size=2&target=_blank&text_color=%23000000&this_page= '+
'banners_member_models_customize&title_color=%23000000&width=285&iframe=1" scrolling="no" width="285" frameborder="0"></iframe> '+
'<br> '+
'<iframe style="vertical-align: middle;" height="208" src="http://banners.adultfriendfinder.com/piclist?background_color= '+
'%23F3F3F3&banner_title=Encontre+pessoas+gostosas+para+transar+em+sua+cidade+%0A&border_color=%23DDDDDD&find_sex=1&link_color= '+
'%230000FF&looking_for_person=2&models=0&p=piclist_links&pic_border_color=%23000000&pic_border_width=0&pid= '+
'g910904-ppc&rollover_header_color=%23FFEE80&rows=1&show_join_link=1&show_title=0&site=ffadult&size=2&target=_blank&text_color= '+
'%23000000&this_page=banners_member_models_customize&thumb=bigthumb&title_color=%23000000&width=285&iframe= '+
'1" scrolling="no" width="285" frameborder="0"></iframe>';
  end;
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
