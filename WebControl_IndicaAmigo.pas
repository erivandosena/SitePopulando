unit WebControl_IndicaAmigo;

interface

uses System.Data, System.Drawing, System.Web, System.Web.UI,
     System.Web.UI.WebControls, System.Web.UI.HtmlControls,
     System.Web.Mail, System.Web.Security, System.Text, ControleMessageBox;
     
type
    /// <summary>
    /// Summary description for WebUserControl1.
    /// </summary>
  TWebUserControl1 = class(System.Web.UI.UserControl)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
    procedure ButtonEnviar_Click(sender: System.Object; e: System.EventArgs);
    procedure ButtonSair_Click(sender: System.Object; e: System.EventArgs);
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
    TextNome: System.Web.UI.WebControls.TextBox;
    TextEmail: System.Web.UI.WebControls.TextBox;
    TextEmail1: System.Web.UI.WebControls.TextBox;
    TextEmail2: System.Web.UI.WebControls.TextBox;
    TextEmail3: System.Web.UI.WebControls.TextBox;
    TextEmail4: System.Web.UI.WebControls.TextBox;
    TextEmail5: System.Web.UI.WebControls.TextBox;
    ButtonEnviar: System.Web.UI.WebControls.Button;
    ButtonSair: System.Web.UI.WebControls.Button;
    MessageBox1: ControleMessageBox.MessageBox;
    RequiredFieldValidator1: System.Web.UI.WebControls.RequiredFieldValidator;
    RequiredFieldValidator2: System.Web.UI.WebControls.RequiredFieldValidator;
    RequiredFieldValidator3: System.Web.UI.WebControls.RequiredFieldValidator;
    RegularExpressionValidator1: System.Web.UI.WebControls.RegularExpressionValidator;
    RegularExpressionValidator2: System.Web.UI.WebControls.RegularExpressionValidator;
    RegularExpressionValidator3: System.Web.UI.WebControls.RegularExpressionValidator;
    RegularExpressionValidator4: System.Web.UI.WebControls.RegularExpressionValidator;
    RegularExpressionValidator5: System.Web.UI.WebControls.RegularExpressionValidator;
    RegularExpressionValidator6: System.Web.UI.WebControls.RegularExpressionValidator;
    procedure OnInit(e: System.EventArgs); override;
  private
    { Private Declarations }
  public
    { Public Declarations }
  end;

  var
  Mail: System.Web.Mail.MailMessage;
  cdoBasic : &Object;
  username, senhaserver, servidor: String;
  script: StringBuilder;

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

procedure TWebUserControl1.ButtonSair_Click(sender: System.Object; e: System.EventArgs);
begin
Response.Redirect('Default.aspx');
end;

procedure TWebUserControl1.ButtonEnviar_Click(sender: System.Object; e: System.EventArgs);
begin
if not Page.IsValid then Exit;
  cdoBasic := (1 as &Object);
  username := 'smtp';
  //usuário
  senhaserver := 'smtp2004';
  //senha
  servidor := 'smtp.cdlbaturite.com.br';
  //smtp
  Mail := MailMessage.create;
  try
    with Mail do
    begin
      From := TextNome.Text.ToUpper+'<'+TextEmail.Text.ToLower+'>';
      //&To := 'Amigo(a)<populando@populando.com.br>';
      //Cc := '';
      Bcc := TextEmail1.Text.ToLower;
      Priority:= MailPriority.Normal;
      Headers.Add('Reply-To', TextEmail.Text.ToLower);

      // Envia 2 e na ordem
      if (TextEmail1.Text = '') and
      (TextEmail2.Text <> '') then
      begin
      MessageBox1.ShowMessage('Faça suas indicações em seqüência, apartir do nº 1!');
      Exit;
      end;
      // Envia email na ordem
      if (TextEmail1.Text = '') and
      (TextEmail3.Text <> '') then
      begin
      MessageBox1.ShowMessage('Faça suas indicações em seqüência, apartir do nº 1!');
      Exit;
      end;
      // Envia email na ordem
      if (TextEmail1.Text = '') and
      (TextEmail4.Text <> '') then
      begin
      MessageBox1.ShowMessage('Faça suas indicações em seqüência, apartir do nº 1!');
      Exit;
      end;
      // Envia email na ordem
      if (TextEmail1.Text = '') and
      (TextEmail5.Text <> '') then
      begin
      MessageBox1.ShowMessage('Faça suas indicações em seqüência, apartir do nº 1!');
      Exit;
      end;

      // Envia email 2
      if (TextEmail2.Text <> '') then
      begin
      Bcc := Bcc.ToString+'; '+TextEmail2.Text.ToLower;
      end;
      // Envia email 3
      if (TextEmail3.Text <> '') then
      begin
      Bcc := Bcc.ToString+'; '+TextEmail3.Text.ToLower;
      end;
      // Envia email 4
      if (TextEmail4.Text <> '') then
      begin
      Bcc := Bcc.ToString+'; '+TextEmail4.Text.ToLower;
      end;
      // Envia email 5
      if (TextEmail5.Text <> '') then
      begin
      Bcc := Bcc.ToString+'; '+TextEmail5.Text.ToLower;
      end;

      Subject := 'Um(a) amigo(a) está lhe indicando um Site muito Popular!';
      BodyFormat := System.Web.Mail.MailFormat.Html;
      Body := '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"> '+
