<%@ Page language="c#" Debug="true" Codebehind="NovaSenha.pas" AutoEventWireup="false" Inherits="NovaSenha.TWebForm1" EnableViewStateMac="False" %>
<%@ Register TagPrefix="cc1" Namespace="ControleMessageBox" Assembly="ControleMessageBox" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_Saldacao" Src="WebControl_Saldacao.ascx" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_BannerPub" Src="WebControl_BannerPub.ascx" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_Links" Src="WebControl_Links.ascx" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_Publicidade" Src="WebControl_Publicidade.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <title id="PageTitulo" runat="server"></title>
  </head>
<body bgcolor="#ffffff" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" background="imagens/populando_img_fundo_pag.gif">
	 <form runat="server">
<!-- ImageReady Slices (site_populando_com_br.psd) -->
<div align="center">
  <center>
<table id="Tabela_01" width="765" height="1035" border="0" cellpadding="0" cellspacing="0" style="BORDER-COLLAPSE: collapse" bordercolor="#111111">
	<tr>
		<td rowspan="2">
			<img src="imagens/site_populando_com_br_01.gif" width="295" height="184" alt=""></td>
		<td background="imagens/site_populando_com_br_02.gif">
			<p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"></td>
		<td>
			<img src="imagens/spacer.gif" width="1" height="95" alt=""></td>
	</tr>
	<tr>
		<td rowspan="3" valign="top">
			<img src="imagens/site_populando_com_br_03.gif" width="470" height="105" alt=""></td>
		<td>
			<img src="imagens/spacer.gif" width="1" height="89" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="imagens/site_populando_com_br_04.gif" width="295" height="5" alt=""></td>
		<td>
			<img src="imagens/spacer.gif" width="1" height="5" alt=""></td>
	</tr>
	<tr>
		<td rowspan="2" background="imagens/site_populando_com_br_04.gif" valign="top">
			<p align="center" style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
                    <uc1:WebControl_Saldacao id="UserControl1" runat="server"></uc1:WebControl_Saldacao>
                  <p align="left">
                    <uc1:WebControl_Publicidade id="UserControl2" runat="server"></uc1:WebControl_Publicidade>
                  </p></td>
		<td>
			<img src="imagens/spacer.gif" width="1" height="11" alt=""></td>
	</tr>
	<tr>
		<td valign="top">
			<p align="center" style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
                    <table id="AutoNumber1" style="BORDER-COLLAPSE: collapse" bordercolor="#111111" cellspacing="0" cellpadding="0" width="450" border="0">
                        <tr>
                          <td>
			<h1 style="MARGIN: 0px 5px" align="center">
            <span style="FONT-FAMILY: Tahoma; FONT-SIZE: 8pt"><font size="2">Serviço de Recuperação da Senha</font></span></h1>
            <p style="MARGIN: 0px 5px" align="center">&nbsp;</p>
            <p style="MARGIN: 0px 5px; BACKGROUND: white">
            <span style="FONT-FAMILY: Tahoma; FONT-SIZE: 8pt"><font size="2">Ao efetuar seu cadastro aqui no site Populando.com.br foi enviado para o seu e-mail&nbsp;cadastrado, a sua senha de acesso ao site, verifique em sua caixa postal a senha enviada antes de solicitar&nbsp;uma nova.</font></span></p>
            <p style="MARGIN: 0px 5px; BACKGROUND: white">
            <span style="FONT-FAMILY: Tahoma; FONT-SIZE: 8pt"><font size="2"></font></span>&nbsp;</p>
            <p style="MARGIN: 0px 5px; BACKGROUND: white">
            <span style="FONT-FAMILY: Tahoma; FONT-SIZE: 8pt"><font size="2">Caso você não tenha &nbsp;recebido a senha ou tenha esquecido, informe seu e-mail de cadastro para que seja cadastrada uma nova senha.</font></span></p></td>
                        </tr>
                        <tr>
                          <td>
                            <p style="MARGIN: 0px 5px">&nbsp;</p></td>
                        </tr>
                        <tr>
						  <td>
                            <p style="MARGIN: 0px 5px">
            <span style="FONT-FAMILY: Tahoma; FONT-SIZE: 8pt"><font size="2">Informe o E-mail: 
                      <ASP:TextBox id="TextMail" runat="server" width="300px" maxlength="50"></ASP:TextBox></font></span></p></td>
                        </tr>
                        <tr>
                          <td>
                            <p style="MARGIN: 0px 5px">&nbsp;</p></td>
                        </tr>
                        <tr>
                          <td>
            <p style="MARGIN: 0px 5px; BACKGROUND: white" align="center">
            <span style="FONT-FAMILY: Tahoma; FONT-SIZE: 8pt">
                      <ASP:Button id="Button1" runat="server" text="Solicitar cadastro de nova senha" width="250px"></ASP:Button></span></p></td>
                        </tr>
                        <tr>
                          <td>
                            <p style="MARGIN: 0px 5px">&nbsp;</p></td>
                        </tr>
                        <tr>
                          <td>
            <p style="MARGIN: 0px 5px; BACKGROUND: white">
            <span style="FONT-FAMILY: Tahoma; FONT-SIZE: 8pt">
            <span style="FONT-FAMILY: Tahoma; FONT-SIZE: 8pt"><strong><font color="#ff0000">Atenção: </font>
                        </strong>Verifique sua caixa postal&nbsp;após&nbsp;solicitação.</span></span></p>
            <p style="MARGIN: 0px 5px; BACKGROUND: white">
            <span style="FONT-FAMILY: Tahoma; FONT-SIZE: 8pt">
            <span style="FONT-FAMILY: Tahoma; FONT-SIZE: 8pt"></span></span>
            <span style="FONT-FAMILY: Tahoma; FONT-SIZE: 8pt">
            <span style="FONT-FAMILY: Tahoma; FONT-SIZE: 8pt">Foi</span>&nbsp;enviada uma senha&nbsp;temporária&nbsp;no e-mail informado para você&nbsp;fazer login&nbsp;no site e recadastrar uma nova senha.</span></p>
            <p style="MARGIN: 0px 5px; BACKGROUND: white">
            <span style="FONT-FAMILY: Tahoma; FONT-SIZE: 8pt">&nbsp; </span></p>
            <p style="MARGIN: 0px 5px; BACKGROUND: white">
            <span style="FONT-FAMILY: Tahoma; FONT-SIZE: 8pt">
                      <strong>Importante:</strong> Verifique&nbsp;o filtro do seu&nbsp;software anti-spam, caso você não esteja recebendo nossos&nbsp;e-mails, autorize os e-mails do site Populando em sua lista de e-mails aprovados.</span></p></td>
                        </tr>
                        <tr>
                          <td>
                            <p style="MARGIN: 0px 5px">&nbsp;</p></td>
                        </tr>
                        <tr>
                          <td>
                            <p style="MARGIN: 0px 5px">
            <span style="FONT-FAMILY: Tahoma; FONT-SIZE: 8pt"><input onclick="javascript:history.back(1)" type="button" value="Voltar">&nbsp;<ASP:Button id="Button2" runat="server" text="Olhar anúncios" causesvalidation="False"></ASP:Button></span></p></td>
                        </tr>
                        <tr>
                          <td>
                            <p style="MARGIN: 0px 5px">
            <span style="FONT-FAMILY: Tahoma; FONT-SIZE: 8pt">
        <ASP:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" errormessage="Informe o seu E-mail cadastrado" controltovalidate="TextMail" display="None"></ASP:RequiredFieldValidator></span>
        <ASP:ValidationSummary id="ValidationSummary1" runat="server" showmessagebox="True" showsummary="False"></ASP:ValidationSummary>
                      <cc1:MessageBox id="MessageBox1" runat="server"></cc1:MessageBox></p></td>
                        </tr>
                        <tr>
                          <td>
                            <p style="MARGIN: 0px 5px">&nbsp;</p></td>
                        </tr>
                        <tr>
                          <td>
                            <p style="MARGIN: 0px 5px">&nbsp;</p></td>
                        </tr>
                        <tr>
                          <td>
                            <p style="MARGIN: 0px 5px">&nbsp;</p></td>
                        </tr>
                        <tr>
                          <td>
                            <p style="MARGIN: 0px 5px">&nbsp;</p></td>
                        </tr>
                        <tr>
                          <td>
                            <p style="MARGIN: 0px 5px">&nbsp;</p></td>
                        </tr>
                        <tr>
                          <td>
                            <p style="MARGIN: 0px 5px">&nbsp;</p></td>
                        </tr>
                        <tr>
                          <td>
                            <p style="MARGIN: 0px 5px">&nbsp;</p></td>
                        </tr>
                        <tr>
                          <td>
                            <p style="MARGIN: 0px 5px">&nbsp;</p></td>
                        </tr>
                        <tr>
                          <td>
                            <p style="MARGIN: 0px 5px">&nbsp;</p></td>
                        </tr>
                        <tr>
                          <td>
                            <p style="MARGIN: 0px 5px">&nbsp;</p></td>
                        </tr>
                        <tr>
                          <td>
                            <p style="MARGIN: 0px 5px">&nbsp;</p></td>
                        </tr>
                        <tr>
                          <td>
                            <p style="MARGIN: 0px 5px">&nbsp;</p></td>
                        </tr>
                        <tr>
                          <td>
                            <p style="MARGIN: 0px 5px">&nbsp;</p></td>
                        </tr>
                        <tr>
                          <td>
                            <p style="MARGIN: 0px 5px">&nbsp;</p></td>
                        </tr>
                        <tr>
                          <td>
                            <p style="MARGIN: 0px 5px">&nbsp;</p></td>
                        </tr>
                    </table></td>
		<td>
			<img src="imagens/spacer.gif" width="1" height="717" alt=""></td>
	</tr>
	<tr>
		<td colspan="2" background="imagens/site_populando_com_br_07.gif" valign="top">
			<p align="center" style="MARGIN: 0px 5px">
                    <uc1:WebControl_Links id="UserControl3" runat="server"></uc1:WebControl_Links></p></td>
		<td>
			<img src="imagens/spacer.gif" width="1" height="118" alt=""></td>
	</tr>
</table>
  </center>
</div>
<!-- End ImageReady Slices -->
     </form>
  </body>
</html>
