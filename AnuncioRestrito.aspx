<%@ Page language="c#" Debug="true" Codebehind="AnuncioRestrito.pas" AutoEventWireup="false" Inherits="AnuncioRestrito.TWebForm1" EnableViewStateMac="False" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_BannerAnu" Src="WebControl_BannerAnu.ascx" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_Saldacao" Src="WebControl_Saldacao.ascx" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_Links" Src="WebControl_Links.ascx" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_Publicidade" Src="WebControl_Publicidade.ascx" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_Mercado2" Src="WebControl_Mercado2.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>

	<title>Populando.com.br - Anúncio com conteúdo não apropriado para menores!</title>

  </head>

<body bgcolor="#ffffff" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" background="imagens/populando_img_fundo_pag.gif">

	 <form runat="server">
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
                    <uc1:WebControl_Publicidade id="UserControl4" runat="server"></uc1:WebControl_Publicidade></p>
				<p align="left"></p></td>
		<td>
			<img src="imagens/spacer.gif" width="1" height="11" alt=""></td>
	</tr>
	<tr>
		<td valign="top">
			<p align="center" style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;
			  <table cellspacing="0" cellpadding="0" width="450" align="center" border="0">
				  <tr>
					<td></td>
				  </tr>
				  <tr>
					<td>
					  <div align="center">
					  <ASP:Button id="Button1" runat="server" text="Clique aqui para ANUNCIAR" font-bold="True" width="264px" causesvalidation="False"></ASP:Button>&nbsp;<ASP:Button id="Button3" runat="server" text="Olhar anúncios" causesvalidation="False"></ASP:Button>
					  </div></td>
				  </tr>
				  <tr>
					<td>&nbsp;</td>
				  </tr>
				  <tr>
					<td>

<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="BORDER-COLLAPSE: collapse" bordercolor="#111111" width="400" id="AutoNumber1">
    <tr>
      <td colspan="3" height="30" bgcolor="#ffcc00">
      <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px" align="center"><b>
      <font face="Arial" color="#ffffff">ORIENTAÇÃO IMPORTANTE!</font></b></td>
    </tr>
    <tr>
      <td colspan="3" height="100">
      <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px" align="center">
      <img border="0" src="imagens/anuncio_adulto.gif" alt="Pedofelia é Crime!"></td>
    </tr>
    <tr>
      <td colspan="3" height="50">
      <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px" align="center"><b>
      <font face="Tahoma" size="2">Este anúncio é destinado exclusivamente ao 
      público adulto.</font></b></td>
    </tr>
    <tr>
      <td bgcolor="#eeeeee" height="60">
      <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px" align="center"><b>
      <font face="Verdana" size="2" color="#ff0000">Então, se você possui menos<br>
      de 18 anos, não entre!</font></b></td>
      <td>
      <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</td>
      <td bgcolor="#eeeeee" height="60">
      <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px" align="center"><b>
      <font size="2" face="Tahoma" color="#008000">Se você possui 18 anos ou 
      mais, pode visualizar este anúncio.</font></b></td>
    </tr>
    <tr>
      <td width="195">
      <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</td>
      <td>
      <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</td>
      <td width="195">
      <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</td>
    </tr>
    <tr>
      <td>
      <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px" align="center">
                                        <ASP:Button id="Button4" runat="server" text="SAIR" width="100px" font-bold="True" causesvalidation="False"></ASP:Button></td>
      <td>
      <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</td>
      <td>
      <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px" align="center">
                                        <ASP:Button id="Button5" runat="server" text="ENTRAR" width="100px" font-bold="True" causesvalidation="False"></ASP:Button></td>
    </tr>
    <tr>
      <td width="195">
      <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</td>
      <td>
      <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</td>
      <td width="195">
      <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"></td>
    </tr>
    <tr>
      <td colspan="3">
      <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px" align="center">
      <font face="Tahoma" size="1">O Site Populando não se responsabiliza por 
      visitantes e usuários que não respeitarem estes avisos.</font></p>
      <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px" align="justify">&nbsp;</p>
      <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px" align="center">
      <img border="0" src="imagens/paisfilhos.gif" alt="Navegação para pré-adolescentes."></p>
      <ul type="square">
        <li>
        <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px" align="justify">
        <font face="Tahoma" size="1">Aconselhamos aos pais e responsáveis que 
        baixem um dos softwares abaixo ou outro de preferência para evitar o 
        acesso de menores em sites com conteúdos adulto.</font></li>
      </ul>
      </td>
    </tr>
    <tr>
      <td></td>
      <td>
      <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</td>
      <td></td>
    </tr>
    <tr>
      <td width="390" colspan="3">
        <center>
        <table border="0" cellpadding="0" cellspacing="0" style="BORDER-COLLAPSE: collapse" bordercolor="#111111" width="450" id="AutoNumber2">
          <tr>
            <td align="center">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
            <a target="_blank" href="http://www.cybersitter.com/predl.htm">
            <img border="0" src="http://www.cybersitter.com/cs150.png" alt="Copyright © Solid Oak Software, Inc." width="150" height="25"></a></td>
            <td align="center">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
            <a target="_blank" href="http://www.cyberpatrol.com/Software_de_Controle.htm">
            <img border="0" src="http://www.cyberpatrol.com/uploadedimages/CP_title.gif" alt="© Copyright SurfControl plc." width="94" height="25"></a></td>
            <td align="center">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
            <a target="_blank" href="http://www.snoopstick.com/">
            <img border="0" src="http://www.cybersitter.com/sslogo150.png" alt="Copyright © Solid Oak Software, Inc."></a></td>
          </tr>
        </table>
        </center>
      </td>
    </tr>
    <tr>
      <td>
      <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</td>
      <td>
      <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</td>
      <td>
      <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</td>
    </tr>
  </table>
  </center>
</div>

					</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>
                                <p style="MARGIN: 0px 5px" align="center"><font face="Tahoma" size="2"><span style="FONT-SIZE: 10pt; COLOR: gray; FONT-FAMILY: Arial; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: PT-BR; mso-fareast-language: PT-BR; mso-bidi-language: AR-SA"><font color="#808080">A Imagem e textos publicados são de responsabilidade do anunciante.</font>
                                    </span></font>
                                </p></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>
                      <div align="center">
                              <uc1:WebControl_Mercado2 id="UserControl7" runat="server"></uc1:WebControl_Mercado2>
                      </div></td>
                  </tr>
                  <tr>
                    <td>
                      <div align="center">&nbsp; 
                      </div></td>
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
     </form>
  </body>
</html>
