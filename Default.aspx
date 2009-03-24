<%@ Page language="c#" Debug="true" Codebehind="Default.pas" AutoEventWireup="false" Inherits="Default.TWebForm1" EnableViewStateMac="False" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_Saldacao" Src="WebControl_Saldacao.ascx" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_BannerTop" Src="WebControl_BannerTop.ascx" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_Links" Src="WebControl_Links.ascx" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_Publicidade" Src="WebControl_Publicidade.ascx" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_Ms" Src="WebControl_Ms.ascx" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_MegaBonus" Src="WebControl_MegaBonus.ascx" %>
<%@ Register TagPrefix="cc1" Namespace="ControleMessageBox" Assembly="ControleMessageBox" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_SubMarino" Src="WebControl_SubMarino.ascx" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_AnunLatEsq" Src="WebControl_AnunLatEsq.ascx" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_MercadoLivre" Src="WebControl_MercadoLivre.ascx" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_PagSeguro1" Src="WebControl_PagSeguro1.ascx" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<!-- --------------------------------------------------------------------------- -->
<!--           ******************* RWD *********************                     -->
<!--           ************* www.rwd.net.br ****************                     -->
<!--           *********** BATURITÉ-CE *** BRAZIL **********                     -->
<!--           ********** Soluções em Sistemas Web *********                     -->
<!--                                                                             -->
<!--            Serviços >>> Manutenção >>> Desenvolvimento                      -->
<!--                                                                             -->
<!--                      erivandoramos@bol.com.br                               -->
<!--                                                                             -->
<!-- --------------------------------------------------------------------------- -->
<html>
<head>
    <title>Populando.com.br - O Classificado mais Popular da Internet</title>
<meta name="description" content="Classificado Populando - O Classificado mais Popular da Internet Brasileira">
<META name="verify-v1" content="String_we_ask_for">
<meta name="Reply-To" content="rwd@rwd.net.br">
<meta name="CopyRight" content="RWD">
<meta name="Category" content="Indices da Internet Brasil,guia,servicos,anuncios">
<meta name="Responsavel" content="Erivando Ramos">
<META NAME="keywords" CONTENT="anunciante,anunciar,barato,baturite,bonecas,carros,casas,cavalos,cdl,ceara,celulares,chacara,classificado,comercio,compra,comprar,computador,computadores,dinheiro,divulgacao,ebay,empresas,fazendas,gado,game,gratis,hoteis,hotel,informática,jass,jogos,joias,livros,mercado,moedas,moteis,motos,musica,notebooks,oferta,palms,popular,pousadas,povao,povo,programa,promocao,propaganda,publicidade,saldao,serra,sexo,sitio,software,teatro,telefones,trabalho,vender">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="refresh" content="165" />
<link rel="service.feed" type="application/atom+xml" title="Populando.com.br - Classificado Grátis!" href="rss/anuncios.xml"></link>
<link rel="alternate" type="application/rss+xml" href="/rss/anuncios.xml" title="Populando.com.br - Classificado Grátis!"></link></link></link>
<SCRIPT language="javascript">
var top = ((screen.height-95)/3)-20;
var left = (screen.width-228)/2;
 function show(){ 
 Layer1.style.visibility="visible";
 Layer1.style.top=top;
 Layer1.style.left=left;
  }
 function hide(){
 Layer1.style.visibility="hidden"; 
 }
</SCRIPT>
</head>

<body bgcolor="#ffffff" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" background="imagens/populando_img_fundo_pag.gif">
<DIV id="Layer1" style="Z-INDEX: 1; BORDER-BOTTOM: #999999 0px solid; POSITION: absolute; BORDER-LEFT: #999999 0px solid; PADDING-BOTTOM: 8px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 8px; PADDING-RIGHT: 8px; HEIGHT: 50px; VISIBILITY: hidden; BORDER-TOP: #999999 0px solid; BORDER-RIGHT: #999999 0px solid; PADDING-TOP: 8px">
  <DIV align="center">
    <DIV style="PADDING-BOTTOM: 5px"> <font face="Tahoma" size="2"><b>www.Populando.com.br<br>
      Classificado Grátis!</b></font></DIV>
    <IMG src="imagens/tempo.gif"></DIV>
