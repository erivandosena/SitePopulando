<%@ Page language="c#" Debug="true" Codebehind="ClassificadosSexo.pas" AutoEventWireup="false" Inherits="ClassificadosSexo.TWebForm1" EnableViewStateMac="False" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_Saldacao" Src="WebControl_Saldacao.ascx" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_BannerAnu" Src="WebControl_BannerAnu.ascx" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_Links" Src="WebControl_Links.ascx" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_Publicidade" Src="WebControl_Publicidade.ascx" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_PagSeguro" Src="WebControl_PagSeguro.ascx" %>
<%@ Register TagPrefix="cc1" Namespace="ControleMessageBox" Assembly="ControleMessageBox" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_Mercado2" Src="WebControl_Mercado2.ascx" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_FriendFinder2" Src="WebControl_FriendFinder2.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
	<title id="PageTitulo" runat="server"></title>
  </head>

  <body bgcolor="#ffffff" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" background="imagens/populando_img_fundo_pag.gif">
	 <form runat="server">
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
                  <p align="center">
                    <uc1:WebControl_Saldacao id="UserControl1" runat="server"></uc1:WebControl_Saldacao></p>
                  <p align="left">
                    <uc1:WebControl_Publicidade id="UserControl4" runat="server"></uc1:WebControl_Publicidade></p>
                    <uc1:WebControl_FriendFinder2 id="UserControl8" runat="server"></uc1:WebControl_FriendFinder2></td>
		<td>
			<img src="imagens/spacer.gif" width="1" height="11" alt=""></td>
	</tr>
	<tr>
		<td valign="top">
			<p align="center" style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"><table cellspacing="0" cellpadding="0" width="450" align="center" border="0">
                  <tr>
                    <td>
                      <p align="justify"><font face="Arial" size="2">&nbsp; </font>
                      </p></td>
                  </tr>
                  <tr>
                    <td style="HEIGHT: 30px">
                      <p align="justify">
                      <ASP:Button id="Button1" runat="server" text="Clique aqui para ANUNCIAR" font-bold="True" width="264px"></ASP:Button>&nbsp;
                      
                              <ASP:Button id="Button3" runat="server" text="Olhar anúncios" enableviewstate="False"></ASP:Button>
                      </p></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td></td>
                  </tr>
				  <tr>
                    <td>
                      <p align="center">
                        <table id="AutoNumber1" style="BORDER-COLLAPSE: collapse" bordercolor="#daa520" height="463" cellspacing="0" cellpadding="0" width="454" border="1">
                            <tr>
                              <td style="BORDER-BOTTOM: #000066; BORDER-LEFT: #000066 1px solid; BORDER-TOP: #000066 1px solid; BORDER-RIGHT: #000066 1px solid" width="450" bgcolor="#daa520" colspan="4" height="50">
                                <p align="center"><font face="Arial" color="#ffffff" size="4">
                                    <ASP:Label id="Label1" runat="server"></ASP:Label></font>
                                </p></td>
                            </tr>
                            <tr>
                              <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: #000080 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #000080 1px solid" valign="top" width="450" colspan="4" height="10"></td>
                            </tr>
                            <tr>
                              <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: #000080 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #000080 1px solid" width="456" colspan="4" height="17">
                                <p style="MARGIN: 0px 5px">
                                  <b><font face="Verdana" size="1">
                                      <ASP:Label id="Label2" runat="server"></ASP:Label></font>
                                  </b>
                                </p></td>
                            </tr>
                            <tr>
                              <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: #000080 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: medium none" width="250" height="185" rowspan="9">
                                      <p align="right">
                                  <ASP:Image id="Image1" runat="server" width="250px"></ASP:Image></p></td>
                              <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: #000080; BORDER-TOP: medium none; BORDER-RIGHT: medium none" valign="top" width="5" height="17"></td>
                              <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #000080" width="190" bgcolor="#c0c0c0" height="17">&nbsp;</td>
                              <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #000080 1px solid" valign="top" width="5" height="17"></td>
                            </tr>
                            <tr>
                              <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: #000080; BORDER-TOP: medium none; BORDER-RIGHT: medium none" valign="top" width="5" height="166" rowspan="8">
                                <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</p></td>
                              <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #000080" width="190" bgcolor="#e8e8e8" height="33">
                                <p style="MARGIN: 0px 3px"><font face="Arial Narrow" size="2">Anunciante:</font><b><font face="Verdana" size="2">
                                      <ASP:Label id="Label3" runat="server"></ASP:Label></font></b>
                                </p></font></b></td>
                              <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #000080 1px solid" valign="top" width="5" height="166" rowspan="8">
                                <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</p></td>
                            </tr>
                            <tr>
                              <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #000080" valign="top" width="190" bgcolor="#e8e8e8" height="17">
                                <p style="MARGIN: 0px 3px">&nbsp;</p></td>
                            </tr>
                            <tr>
                              <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #000080" width="190" bgcolor="#e8e8e8" height="17">
                                <p style="MARGIN: 0px 3px"><font face="Arial Narrow" size="2">Cidade:</font><b><font face="Verdana" size="2">
                                      <ASP:Label id="Label4" runat="server"></ASP:Label></font>
                                  </b>
                                </p></td>
                            </tr>
                            <tr>
                              <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #000080" valign="top" width="190" bgcolor="#e8e8e8" height="17">
                                <p style="MARGIN: 0px 3px">&nbsp;</p></td>
                            </tr>
                            <tr>
                              <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #000080" width="190" bgcolor="#e8e8e8" height="17">
                                <p style="MARGIN: 0px 3px"><font face="Arial Narrow" size="2">Estado:</font><b><font face="Verdana" size="2">
                                      <ASP:Label id="Label5" runat="server"></ASP:Label></font>
                                  </b>
                                </p></td>
                            </tr>
                            <tr>
                              <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #000080" valign="top" width="190" bgcolor="#e8e8e8" height="17">
                                <p style="MARGIN: 0px 3px">&nbsp;</p></td>
                            </tr>
                            <tr>
                              <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #000080" width="190" bgcolor="#e8e8e8" height="17">
                                <p style="MARGIN: 0px 3px"><font face="Arial" size="2">Finaliza em:</font><b><font face="Verdana" size="2">
                                      <ASP:Label id="Label6" runat="server"></ASP:Label></font>
                                  </b>
                                </p></td>
                            </tr>
                            <tr>
                              <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #000080" valign="top" width="190" bgcolor="#c0c0c0" height="17">
                                <p style="MARGIN: 0px 3px">&nbsp;</p></td>
                            </tr>
                            <tr>
                              <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: #000080 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #000080 1px solid" valign="top" width="456" colspan="4" height="17">
                                <p style="MARGIN: 0px 5px"><font face="Arial" size="2"><font color="#000000"><font style="BACKGROUND-COLOR: #dcdcdc">&nbsp;<strong><font face="Verdana" size="1">Descrição: </font>
                                        </strong>
                                      </font>
                                    </font></font>
                                </p></td>
                            </tr>
                            <tr>
							  <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: #000080 1px solid; HEIGHT: 24px; BORDER-TOP: medium none; BORDER-RIGHT: #000080 1px solid" valign="top" width="450" colspan="4" height="17">
								<p style="MARGIN: 0px 5px">&nbsp;</p>
                                <p style="MARGIN: 0px 5px">
                                  <table id="AutoNumber2" style="BORDER-COLLAPSE: collapse" bordercolor="#111111" cellspacing="0" cellpadding="0" width="441" border="0">
                                      <tr>
                                        <td>
                                                <p>
                                  <ASP:Label id="Label7" runat="server" width="439px"></ASP:Label></p></td>
                                      </tr>
                                  </table></p></td>
                            </tr>
                            <tr>
                              <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: #000080 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #000080 1px solid" valign="top" width="450" colspan="4" height="17">
                                <p style="MARGIN: 0px 5px">&nbsp;</p></td>
                            </tr>
                            <tr>
                              <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: #000080 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #000080 1px solid" width="450" bgcolor="#716f64" colspan="4" height="29">
								<p style="MARGIN: 0px 5px" align="center"><span style="FONT-FAMILY: Verdana; FONT-WEIGHT: 700"><font color="#ffffff" size="2">Ficou interessado neste anúncio?</font>
                                  </span>
                                </p></td>
                            </tr>
                            <tr>
                              <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: #000080 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #000080 1px solid" width="450" colspan="4" height="25">
                                <p style="MARGIN: 0px 5px">
                                  <b><font face="Tahoma" size="2">Fale com: </font>
                                  </b><font face="Arial">
                                    <ASP:Label id="Label8" runat="server"></ASP:Label></font>
                                </p></td>
                            </tr>
                            <tr>
                              <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: #000080 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #000080 1px solid" width="450" colspan="4" height="25">
                                <p style="MARGIN: 0px 5px">
                                  <b><font face="Tahoma" size="2">Telefone: </font>
                                  </b><font face="Arial">
                                    <ASP:Label id="Label9" runat="server"></ASP:Label></font>
                                </p></td>
                            </tr>
                            <tr>
                              <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: #000080 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #000080 1px solid" width="450" colspan="4" height="25">
                                <p style="MARGIN: 0px 5px">
                                  <b><font face="Tahoma" size="2">E-Mail: </font>
                                  </b><font face="Arial">
                                          <ASP:LinkButton id="LinkButton1" runat="server" causesvalidation="False"></ASP:LinkButton></font></p></td>
                            </tr><tr>
                              <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: #000080 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #000080 1px solid" valign="top" width="450" colspan="4" height="10">
                                <p style="MARGIN: 0px 5px" align="center">
                                        <uc1:WebControl_PagSeguro id="UserControl6" runat="server"></uc1:WebControl_PagSeguro></p></td>
                            </tr>
                            <tr>
                              <td style="BORDER-BOTTOM: 1px solid; BORDER-LEFT: #000080 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #000080 1px solid" width="450" bgcolor="#e8e8e8" colspan="4" height="25">
                                <p style="MARGIN: 0px 5px" align="center"><font face="Tahoma" size="2"><span style="FONT-FAMILY: Arial; COLOR: gray; FONT-SIZE: 10pt; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: PT-BR; mso-fareast-language: PT-BR; mso-bidi-language: AR-SA"><font color="#808080">A Imagem e textos publicados são de responsabilidade do anunciante.</font></span></font>
                                </p></td>
                            </tr></table>
                              <cc1:MessageBox id="MessageBox1" runat="server"></cc1:MessageBox>&nbsp;&nbsp; 
                      </p></td>
                  </tr><tr><td>
                            <p align="left"></p></td>
                  </tr>
                  <tr>
                    <td>
                            <p align="center">
                              <uc1:WebControl_Mercado2 id="UserControl7" runat="server"></uc1:WebControl_Mercado2></p></td>
                  </tr>
                  <tr>
                    <td style="HEIGHT: 11px">
                            <p align="center"></p></td>
                  </tr>
                  <tr>
                    <td>
                            <p align="center">
                              <ASP:Button id="Button2" runat="server" text="Voltar aos anúncios" causesvalidation="False"></ASP:Button></p></td>
                  </tr><tr>
                    <td><p>
                            </p><p>&nbsp;</p></td>
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
     </form>
  </body>
</html>
