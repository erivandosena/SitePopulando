<%@ Page language="c#" Debug="true" Codebehind="ComoFunciona.pas" AutoEventWireup="false" Inherits="ComoFunciona.TWebForm1" EnableViewStateMac="False" %>
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
			<p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px" align="center">
                    <uc1:WebControl_Saldacao id="UserControl1" runat="server"></uc1:WebControl_Saldacao>
                  <p align="left">
                    <uc1:WebControl_Publicidade id="UserControl2" runat="server"></uc1:WebControl_Publicidade>
                  </p>
            </td>
		<td>
			<img src="imagens/spacer.gif" width="1" height="11" alt=""></td>
	</tr>
	<tr>
		<td valign="top">
			<div align="center">
              <center>
              <table border="0" cellpadding="0" cellspacing="0" style="BORDER-COLLAPSE: collapse" bordercolor="#111111" width="450" id="AutoNumber1">
                <tr>
                  <td>
                  <p style="MARGIN: 0px 5px">&nbsp;</td>
                </tr>
                <tr>
                  <td>
                  <p class="MsoNormal" align="center" style="TEXT-ALIGN: center; MARGIN: 0px 5px">
                  <b><span style="FONT-FAMILY: Tahoma"><font size="2">
                  Funcionamento do Classificado</font></span></b></p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <span style="FONT-FAMILY: Tahoma"><font size="2"></font></span>&nbsp;</p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <span style="FONT-FAMILY: Tahoma"><font size="2">Quando algu�m 
                  precisar anunciar algo que precisa vender e principalmente 
                  quando se tem urg�ncia para isto, o usu�rio acessa o Site:
                  </font>
                  <a href="http://<%= HttpContext.Current.Request.Url.Authority %>" style="COLOR: blue; TEXT-DECORATION: underline; text-underline: single">
                  <font size="2">www.populando.com.br</font></a></span></p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <img border="0" src="imagens/site_populando_com_br_cf1.gif" width="423" height="95"></p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <span style="FONT-FAMILY: Tahoma"><font size="2"></font></span>&nbsp;</p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <font size="2"><span style="FONT-FAMILY: Tahoma">Faz</span>
                  </font>
                  <span style="FONT-FAMILY: Tahoma"><font size="2">login 
                  no site, confirma seus dados pessoais para o(s) anuncio</font></span><font face="Tahoma" size="2">(s).</font></p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <span style="FONT-FAMILY: Tahoma"><font size="2"></font></span>&nbsp;</p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <img border="0" src="imagens/site_populando_com_br_cf2.gif" width="285" height="191"></p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">&nbsp;</p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <span style="FONT-FAMILY: Tahoma"><font size="2">Se ainda n�o 
                  � registrado no site, faz um pequeno cadastro, � simples e r�pido.</font></span></p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <font face="Tahoma" size="2"></font>&nbsp;</p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <font size="2"><span style="FONT-FAMILY: Tahoma">P</span></font><span style="FONT-FAMILY: Tahoma"><font size="2">ara 
                  anunciar � simples, informa uma se��o relevante ao que ser� 
                  anunciado, informa um t�tulo sugestivo para o anuncio, o tempo de dura��o que voc� quer que seu an�ncio fique no ar, e por 
                  fim uma descri��o detalhada do produto ou servi�o que est� 
                  sendo anunciando.</font></span></p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px"><span style="FONT-FAMILY: Tahoma"><font size="2"></font></span>&nbsp;</p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  </p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <img border="0" src="imagens/site_populando_com_br_cf3.gif" width="358" height="128"></p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <span style="FONT-FAMILY: Tahoma"><font size="2"></font></span>&nbsp;</p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <span style="FONT-FAMILY: Tahoma"><font size="2">E se preferir 
                  ainda � poss�vel expor uma imagem referente ao anuncio.</font></span></p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">&nbsp;</p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <img border="0" src="imagens/site_populando_com_br_cf4.gif" width="330" height="146"></p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <span style="FONT-FAMILY: Tahoma"><font size="2"></font></span>&nbsp;</p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <span style="FONT-FAMILY: Tahoma"><font size="2">Ao salvar, 
                  instantaneamente seu anuncio j� estar� On-line na Internet.</font></span></p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <span style="FONT-FAMILY: Tahoma"><font size="2"></font></span>&nbsp;</p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <span style="FONT-FAMILY: Tahoma"><font size="2">S� o nome 
                  �Populando� j� diz tudo, o classificado Populando.com.br foi 
                  criado e desenvolvido para ser popular.</font></span></p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <span style="FONT-FAMILY: Tahoma"><font size="2"></font></span>&nbsp;</p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <span style="FONT-FAMILY: Tahoma"><font size="2">E seu uso se 
                  resume em:</font></span></p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <span style="FONT-FAMILY: Tahoma"><font size="2"></font></span>&nbsp;</p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <span style="FONT-FAMILY: Tahoma; FONT-WEIGHT: 700">
                  <font size="2">Quando precisar vender...</font></span></p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <span style="FONT-FAMILY: Tahoma"><font size="2">Acesse o site 
                  e anuncie para o seu bairro, comunidade ou localidade.</font></span></p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <font size="2"><span style="FONT-FAMILY: Tahoma">A</span></font><span style="FONT-FAMILY: Tahoma"><font size="2">nuncie 
                  para a sua cidade, Regi�o ou Estado.</font></span></p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <span style="FONT-FAMILY: Tahoma"><font size="2"></font></span>&nbsp;</p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <span style="FONT-FAMILY: Tahoma; FONT-WEIGHT: 700">
                  <font size="2">Quando precisar comprar...</font></span></p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <span style="FONT-FAMILY: Tahoma"><font size="2">Acesse o 
                  site, fa�a uma busca por o que voc� est� procurando, e para 
                  filtrar melhor sua pesquisa, informe uma se��o especifica.</font></span></p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <span style="FONT-FAMILY: Tahoma"><font size="2"></font></span>&nbsp;</p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <span style="FONT-FAMILY: Tahoma"><font size="2"></font></span></p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  </p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <img border="0" src="imagens/site_populando_com_br_cf5.gif" width="429" height="88"></p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">&nbsp;</p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <span style="FONT-FAMILY: Tahoma"><font size="2">Caso encontre 
                  o que est� procurando fa�a um contato com o anunciante e 
                  concretize com ele o neg�cio.</font></span></p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  </p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <span style="FONT-FAMILY: Tahoma"><font size="2">Porque onde 
                  voc� estiver na Internet o Site Populando.com.br&nbsp;estar� para 
                  lhe servir gratuitamente.</font></span></p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <span style="FONT-FAMILY: Tahoma"><font size="2"></font></span>&nbsp;</p>
                  <p class="MsoNormal" style="MARGIN: 0px 5px">
                  <span style="FONT-FAMILY: Tahoma; FONT-WEIGHT: 700">
                  <font size="2" color="#808080">Populando.com.br -&nbsp; O 
                  Classificado mais Popular da Internet</font></span></td>
                </tr>
                <tr>
                  <td>
                  <p style="MARGIN: 0px 5px">&nbsp;</td>
                </tr>
                <tr>
                  <td>
                  &nbsp;<input onclick="javascript:history.back(1)" type="button" value="Voltar">&nbsp;<ASP:Button id="Button2" runat="server" text="Olhar an�ncios" causesvalidation="False"></ASP:Button></td>
                </tr>
              </table>
              </center>
            </div>
        </td>
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