</DIV>
<SCRIPT>
show();
</SCRIPT>
<form runat="server">
  <!-- ImageReady Slices -->
  <center>
    <table id="Tabela_01" width="765" height="1" border="0" cellpadding="0" cellspacing="0" style="TEXT-ALIGN: center">
      <tr>
        <td rowspan="2" valign="top"><img src="imagens/Layout_Populando_01.gif" width="290" height="184"></td>
        <td valign="middle" background="imagens/Layout_Populando_02.gif"><p align="center">
            <uc1:WebControl_BannerTop id="UserControl2" runat="server"></uc1:WebControl_BannerTop>
          </p></td>
        <td><img src="imagens/spacer.gif" width="1" height="95"></td>
        <td rowspan="5" valign="top"><ASP:Label id="Label2" runat="server"></ASP:Label>
          <table border="0" cellspacing="0" style="BORDER-COLLAPSE: collapse" bordercolor="#111111" cellpadding="0" id="AutoNumber1">
            <tr>
              <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; MARGIN-LEFT: 5px"><br>
              </td>
            </tr>
            <tr>
              <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; MARGIN-LEFT: 5px">
                  <ASP:DataGrid id="DataGrid2" runat="server" width="198px" autogeneratecolumns="False" gridlines="None" font-names="Tahoma" font-size="8pt" cellpadding="4" pagesize="17" showheader="False" allowpaging="True">
                    <HeaderStyle font-size="Smaller" font-names="Verdana" font-bold="True" wrap="False" forecolor="#FF8000"></HeaderStyle>
                    <Columns>
                    <ASP:BoundColumn datafield="anun_imagem" dataformatstring="&lt;img width=&quot;75&quot; src=/{0}&gt;"></ASP:BoundColumn>
                    <ASP:HyperLinkColumn datanavigateurlfield="anun_cod" datanavigateurlformatstring="Classificados.aspx?anun_cod={0}" datatextfield="anun_titulo">
                      <ItemStyle horizontalalign="Left" verticalalign="Top"></ItemStyle>
                    </ASP:HyperLinkColumn>
                    </Columns>
                    <PagerStyle horizontalalign="Center" pagebuttoncount="15" mode="NumericPages"></PagerStyle>
                  </ASP:DataGrid>
              </td>
            </tr>
            <tr>
              <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; MARGIN-LEFT: 5px"><br>
              </td>
            </tr>
          </table>
          <ASP:Label id="Label3" runat="server"></ASP:Label></td>
      </tr>
      <tr>
        <td rowspan="2" valign="top"><img src="imagens/Layout_Populando_03.gif" width="475" height="105"></td>
        <td><img src="imagens/spacer.gif" width="1" height="89"></td>
      </tr>
      <tr>
        <td background="imagens/Layout_Populando_04.gif"><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px" align="right"><font color="#ff6600" size="2"><strong>::RSS </strong></font>
            <ASP:ImageButton id="ImageButton5" runat="server" imageurl="imagens/rss.gif" alternatetext="RSS - Saiba dos anúncios na hora que são publicados!" imagealign="AbsBottom"></ASP:ImageButton>
            &nbsp;&nbsp; </td>
        <td><img src="imagens/spacer.gif" width="1" height="16"></td>
      </tr>
      <tr>
        <td valign="top" background="imagens/Layout_Populando_04.gif"><!-- TABELA DE CONTEUDO LATERAL ESQUERDO (inicio) -->
          
          <div align="left">
            <table border="0" cellpadding="0" cellspacing="0" style="BORDER-COLLAPSE: collapse" bordercolor="#111111" width="290" id="AutoNumber2">
              <tr>
                <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
                    <uc1:WebControl_Saldacao id="UserControl1" runat="server"></uc1:WebControl_Saldacao>
                </td>
			  </tr>
              <tr>
                <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"> </td>
              </tr>
              <tr>
                <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
                    <uc1:WebControl_Publicidade id="UserControl3" runat="server"></uc1:WebControl_Publicidade>
                </td>
              </tr>
              <tr>
                <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</td>
              </tr>
              <tr>
                <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; MARGIN-LEFT: 5px">
                  
                  <p align="center">
                    <uc1:WebControl_AnunLatEsq id="UserControl10" runat="server"></uc1:WebControl_AnunLatEsq>
                  </p></td>
              </tr>
              <tr>
                <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</td>
              </tr>
              <tr>
                <td><p align="center">
                    <uc1:WebControl_MercadoLivre id="UserControl13" runat="server"></uc1:WebControl_MercadoLivre>
                  </p></td>
              </tr>
              <tr>
                <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</td>
              </tr>
              <tr>
                <td><p align="center">
                    <uc1:WebControl_MegaBonus id="UserControl6" runat="server"></uc1:WebControl_MegaBonus>
                  </p></td>
              </tr>
              <tr>
                <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"></td>
              </tr>
              <tr>
                <td><p align="center"></p></td>
              </tr>
              <tr>
                <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"></td>
              </tr>
              <tr>
                <td><p align="center"></p></td>
              </tr>
              <tr>
                <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"></td>
              </tr>
              <tr>
                <td><p align="center"></p></td>
              </tr>
              <tr>
                <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"></td>
              </tr>
              <tr>
                <td><p align="center"></p></td>
              </tr>
              <tr>
                <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"></td>
              </tr>
              <tr>
                <td><p align="center"></p></td>
              </tr>
              <tr>
                <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"></td>
              </tr>
              <tr>
                <td><p align="center"></p></td>
              </tr>
              <tr>
                <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"></td>
              </tr>
              <tr>
                <td><p align="center"></p></td>
              </tr>
              <tr>
                <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"></td>
              </tr>
              <tr>
                <td><p align="center"></td>
              </tr>
              <tr>
                <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"></td>
              </tr>
              <tr>
                <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"></td>
              </tr>
              <tr>
                <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"></td>
              </tr>
              <tr>
                <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"></td>
              </tr>
              <tr>
                <td><p align="center"></p></td>
              </tr>
              <tr>
                <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</td>
              </tr>
            </table>
          </div>
          
		  <!-- TABELA DE CONTEUDO LATERAL ESQUERDO (final) -->
		  <a href="http://www.studioserver.com.br" target="_blank"><img src="http://powered.studioserver.com.br/hospedagem.gif" alt="Hospedagem de Sites ASP e PHP" border="0"></a>
		  </td>
		<td valign="top"><!-- TABELA DE CONTEUDO CENTRAL (inicio) -->
          
          <div align="center">
			<center>
			  <table border="0" cellpadding="0" cellspacing="0" style="BORDER-COLLAPSE: collapse" bordercolor="#111111" width="468" id="AutoNumber1">
                <tr>
                  <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
                      <ASP:Label id="Label1" runat="server" font-names="Tahoma" font-size="8pt" forecolor="DimGray"></ASP:Label>
                  </td>
                </tr>
                <tr>
                  <td valign="middle"><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
                      <ASP:HyperLink id="HyperLink1" runat="server" navigateurl="TermoPoliticaUso.aspx" font-names="Arial" font-size="8pt">Leia o Termo da Política de Uso</ASP:HyperLink>
                      &nbsp;
                      <ASP:Button id="Button1" runat="server" text="ANUNCIAR AGORA" font-bold="True" style="TOP: 286px; LEFT: 574px" width="150px" causesvalidation="False" forecolor="#333333"></ASP:Button>
                      &nbsp;
                      <ASP:ImageButton id="ImageButton6" runat="server" imageurl="imagens/indique.gif" imagealign="AbsMiddle" alternatetext="Indique o Site Populando" causesvalidation="False"></ASP:ImageButton>
                  </td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; MARGIN-LEFT: 10px"> <strong><font face="Tahoma" color="#333333" size="2">Pequisar por Estado:
                      <ASP:DropDownList id="DropList_Estados" runat="server" autopostback="True"></ASP:DropDownList>
                      <ASP:ImageButton id="ImageButton3" runat="server" imageurl="imagens/lupa.gif" imagealign="AbsBottom" alternatetext="Localizar no Estado" causesvalidation="False"> </ASP:ImageButton>
                      </font></strong></td>
                </tr>
                <tr>
                  <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; MARGIN-LEFT: 10px"> <strong><font face="Tahoma" color="#333333" size="2">Pesquisar na Cidade:
                      <ASP:DropDownList id="DropList_Cidades" runat="server"></ASP:DropDownList>
                      <ASP:ImageButton id="ImageButton4" runat="server" imageurl="imagens/lupa.gif" imagealign="AbsBottom" alternatetext="Localizar na Cidade" causesvalidation="False"> </ASP:ImageButton>
                      </font></strong></td>
                </tr>
                <tr>
                  <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; MARGIN-LEFT: 10px"> <strong><font face="Tahoma" color="#333333" size="2">Pesquisar:</strong></font></td>
                </tr>
                <tr>
                  <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; MARGIN-LEFT: 10px">
                      <ASP:TextBox id="TextPesquisa" runat="server" width="176px" maxlength="28"></ASP:TextBox>
                      &nbsp;
                      <ASP:DropDownList id="DropDownList" runat="server" width="240px">
                        <ASP:ListItem value="TODAS AS SE&#199;&#213;ES" selected="True">TODAS AS SE&#199;&#213;ES</ASP:ListItem>
                        <ASP:ListItem value="AGROPECU&#193;RIA">AGROPECU&#193;RIA</ASP:ListItem>
                        <ASP:ListItem value="ARTESANATO">ARTESANATO</ASP:ListItem>
                        <ASP:ListItem value="DIVERSOS">DIVERSOS</ASP:ListItem>
                        <ASP:ListItem value="ELETRODOM&#201;STICOS">ELETRODOM&#201;STICOS</ASP:ListItem>
                        <ASP:ListItem value="ELETR&#212;NICA">ELETR&#212;NICA</ASP:ListItem>
                        <ASP:ListItem value="EMPREGOS">EMPREGOS</ASP:ListItem>
                        <ASP:ListItem value="ENSINOS E CURSOS">ENSINOS E CURSOS</ASP:ListItem>
                        <ASP:ListItem value="EQUIPAMENTOS E SUPRIMENTOS">EQUIPAMENTOS E SUPRIMENTOS</ASP:ListItem>
                        <ASP:ListItem value="IM&#211;VEIS">IM&#211;VEIS</ASP:ListItem>
                        <ASP:ListItem value="INFORM&#193;TICA">INFORM&#193;TICA</ASP:ListItem>
                        <ASP:ListItem value="MEDICINA">MEDICINA</ASP:ListItem>
                        <ASP:ListItem value="M&#211;VEIS">M&#211;VEIS</ASP:ListItem>
                        <ASP:ListItem value="NEG&#211;CIOS">NEG&#211;CIOS</ASP:ListItem>
                        <ASP:ListItem value="SERVI&#199;OS PROFISSIONAIS">SERVI&#199;OS PROFISSIONAIS</ASP:ListItem>
                        <ASP:ListItem value="SEXO - Profissionais">SEXO - Profissionais</ASP:ListItem>
                        <ASP:ListItem value="TELEFONIA">TELEFONIA</ASP:ListItem>
                        <ASP:ListItem value="TRABALHO">TRABALHO</ASP:ListItem>
                        <ASP:ListItem value="TURISMO">TURISMO</ASP:ListItem>
                        <ASP:ListItem value="UTILIDADES DO LAR">UTILIDADES DO LAR</ASP:ListItem>
                        <ASP:ListItem value="VE&#205;CULOS">VE&#205;CULOS</ASP:ListItem>
                      </ASP:DropDownList>
                      <ASP:ImageButton id="ImageButton1" runat="server" imageurl="imagens/lupa.gif" imagealign="AbsBottom" alternatetext="Localizar " causesvalidation="False"></ASP:ImageButton>
                  </td>
                </tr>
                <tr>
                  <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; MARGIN-LEFT: 10px">
                      <ASP:LinkButton id="LinkButton2" runat="server" font-names="Tahoma" font-size="8pt" forecolor="#404040">Reiniciar Posições de Pesquisa</ASP:LinkButton>
                  </td>
                </tr>
                <tr>
                  <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</td>
                </tr>
                <tr>
                  <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
                    
                    <center>
                      <!-- Inicio os mais visualizados -->
                      <table class="boxTitulo" cellpadding="0" cellspacing="0" width="450" style="BORDER-COLLAPSE: collapse" bordercolor="#111111">
						<tr>
						  <td valign="bottom" width="10"><img src="imagens/imgs/cornerA.gif" border="0" width="10" height="6" /></td>
						  <td class="cornerB" background="imagens/imgs/cornerB.gif" valign="bottom" height="6" width="450"></td>
                          <td valign="bottom" height="6" width="10"><img src="imagens/imgs/cornerC.gif" border="0" width="10" height="6" /></td>
                        </tr>
                        <tr>
                          <td valign="top" height="1" width="10"><img src="imagens/imgs/cornerD.gif" border="0" width="10" height="25" /></td>
						  <td class="cornerE" valign="top" background="imagens/imgs/cornerE.gif" height="1" width="450"><h1 style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px" align="center"> <font face="Tahoma" size="2" color="#ffffff">.::TOP
                                          Anúncios - Os Mais Visualizados::.</font></h1></td>
                          <td valign="top" height="1" width="10"><img src="imagens/imgs/cornerF.gif" border="0" width="10" height="25" /></td>
                        </tr>
                        <tr>
                          <td class="cornerG" background="imagens/imgs/cornerG.gif" valign="top" width="10"></td>
                          <td class="cornerH" valign="top"><div align="center">
                              <center>
                                <table border="0" cellpadding="0" cellspacing="0" style="BORDER-COLLAPSE: collapse" bordercolor="#111111" width="420" id="AutoNumber1">
                                  <tr>
                                    <td align="center" valign="top"><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px" align="center">
                                        <ASP:DataGrid id="DataGridV1" runat="server" width="200px" autogeneratecolumns="False" gridlines="None" font-names="Tahoma" font-size="8pt" cellpadding="4" pagesize="4" showheader="False" allowpaging="True">
                                          <HeaderStyle font-size="Smaller" font-names="Verdana" font-bold="True" wrap="False" forecolor="#FF8000"></HeaderStyle>
                                          <Columns>
										  <ASP:BoundColumn datafield="anun_imagem" dataformatstring="&lt;img height=&quot;50&quot; src=/{0}&gt;"></ASP:BoundColumn>
                                          <ASP:HyperLinkColumn datanavigateurlfield="anun_cod" datanavigateurlformatstring="Classificados.aspx?anun_cod={0}" datatextfield="anun_titulo"></ASP:HyperLinkColumn>
                                          </Columns>
                                          <PagerStyle horizontalalign="Center" pagebuttoncount="15" mode="NumericPages"></PagerStyle>
                                        </ASP:DataGrid>
                                      </p></td>
                                    <td align="center"><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</td>
                                    <td align="center" valign="top"><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px" align="center">
                                        <ASP:DataGrid id="DataGridV2" runat="server" width="180px" autogeneratecolumns="False" gridlines="None" font-names="Tahoma" font-size="8pt" cellpadding="4" pagesize="9" showheader="False" allowpaging="True">
                                          <HeaderStyle font-size="Smaller" font-names="Verdana" font-bold="True" wrap="False" forecolor="#FF8000"></HeaderStyle>
                                          <Columns>
                                          <ASP:HyperLinkColumn datanavigateurlfield="anun_cod" datanavigateurlformatstring="Classificados.aspx?anun_cod={0}" datatextfield="anun_titulo"></ASP:HyperLinkColumn>
                                          </Columns>
                                          <PagerStyle horizontalalign="Center" mode="NumericPages"></PagerStyle>
                                        </ASP:DataGrid>
                                      </p></td>
                                  </tr>
                                </table>
                              </center>
                            </div></td>
						  <td class="cornerI" background="imagens/imgs/cornerI.gif" valign="top" width="10"></td>
                        </tr>
                        <tr>
                          <td valign="top" height="8" width="10"><img src="imagens/imgs/cornerJ.gif" border="0" width="10" height="8" /></td>
						  <td class="cornerK" background="imagens/imgs/cornerK.gif" valign="top" width="450"></td>
                          <td valign="top" height="8" width="10"><img src="imagens/imgs/cornerL.gif" border="0" width="10" height="8" /></td>
                        </tr>
                      </table>
                      <!-- Final os mais visualizados -->
                    </center></td>
                </tr>
                <tr>
                  <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; MARGIN-LEFT: 10px">&nbsp;</td>
                </tr>
                <tr>
                  <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; MARGIN-LEFT: 10px">
                      <ASP:LinkButton id="LinkButton1" runat="server" font-names="Tahoma" font-size="8pt">Mostrar Todos os Anúncios Nacionalmente</ASP:LinkButton>
                  </td>
                </tr>
                <tr>
                  <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
                      <center>
                        <ASP:DataGrid id="DataGrid1" runat="server" width="450px" autogeneratecolumns="False" allowpaging="True" gridlines="None" font-names="Arial" font-size="8pt" cellpadding="2" pagesize="33">
                          <HeaderStyle font-size="Smaller" font-names="Verdana" font-bold="True" wrap="False" forecolor="#FF8000"></HeaderStyle>
                          <Columns>
                          <ASP:BoundColumn datafield="anun_imagem" dataformatstring="&lt;img width=&quot;80&quot; src={0}&gt;"></ASP:BoundColumn>
                          <ASP:HyperLinkColumn datanavigateurlfield="anun_cod" datanavigateurlformatstring="Classificados.aspx?anun_cod={0}" datatextfield="anun_titulo" headertext="An&#250;ncio"></ASP:HyperLinkColumn>
                          <ASP:BoundColumn datafield="anun_secao" headertext="Se&#231;&#227;o"></ASP:BoundColumn>
                          </Columns>
                          <PagerStyle horizontalalign="Center" position="TopAndBottom" pagebuttoncount="30" mode="NumericPages"></PagerStyle>
                        </ASP:DataGrid>
                      </center>
                  </td>
                </tr>
                <tr>
                  <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</td>
                </tr>
                <tr>
                  <td><p align="center">
                      <uc1:WebControl_Ms id="UserControl5" runat="server"></uc1:WebControl_Ms>
                    </p></td>
                </tr>
                <tr>
                  <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</td>
                </tr>
                <tr>
                  <td><p align="center">
                      <uc1:WebControl_PagSeguro1 id="UserControl17" runat="server"></uc1:WebControl_PagSeguro1>
                    </p></td>
                </tr>
                <tr>
                  <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</td>
                </tr>
                <tr>
                  <td><p align="center"></p></td>
                </tr>
                <tr>
                  <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"></td>
                </tr>
                <tr>
                  <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"></td>
                </tr>
                <tr>
                  <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"></td>
                </tr>
                <tr>
                  <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"></td>
                </tr>
                <tr>
                  <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"></td>
                </tr>
                <tr>
                  <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"></td>
                </tr>
                <tr>
                  <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"></td>
                </tr>
                <tr>
                  <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"></td>
                </tr>
                <tr>
                  <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"></td>
                </tr>
                <tr>
                  <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
                      <ASP:Image id="Image2" runat="server" imageurl="imagens/compativel_ie.gif" alternatetext="Copyright © Microsoft Internet Explorer é marca registrada da Microsoft Corporation nos Estados Unidos e em outros países"></ASP:Image>
                      &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <ASP:Image id="Image1" runat="server" imageurl="imagens/delphi_asp_dot_net.gif" alternatetext="Copyright © Borland® Delphi® for Microsoft® .NET é marca registrada da Borland® Software Corporation"></ASP:Image>
                      &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <ASP:ImageButton id="ImageButton2" runat="server" imageurl="imagens/selo_inforamos.gif" alternatetext="Desenvolvido por: INFORAMOS - Soluções em Sistemas" causesvalidation="False"></ASP:ImageButton>
                  </td>
                </tr>
                <tr>
                  <td><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</td>
                </tr>
              </table>
            </center>
          </div>
          
          <!-- TABELA DE CONTEUDO CENTRAL (final) -->
          
          <cc1:MessageBox id="MessageBox1" runat="server"></cc1:MessageBox></td>
        <td><img src="imagens/spacer.gif" width="1" height="718"></td>
      </tr>
      <tr>
        <td colspan="2" valign="top" background="imagens/Layout_Populando_07.gif"><p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
            <uc1:WebControl_Links id="UserControl4" runat="server"></uc1:WebControl_Links>
        </td>
        <td><img src="imagens/spacer.gif" width="1" height="118"></td>
      </tr>
    </table>
  </center>
  <!-- End ImageReady Slices -->
</form>
<script>
 hide();
</script>
</body>
</html>
