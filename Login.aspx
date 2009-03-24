<%@ Page language="c#" Debug="true" Codebehind="Login.pas" AutoEventWireup="false" Inherits="Login.TWebForm1" EnableViewStateMac="False" %>
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
			<p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</td>
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
			<p align="center" style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"><table cellspacing="0" cellpadding="0" width="450" align="center" border="0">
                  <tr>
                    <td><font face="Tahoma" size="2"><strong>AUTENTICAÇÃO DE USUÁRIO</strong>
                      </font></td>
                  </tr>
                  <tr>
                    <td>
                      <menu>
                        <li>
                      <p align="justify"><font face="Arial" size="2">Para sua segurança, informe seu e-mail e senha para continuar.</font>
                      </p></li>
                        <li>
                      <p align="justify"><font face="Arial" size="2">Se você ainda não é registrado no&nbsp;site Populando crie uma conta de usuário agora mesmo, é rápido e fácil!</font>
                      </p>
                        </li>
                      </menu></td>
                  </tr>
                  <tr>
                    <td></td>
				  </tr><tr>
                    <td><font face="Tahoma" size="2">E-mail:</font></td>
                  </tr>
                  <tr>
                    <td>
                      <ASP:TextBox id="TextMail" runat="server" width="400px" maxlength="50"></ASP:TextBox></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td><font face="Tahoma" size="2">Senha:</font></td>
                  </tr>
                  <tr>
                    <td>
                      <ASP:TextBox id="TextSenha" runat="server" width="200px" textmode="Password" maxlength="10"></ASP:TextBox>
                      <ASP:Button id="ButFinalizar" runat="server" text="Login"></ASP:Button><input onclick="javascript:history.back(1)" type="button" value="Voltar">&nbsp;<ASP:HyperLink id="HyperLink1" runat="server" navigateurl="NovaSenha.aspx" font-names="Verdana" font-size="7pt">Não lembro minha senha!</ASP:HyperLink></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr><tr>
                    <td><font face="Tahoma"><strong>Sou novo aqui!</strong>
                      </font></td>
                  </tr>
                  <tr>
                    <td>
                      <ASP:Button id="ButRegistro" runat="server" text="Fazer o registro agora" causesvalidation="False"></ASP:Button>
                      <ASP:Button id="ButCancelar" runat="server" text="Cancelar" causesvalidation="False"></ASP:Button>
                      <ASP:Button id="Button2" runat="server" text="Olhar Anúncios" causesvalidation="False"></ASP:Button></td>
                  </tr>
                  <tr>
                    <td>
                            <p align="center">
        <ASP:ValidationSummary id="ValidationSummary1" runat="server" font-names="Tahoma" font-size="9pt"></ASP:ValidationSummary></p>
                            <p align="center">
        <ASP:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" errormessage="Informe o E-mail" controltovalidate="TextMail" display="None"></ASP:RequiredFieldValidator>
        <ASP:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" errormessage="Informe a Senha" controltovalidate="TextSenha" display="None"></ASP:RequiredFieldValidator><cc1:MessageBox id="MessageBox1" runat="server"></cc1:MessageBox></p></td>
                  </tr>
                  <tr>
                    <td></td>
                  </tr>
                  <tr>
                    <td></td>
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
