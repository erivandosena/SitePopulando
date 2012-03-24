<%@ Page language="c#" Debug="true" Codebehind="SemAnuncio.pas" AutoEventWireup="false" Inherits="SemAnuncio.TWebForm1" EnableViewStateMac="False" %>
<%@ Register TagPrefix="cc1" Namespace="ControleMessageBox" Assembly="ControleMessageBox" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_Saldacao" Src="WebControl_Saldacao.ascx" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_BannerAnu" Src="WebControl_BannerAnu.ascx" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_Links" Src="WebControl_Links.ascx" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_BannerPub" Src="WebControl_BannerPub.ascx" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_Publicidade" Src="WebControl_Publicidade.ascx" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_MegaBonus" Src="WebControl_MegaBonus.ascx" %>
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
			<p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
                    <uc1:WebControl_BannerAnu id="UserControl2" runat="server"></uc1:WebControl_BannerAnu></td>
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
                    <uc1:WebControl_Publicidade id="UserControl4" runat="server"></uc1:WebControl_Publicidade>
                  </p>
                  <p align="center">
                    <uc1:WebControl_MegaBonus id="UserControl5" runat="server"></uc1:WebControl_MegaBonus>
                  </p></td>
		<td>
			<img src="imagens/spacer.gif" width="1" height="11" alt=""></td>
	</tr>
	<tr>
		<td valign="top">
			<p align="center" style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"><table cellspacing="0" cellpadding="0" width="450" align="center" border="0">
                  <tr>
                    <td>
                      <p align="justify"><font face="Arial" size="2">&nbsp; </font>
                      </p>
                      <p align="justify"><font face="Arial" size="2">&nbsp; </font>
                      </p></td>
                  </tr>
                  <tr>
                    <td style="HEIGHT: 19px">
                            <p align="left">
                      </p></td>
                  </tr>
                  <tr>
                    <td>
                            <div align="left">
                            &nbsp; 

                            <div align="center">
                                  <table id="AutoNumber1" style="WIDTH: 182px; BORDER-COLLAPSE: collapse; HEIGHT: 50px" bordercolor="#111111" cellspacing="0" cellpadding="0" width="182" border="0">
                                      <tr>
                                        <td style="HEIGHT: 50px">
                                          <p align="center"><img height="50" src="imagens/aviso.gif" width="50" border="0">
                                          </p></td>
                                        <td style="HEIGHT: 50px">
                                          <p align="center">
                                            <b><font face="Tahoma" color="#cc0000" size="2">Anúncio finalizado!</font>
                                            </b>
                                          </p></td>
                                      </tr>
                                  </table>
                            </div>
                            <div align="center">
                            </div>
                            <div align="center">&nbsp;</div></div></td>
                  </tr>
                  <tr>
                    <td style="HEIGHT: 1px"><font face="Tahoma" size="2"><font face="Arial" size="3">
                      <p align="center"><font face="Arial" size="2">Anuncie no Populando, é fácil, rápido e grátis!</font>
                      </p></font>
                              </font></td>
                  </tr>
				  <tr>
                    <td>
                      <p align="left">
                      </p></td>
                  </tr><tr><td>
                            <p align="left">&nbsp;&nbsp; </p></td>
                  </tr>
                  <tr>
                    <td>
                            <div align="center">
                      <ASP:Button id="Button1" runat="server" text="Clique aqui para ANUNCIAR" font-bold="True" width="264px" causesvalidation="False"></ASP:Button>
                            </div></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>
                            <p align="left"></p></td>
                  </tr>
                  <tr>
                    <td>
                            <p align="center">
                              <ASP:Button id="Button2" runat="server" text="Voltar aos anúncios" causesvalidation="False"></ASP:Button></p></td>
                  </tr>
              </table></td>
		<td>
			<img src="imagens/spacer.gif" width="1" height="717" alt=""></td>
	</tr><tr>
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
