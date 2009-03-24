<%@ Control Language="c#" AutoEventWireup="false" Codebehind="WebControl_AnunLatEsq.pas" Inherits="WebControl_AnunLatEsq.TWebUserControl1"%>
<%@ Register TagPrefix="cc1" Namespace="ControleMessageBox" Assembly="ControleMessageBox" %>

<table border="0" cellpadding="0" cellspacing="0" style="BORDER-COLLAPSE: collapse" bordercolor="#111111" width="285" id="AutoNumber1">
  <tr>
	<td>
	<p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
		<ASP:DataGrid id="DataGridEstados" runat="server" width="285px" gridlines="None" autogeneratecolumns="False" font-names="Tahoma" font-size="8pt">
            <HeaderStyle font-size="9pt" font-names="Tahoma" height="20px" forecolor="White" backcolor="Silver"></HeaderStyle>
            <Columns>
              <ASP:BoundColumn datafield="unome" headertext="O Brasil anuncia aqui!"></ASP:BoundColumn>
              <ASP:BoundColumn datafield="Column1"></ASP:BoundColumn>
              <ASP:HyperLinkColumn datanavigateurlfield="unome" datanavigateurlformatstring="Default.aspx?Estado={0}" datatextfield="unome" datatextformatstring="Visualizar"></ASP:HyperLinkColumn>
            </Columns></ASP:DataGrid>
	</td>
  </tr>
  <tr>
	<td height="30">
	<p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
		<ASP:Label id="LabelEstado" runat="server" font-names="Tahoma" font-size="9pt" font-bold="True" forecolor="Chocolate">Encontre o que o Brasil tem de melhor!</ASP:Label></td>
  </tr>
  <tr>
	<td>
	<p style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px">
		<marquee id="iescroller2" direction="up" width="285" height="150" scrollamount="1" scrolldelay="70" style="BORDER-BOTTOM: #999999 0px solid; BORDER-LEFT: #999999 0px solid; BORDER-TOP: #999999 0px solid; BORDER-RIGHT: #999999 0px solid" onmouseover="javascript:iescroller2.scrollAmount=0" onmouseout="javascript:iescroller2.scrollAmount=1">
		<ASP:DataGrid id="DataGridVisualiza" runat="server" width="285px" gridlines="None" autogeneratecolumns="False" font-names="Arial" font-size="8pt" borderwidth="0px">
                <HeaderStyle borderwidth="1px"></HeaderStyle>
                <Columns>
                  <ASP:HyperLinkColumn datanavigateurlfield="anun_cod" datanavigateurlformatstring="Classificados.aspx?anun_cod={0}" datatextfield="anun_titulo" headertext="As melhores variedades em an&#250;ncios voc&#234; encontra aqui!"></ASP:HyperLinkColumn>
                </Columns></ASP:DataGrid>
		</marquee>
	</td>
  </tr>
</table>
<cc1:MessageBox id="MessageBox1" runat="server"></cc1:MessageBox>
