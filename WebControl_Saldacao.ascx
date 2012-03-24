<%@ Control Language="c#" AutoEventWireup="false" Codebehind="WebControl_Saldacao.pas" Inherits="WebControl_Saldacao.TWebUserControl1"%>
<%@ Register TagPrefix="cc1" Namespace="ControleMessageBox" Assembly="ControleMessageBox" %>
<dl>
  <dd><ASP:Label id="Label1" runat="server" font-names="Verdana" font-size="8pt">Ola! Visitante, Bem-vindo(a)</ASP:Label></dd>
  <dd><ASP:LinkButton id="LinkButton1" runat="server" font-names="Tahoma" font-size="8pt" font-bold="True" causesvalidation="False">Efetuar Logout</ASP:LinkButton>
<cc1:MessageBox id="MessageBox1" runat="server"></cc1:MessageBox></dd>
  <dd><ASP:Label id="Label2" runat="server" font-names="Verdana" font-size="8pt">Temos 0 Visitantes On-line</ASP:Label>
  </dd>
</dl>
