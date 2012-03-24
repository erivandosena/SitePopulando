<%@ Control Language="c#" AutoEventWireup="false" Codebehind="WebControl_IndicaAmigo.pas" Inherits="WebControl_IndicaAmigo.TWebUserControl1"%>

<%@ Register TagPrefix="cc1" Namespace="ControleMessageBox" Assembly="ControleMessageBox" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_Ms" Src="WebControl_Ms.ascx" %>
<%@ Register TagPrefix="uc1" TagName="WebControl_CiaSoftwareVitrine" Src="WebControl_CiaSoftwareVitrine.ascx" %>
<!-- TABELA janela idicacao (inicio) -->
<table id="Tabela_01" width="450" border="0" cellpadding="0" cellspacing="0" style="BORDER-COLLAPSE: collapse" bordercolor="#111111">
	<tr>
		<td>
			<img src="imagens/janela_01.gif" width="10" height="25" alt=""></td>
		<td background="imagens/janela_02.gif">
        <p align="center"><b><font face="Tahoma" size="2" color="#808080">:: 
        Indique o Site POPULANDO para seus Amigos ::</font></b></td>
		<td>
			<img src="imagens/janela_03.gif" width="10" height="25" alt=""></td>
	</tr>
	<tr>
		<td background="imagens/janela_04.gif"></td>
		<td width="100%">
        <table border="0" cellpadding="0" cellspacing="0" style="BORDER-COLLAPSE: collapse" bordercolor="#111111" width="100%" id="AutoNumber1">
          <tr>
            <td width="38%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</td>
            <td width="62%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</td>
          </tr>
          <tr>
            <td width="38%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"><b>
            <font face="Tahoma" size="2">Seu Nome:</font></b></td>
            <td width="62%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
            <font face="Tahoma" size="2">
                    <ASP:TextBox id="TextNome" runat="server" width="260px"></ASP:TextBox></font></td>
          </tr>
          <tr>
            <td width="38%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</td>
            <td width="62%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
                  <ASP:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" errormessage="Informe seu Nome" font-names="Tahoma" font-size="8pt" controltovalidate="TextNome"></ASP:RequiredFieldValidator></td>
          </tr>
          <tr>
            <td width="38%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"><b>
			<font face="Tahoma" size="2">Seu E-mail:</font></b></td>
            <td width="62%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
            <font face="Tahoma" size="2">
                    <ASP:TextBox id="TextEmail" runat="server" width="260px"></ASP:TextBox></font></td>
          </tr>
          <tr>
            <td width="38%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
                  <ASP:RegularExpressionValidator id="RegularExpressionValidator6" runat="server" errormessage="Informe um E-mail válido!" font-names="Tahoma" font-size="8pt" controltovalidate="TextEmail" validationexpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></ASP:RegularExpressionValidator></td>
            <td width="62%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
                  <ASP:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" errormessage="Informe seu E-mail" font-names="Tahoma" font-size="8pt" controltovalidate="TextEmail"></ASP:RequiredFieldValidator></td>
          </tr>
          <tr>
            <td width="100%" colspan="2"><hr color="#cccccc" size="1"></td>
          </tr>
          <tr>
            <td width="38%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</td>
            <td width="62%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</td>
          </tr>
          <tr>
            <td width="38%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"></td>
            <td width="62%">
			<font face="Tahoma" size="2">
                <div align="left">
                  <ASP:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" errormessage="Indique no mínimo 1 amigo, iniciando do nº 1!" font-names="Tahoma" font-size="8pt" controltovalidate="TextEmail1"></ASP:RequiredFieldValidator>
                </div></font></td>
          </tr>
          <tr>
            <td width="38%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
            <font face="Tahoma" size="2" color="#333333">E-mail do(a) Amigo(a) 1:</font></td>
            <td width="62%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
            <font face="Tahoma" size="2">
                    <ASP:TextBox id="TextEmail1" runat="server" width="260px"></ASP:TextBox></font></td>
          </tr>
          <tr>
            <td width="38%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</td>
            <td width="62%">
                <p align="left">
                  <ASP:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" errormessage="Informe um E-mail válido!" font-names="Tahoma" font-size="8pt" controltovalidate="TextEmail1" validationexpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></ASP:RegularExpressionValidator></p></td>
          </tr>
          <tr>
            <td width="38%">
			<p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px"></td>
            <td width="62%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
			<font face="Tahoma" size="2"></font></td>
          </tr>
          <tr>
            <td width="38%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
            <font face="Tahoma" size="2" color="#333333">E-mail do(a) Amigo(a) 2:</font></td>
            <td width="62%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
            <font face="Tahoma" size="2">
                    <ASP:TextBox id="TextEmail2" runat="server" width="260px"></ASP:TextBox></font></td>
          </tr>
          <tr>
            <td width="38%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</td>
            <td width="62%">
                <p align="left">
                  <ASP:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" errormessage="Informe um E-mail válido!" font-names="Tahoma" font-size="8pt" controltovalidate="TextEmail2" validationexpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></ASP:RegularExpressionValidator></p></td>
          </tr>
          <tr>
            <td width="38%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
			<font face="Tahoma" size="2"></font></td>
            <td width="62%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
			<font face="Tahoma" size="2"></font></td>
          </tr>
          <tr>
            <td width="38%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
            <font face="Tahoma" size="2" color="#333333">E-mail do(a) Amigo(a) 3:</font></td>
            <td width="62%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
            <font face="Tahoma" size="2">
                    <ASP:TextBox id="TextEmail3" runat="server" width="260px"></ASP:TextBox></font></td>
          </tr>
          <tr>
            <td width="38%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</td>
            <td width="62%">
                <p align="left">
                  <ASP:RegularExpressionValidator id="RegularExpressionValidator3" runat="server" errormessage="Informe um E-mail válido!" font-names="Tahoma" font-size="8pt" controltovalidate="TextEmail3" validationexpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></ASP:RegularExpressionValidator></p></td>
          </tr>
          <tr>
            <td width="38%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
			<font face="Tahoma" size="2"></font></td>
            <td width="62%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
			<font face="Tahoma" size="2"></font></td>
          </tr>
          <tr>
            <td width="38%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
            <font face="Tahoma" size="2" color="#333333">E-mail do(a) Amigo(a) 4:</font></td>
            <td width="62%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
            <font face="Tahoma" size="2">
                    <ASP:TextBox id="TextEmail4" runat="server" width="260px"></ASP:TextBox></font></td>
          </tr>
          <tr>
            <td width="38%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</td>
            <td width="62%">
                <p align="left">
                  <ASP:RegularExpressionValidator id="RegularExpressionValidator4" runat="server" errormessage="Informe um E-mail válido!" font-names="Tahoma" font-size="8pt" controltovalidate="TextEmail4" validationexpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></ASP:RegularExpressionValidator></p></td>
          </tr>
          <tr>
            <td width="38%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
			<font face="Tahoma" size="2"></font></td>
            <td width="62%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
			<font face="Tahoma" size="2"></font></td>
          </tr>
          <tr>
            <td width="38%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
            <font face="Tahoma" size="2" color="#333333">E-mail do(a) Amigo(a) 5:</font></td>
            <td width="62%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
            <font face="Tahoma" size="2">
                    <ASP:TextBox id="TextEmail5" runat="server" width="260px"></ASP:TextBox></font></td>
          </tr>
          <tr>
            <td width="38%">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;</td>
            <td width="62%">
                <p align="left">
                  <ASP:RegularExpressionValidator id="RegularExpressionValidator5" runat="server" errormessage="Informe um E-mail válido!" font-names="Tahoma" font-size="8pt" controltovalidate="TextEmail5" validationexpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></ASP:RegularExpressionValidator></p></td>
          </tr>
          <tr>
            <td width="100%" colspan="2">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
            <font face="Tahoma" size="2" color="#808080">Você pode indicar 1 ou 
            até 5 amigos de cada vez,&nbsp;após clicar em "Enviar" preencha novamente o formulário e indique quantos&nbsp;amigos </font><font face="Tahoma" size="2" color="#808080">
            você quiser!</font></td>
          </tr>
          <tr>
            <td width="100%" colspan="2"><hr color="#cccccc" size="1">
                <div align="center">
                </div></td>
          </tr>
          <tr>
            <td width="100%" colspan="2"></td>
          </tr>
          <tr>
            <td width="100%" colspan="2">
            <p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px" align="center">
            <font face="Tahoma" size="2">
                    <ASP:Button id="ButtonEnviar" runat="server" text="Enviar"></ASP:Button>&nbsp; 
                    
                    <ASP:Button id="ButtonSair" runat="server" text="Sair" causesvalidation="False"></ASP:Button></font></td>
          </tr>
        </table>
		<p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">&nbsp;<cc1:MessageBox id="MessageBox1" runat="server"></cc1:MessageBox>
		</td>
		<td background="imagens/janela_06.gif"></td>
	</tr>
	<tr>
		<td>
			<img src="imagens/janela_07.gif" width="10" height="8" alt=""></td>
		<td background="imagens/janela_08.gif"></td>
		<td>
			<img src="imagens/janela_09.gif" width="10" height="8" alt=""></td>
	</tr>
</table>
<p>
<!-- TABELA janela idicacao (final) -->
