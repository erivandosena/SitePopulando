<%@ Page language="c#" Debug="true" Codebehind="Anuncio.pas" AutoEventWireup="false" Inherits="Anuncio.TWebForm1" ValidateRequest="False" EnableViewStateMac="False" %>
<%@ Register TagPrefix="ftb" Namespace="FreeTextBoxControls" Assembly="FreeTextBox" %>
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
                    <td style="HEIGHT: 42px">
                            <dl>
                              <dt><font face="Tahoma" size="2"><strong>INFORME&nbsp;OS DADOS DO SEU ANÚNCIO</strong></font></dt>
                              <dt>
                      <p align="justify"><font face="Arial" size="2">É importante informar todos os campos solicitados, estas informações serão de muita importância para o possível interessado em seu anúncio.</font>
                      </p></dt>
                            </dl></font></td>
                  </tr>
                  <tr>
                    <td>
                      <p align="justify"><font face="Arial" size="2"></font>
                      </p></td>
                  </tr>
                  <tr>
                    <td><font face="Tahoma" size="2">Seção:</font></td>
                  </tr><tr>
                    <td><font face="Tahoma" size="2"><ASP:DropDownList id="DropDownList" runat="server" width="300px" autopostback="True">
                                <ASP:ListItem selected="True"></ASP:ListItem>
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
                  </ASP:DropDownList></font></td>
                  </tr>
                  <tr>
                    <td>
                            <table cellspacing="0" cellpadding="0" width="450" border="0">
                                <tr>
                                  <td>
                                    <ASP:Label id="Label1" runat="server"></ASP:Label></td>
                                </tr>
                            </table>&nbsp; </td>
                  </tr>
                  <tr>
					<td><font face="Tahoma"><font size="2">Título: </font><font size="1">(Ex. Microcomputador Completo)</font>
                            </font></td>
                  </tr>
                  <tr>
                    <td><font face="Tahoma" size="2"><font size="1">
                      <ASP:TextBox id="TextTitulo" runat="server" width="300px" maxlength="40"></ASP:TextBox>&nbsp;
                                <ASP:ImageButton id="ImageButton1" runat="server" imagealign="AbsBottom" imageurl="imagens/dica_importante.gif" alternatetext="Clique aqui!" causesvalidation="False"></ASP:ImageButton></font></font></td>
                  </tr>
                  <tr>
                    <td>
                            <table cellspacing="0" cellpadding="0" width="450" border="0">
                                <tr>
                                  <td>
                                    <ASP:Label id="Label2" runat="server"></ASP:Label></td>
                                </tr>
                            </table>&nbsp; </td>
                  </tr>
                  <tr>
                    <td><font face="Tahoma" size="2">Duração do Anúncio:</font></td>
                  </tr>
                  <tr>
                    <td>
                            <ASP:DropDownList id="DropDownListDias" runat="server">
                              <ASP:ListItem></ASP:ListItem>
                              <ASP:ListItem value="5">5</ASP:ListItem>
                              <ASP:ListItem value="10">10</ASP:ListItem>
                              <ASP:ListItem value="15">15</ASP:ListItem>
                              <ASP:ListItem value="30">30</ASP:ListItem>
                              <ASP:ListItem value="60">60</ASP:ListItem>
                              <ASP:ListItem value="90">90</ASP:ListItem>
                            </ASP:DropDownList>&nbsp;<font face="Tahoma" size="2">Dia(s)&nbsp; 
                              <ASP:CheckBox id="CheckBox1" runat="server" text="Alterar duração do anúncio"></ASP:CheckBox></font></td>
                  </tr>
                  <tr>
                    <td>
                      <p>&nbsp;</p></td>
                  </tr>
                  <tr>
                    <td><font face="Tahoma"><font size="2">Descrição: </font><font size="1">(Ex. Processador Core 2 Duo 3Ghz, 1G de memória, HD de 160G... apenas R$ 999,00)</font>
                            </font></td>
                  </tr>
                  <tr>
                    <td><font face="Tahoma" size="2"><font>
                      <p>
							
							<ftb:FreeTextBox language="pt-PT" id="FreeTextBoxDesc" runat="server" enablehtmlmode="False" width="450px" height="300px" supportfolder="/anuncios/FreeTextBox/" breakmode="LineBreak"></ftb:FreeTextBox>
							<font size="1"><font color="#ff3333"><strong>Atenção:</strong>

									</font><font color="#584d58">Na descrição, ao usar imagens, tabelas, URLs ou caracteres sem espaço, respeite o limite de largura do&nbsp;campo de edição&nbsp;acima, para evitar perca de visibilidade das informações no momento da exibição do anúncio.</font>
                                  </font></p></font></font></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;<font face="Tahoma"><font size="2">Imagem: </font><font size="1">(Permitido tipos Jpeg ou Gif&nbsp;com&nbsp;250&nbsp;pixels de largura&nbsp;com altura proporcional)</font>
                            </font></td>
                  </tr>
                  <tr>
                    <td><font face="Tahoma" size="2">&nbsp;
                      <ASP:Image id="ImageAnuncio" runat="server" width="250px"></ASP:Image></font></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td><font face="Tahoma" size="2">Localizar Origem:</font></td>
                  </tr>
                  <tr>
                    <td><input id="file1" type="file" name="file1" runat="Server" style="WIDTH: 300px; HEIGHT: 20px" size="1">
                      <ASP:Button id="ButExcluirImg" runat="server" text="Excluir Imagem" height="20px" causesvalidation="False"></ASP:Button></td>
                  </tr>
                  <tr>
                    <td>&nbsp;
                      </td>
                  </tr>
                  <tr>
                    <td><font face="Tahoma" size="2"><strong>
                                <ASP:Button id="ButNovo" runat="server" text="Novo" causesvalidation="False"></ASP:Button>
                      <ASP:Button id="ButSalvar" runat="server" text="Salvar"></ASP:Button>
                      <ASP:Button id="ButExcluir" runat="server" text="Excluir" causesvalidation="False"></ASP:Button><input onclick="javascript:history.back(1)" type="button" value="Voltar">
                      <ASP:Button id="ButAlterarDados" runat="server" text="Alterar meus dados" causesvalidation="False" width="154px"></ASP:Button>
                      <ASP:Button id="ButCancelar" runat="server" text="Cancelar" causesvalidation="False"></ASP:Button></strong>
                      </font></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td><font face="Tahoma" size="2"><strong>&nbsp;Meus Anúncios: </strong><font size="1">(Clique no link abaixo para Visualizar, Alterar, Excluir)</font></font></td>
                  </tr>
                  <tr>
                    <td>
                      <p align="center">
                      <ASP:DataGrid id="DataGrid1" runat="server" width="450px" allowpaging="True" pagesize="15" autogeneratecolumns="False" bordercolor="#999999" borderstyle="None" borderwidth="1px" backcolor="White" cellpadding="3" gridlines="Vertical" showheader="False" font-names="Tahoma" font-size="Smaller">
                                <FooterStyle forecolor="Black" backcolor="#CCCCCC"></FooterStyle>
                                <SelectedItemStyle font-bold="True" forecolor="White" backcolor="#008A8C"></SelectedItemStyle>
                                <AlternatingItemStyle backcolor="Gainsboro"></AlternatingItemStyle>
                                <ItemStyle forecolor="Black" backcolor="#EEEEEE"></ItemStyle>
                                <HeaderStyle font-bold="True" forecolor="White" backcolor="#000084"></HeaderStyle>
                                <Columns>
                                  <ASP:BoundColumn datafield="anun_secao" headertext="Sec&#227;o"></ASP:BoundColumn>
                                  <ASP:HyperLinkColumn datanavigateurlfield="anun_cod" datanavigateurlformatstring="Anuncio.aspx?anun_cod={0}" datatextfield="anun_titulo" headertext="T&#237;tulo do An&#250;ncio"></ASP:HyperLinkColumn>
                                </Columns>
                                <PagerStyle horizontalalign="Center" forecolor="Black" backcolor="#999999" mode="NumericPages"></PagerStyle></ASP:DataGrid></p></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr><tr>
                          <td>
                      <p align="center">
                      <ASP:Button id="Button2" runat="server" text="Olhar os Anúncios Publicados" causesvalidation="False"></ASP:Button></p></td>
                        </tr>
                        <tr>
                          <td>
                            <p align="center">
        <ASP:ValidationSummary id="ValidationSummary1" runat="server" font-names="Tahoma" font-size="9pt"></ASP:ValidationSummary></p>
                            <p>
        <ASP:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" errormessage="Informe a Seção" controltovalidate="DropDownList" display="None"></ASP:RequiredFieldValidator>
        <ASP:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" errormessage="Informe o Título" controltovalidate="TextTitulo" display="None"></ASP:RequiredFieldValidator>
        <ASP:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" errormessage="Informe a Duração do Anúncio" controltovalidate="DropDownListDias" display="None"></ASP:RequiredFieldValidator>
        <ASP:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" errormessage="Informe a Descrição" controltovalidate="FreeTextBoxDesc" display="None"></ASP:RequiredFieldValidator><cc1:MessageBox id="MessageBox1" runat="server"></cc1:MessageBox></p></td>
                        </tr>
              </table></td>
		<td>
			<img src="imagens/spacer.gif" width="1" height="717" alt=""></td>
	</tr>
	<tr>
		<td colspan="2" background="imagens/site_populando_com_br_07.gif" valign="top">
                  <p align="center">
                    <uc1:WebControl_Links id="UserControl3" runat="server"></uc1:WebControl_Links>
                  </p></td>
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