'<HTML><HEAD> '+
'<META http-equiv=Content-Type content="text/html; charset=iso-8859-1"> '+
'<META content="MSHTML 6.00.2900.2180" name=GENERATOR> '+
'<STYLE></STYLE> '+
'</HEAD> '+
'<body link="#333333" vlink="#000000" alink="#999999"> '+
'<p align=center> '+
'<TABLE cellSpacing=0 cellPadding=0 width=548 align=center> '+
'<TBODY> '+
'<TR> '+
'<TD> '+
'<IMG height=124 src="http://'+ HttpContext.Current.Request.Url.Authority +'/imagens/topo_email.gif" width=548 alt="Populando - O Classificado mais Popular da Internet"></TD></TR> '+
'<TR> '+
'<TD style="PADDING-RIGHT: 25px; PADDING-LEFT: 25px; PADDING-BOTTOM: 25px; FONT: 12px Arial, Helvetica, sans-serif; PADDING-TOP: 25px" vAlign=top background=http://'+ HttpContext.Current.Request.Url.Authority +'/imagens/fundo_email.gif> '+
'<P>Você tem uma indicação especial do(a) Amigo(a): <b>'+TextNome.Text.ToUpper+'</b><br><br> '+
'<br>Olá Amigo(a), tudo bem?<br><br> '+
'Conheci um Site de Classificado Grátis muito interessante e útil, onde se pode encontrar <br> de tudo basta pesquisar.<br> '+
'<br> '+
'Lá tem uma grande variedade de ofertas em produtos e serviços fiquei impressionado(a)!<br> '+
'<br> '+
'Já fiz meu cadastro que foi rápido e fácil, e já estou anunciando gratuitamente, é uma maravilha.<br> '+
'<br> '+
'Eu gostei demais, e recomendo que você também acesse este Site, se possível agora!<br> '+
'<br> '+
'O Site de que estou falando é o: <a target="_blank" title="O Classificado mais Popular da Internet" href="http://'+ HttpContext.Current.Request.Url.Authority +'">www.Populando.com.br</a> dar uma conferida.<br> '+
'<br> '+
'Abraços,<br> '+
'<br>'+TextNome.Text.ToUpper+'</P> '+
'<hr color="#666666" size="1" width="498"> '+
'<center><font size="1" face="Tahoma"><b>Não é SPAM</b>: Você recebeu este e-mail porque foi indicado(a) no Site por alguém que lhe conhece.</font></center> '+
'</TD></TR> '+
'<TR> '+
'<TD> '+
'<IMG height=24 src="http://'+ HttpContext.Current.Request.Url.Authority +'/imagens/rodape_email.gif" width=548 alt="Copyright © Populando - Todos os direitos reservados. All Rights Reserved."></TD></TR> '+
'</TBODY> '+
'</TABLE> '+
'</p> '+
'</BODY></HTML>';
    end;
    mail.Fields.Add('http://schemas.microsoft.com/cdo/configuration/smtpauthenticate', cdoBasic);
    mail.Fields.Add('http://schemas.microsoft.com/cdo/configuration/sendusername', username);
    mail.Fields.Add('http://schemas.microsoft.com/cdo/configuration/sendpassword', senhaserver);
    mail.Fields.Add('http://schemas.microsoft.com/cdo/configuration/smtpserver', servidor);
    mail.Fields.Add('http://schemas.microsoft.com/cdo/configuration/smtpserverport', '25');
  //  mail.Fields.Add('http://schemas.microsoft.com/cdo/configuration/sendusing', '2');
  //  mail.Fields.Add('http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout', '30');
    mail.Fields.SyncRoot;
    SmtpMail.SmtpServer := servidor;
    SmtpMail.Send(Mail);
  except
    on e: Exception do
      MessageBox1.ShowMessage('Erro no servidor de mensagens. Por favor, se informou endereço eletrônico, verifique o endereço de e-mail ou tente executar esta operação após alguns horas.');
  end;
// Limpa controles
TextEmail1.Text:= nil;
TextEmail2.Text:= nil;
TextEmail3.Text:= nil;
TextEmail4.Text:= nil;
TextEmail5.Text:= nil;
//response.Write(Mail.Bcc.ToString);
MessageBox1.ShowMessage('Indicação enviada com sucesso!');
end;

{$REGION 'Designer Managed Code'}
/// <summary>
/// Required method for Designer support -- do not modify
/// the contents of this method with the code editor.
/// </summary>
procedure TWebUserControl1.InitializeComponent;
begin
  Include(Self.ButtonEnviar.Click, Self.ButtonEnviar_Click);
  Include(Self.ButtonSair.Click, Self.ButtonSair_Click);
  Include(Self.Load, Self.Page_Load);
end;
{$ENDREGION}


end.
