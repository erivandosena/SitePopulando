<%@ Page language="c#" Debug="true" Codebehind="Usuario.pas" AutoEventWireup="false" Inherits="Usuario.TWebForm1" EnableViewStateMac="False" %>
<%@ Register TagPrefix="cc1" Namespace="ControleMessageBox" Assembly="ControleMessageBox" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_Saldacao" Src="WebControl_Saldacao.ascx" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_BannerPub" Src="WebControl_BannerPub.ascx" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_Links" Src="WebControl_Links.ascx" %>
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
                    <uc1:WebControl_BannerPub id="UserControl2" runat="server"></uc1:WebControl_BannerPub>
                  </p></td>
		<td>
			<img src="imagens/spacer.gif" width="1" height="11" alt=""></td>
	</tr>
	<tr>
		<td valign="top">
			<p align="center" style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"><table cellspacing="0" cellpadding="0" width="450" align="center" border="0">
                  <tr>
                    <td><font face="Tahoma" size="2"><strong>
                          <ASP:Label id="LabelTitulo" runat="server"></ASP:Label></strong>
                      </font></td>
                  </tr>
                  <tr>
                    <td>
                      <p align="justify"><font face="Arial" size="2">É importante informar todos os campos solicitados, estas informações serão de muita importância para que o possível interessado em seu anúncio entre em contato com você.</font>
                      </p></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr><tr>
                    <td><font face="Tahoma" size="2">Nome: <font size="1">(Informe seu Nome pelo menos com o Sobrenome,&nbsp;evite usar apelidos)</font></font></td>
                  </tr>
                  <tr>
                    <td>
                      <ASP:TextBox id="TextNome" runat="server" width="400px" maxlength="50"></ASP:TextBox></td>
                  </tr>
				  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td><font face="Tahoma" size="2">Estado:</font></td>
                  </tr>
                  <tr>
                    <td><ASP:DropDownList id="DropDownList1" runat="server" autopostback="True"></ASP:DropDownList>
                            </td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td><font face="Tahoma" size="2">Cidade:</font></td>
                  </tr>
                  <tr>
                    <td><ASP:DropDownList id="DropDownList2" runat="server"></ASP:DropDownList></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td><font face="Tahoma" size="2">Telefone: <font size="1">(DDD + Nº Telefone)</font></font></td>
                  </tr>
                  <tr>
                    <td>
                      <ASP:TextBox id="TextTelefone" runat="server" width="200px" maxlength="25"></ASP:TextBox></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
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
                    <td><font face="Tahoma" size="2">Senha: <font size="1">(Letras com/ou números, máximo de&nbsp;10 caracteres)</font></font></td>
                  </tr>
                  <tr>
                    <td>
                      <ASP:TextBox id="TextSenha" runat="server" width="200px" textmode="Password" maxlength="10"></ASP:TextBox></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>
                      <ASP:Button id="ButSalvar" runat="server" text="Salvar"></ASP:Button>
                      <ASP:Button id="ButCancelar" runat="server" text="Cancelar" causesvalidation="False"></ASP:Button>
                      <ASP:Button id="ButAnuncio" runat="server" text="Editar Anúncio" causesvalidation="False" font-bold="True" visible="False"></ASP:Button>
                      <ASP:Button id="Button2" runat="server" text="Olhar Anúncios" causesvalidation="False"></ASP:Button></td>
                  </tr>
                  <tr>
                    <td>
                            <p align="center">
        <ASP:ValidationSummary id="ValidationSummary1" runat="server" font-names="Tahoma" font-size="9pt"></ASP:ValidationSummary></p>
                            <p align="left">
        <ASP:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" errormessage="Informe Nome e Sobrenome" controltovalidate="TextNome" display="None"></ASP:RequiredFieldValidator>
        <ASP:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" errormessage="Informe o Estado" controltovalidate="DropDownList1" display="None"></ASP:RequiredFieldValidator>
        <ASP:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" errormessage="Informe a Cidade" controltovalidate="DropDownList2" display="None"></ASP:RequiredFieldValidator>
        <ASP:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" errormessage="Informe o Telefone com DDD" controltovalidate="TextTelefone" display="None"></ASP:RequiredFieldValidator>
        <ASP:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" errormessage="Informe o E-mail" controltovalidate="TextMail" display="None"></ASP:RequiredFieldValidator>
        <ASP:RequiredFieldValidator id="RequiredFieldValidator6" runat="server" errormessage="Informe a Senha" controltovalidate="TextSenha" display="None"></ASP:RequiredFieldValidator>
              <ASP:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" errormessage="E-mail Inválido" controltovalidate="TextMail" display="None" validationexpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></ASP:RegularExpressionValidator>
              <cc1:MessageBox id="MessageBox1" runat="server"></cc1:MessageBox></p></td>
                  </tr>
                  <tr>
					<td>&nbsp;
				   </td>
                  </tr>
                  <tr>
					<td>
                              <ASP:Label id="Label1" runat="server" font-size="8pt" font-names="Verdana"></ASP:Label></td>
				  </tr><tr>
                          <td>&nbsp;
						 </td>
                        </tr>
                        <tr>
						  <td>
						
                            <ASP:CheckBox id="CheckBox1" runat="server" text="Desejo receber e-mails com novidades e ofertas do site Populando e dos seus patrocinadores." checked="True" font-size="7.5pt" font-names="Tahoma"></ASP:CheckBox>
                         </td>
						</tr><tr>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td><ASP:LinkButton id="LinkButton1" runat="server" font-names="Tahoma" font-size="8pt" causesvalidation="False" visible="False">Deixar de Participar</ASP:LinkButton></td>
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
