<%@ Page language="c#" Debug="true" Codebehind="EstadosCidades.pas" AutoEventWireup="false" Inherits="EstadosCidades.TWebForm1" EnableViewStateMac="False" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <title id="PageTitulo" runat="server"></title>
  </head>

<body bgcolor="#ffffff" background="imagens/populando_img_fundo_pag.gif">
	 <form runat="server">
      <p><font face="Tahoma" size="2"></font>
      </p>
      <p><font face="Tahoma" size="2">
      </p>
      <p><font face="Tahoma" size="2">
      </p>
      <p><font face="Tahoma" size="2">Seu Estado: 
                            <ASP:DropDownList id="DropDownList1" runat="server" autopostback="True"></ASP:DropDownList><font face="Tahoma" size="2"></font>
      </p>
      <p><font face="Tahoma" size="2">Sua Cidade: 
                            <ASP:DropDownList id="DropDownList2" runat="server"></ASP:DropDownList>
      </p>
      <dl><font face="Tahoma" size="2"><dt>
        <p align="center">
          <ASP:Button id="Button1" runat="server" text="Confirmar"></ASP:Button>
        </p></dt>
      </dl>
     </form></font></font></font></font></font>
  </body>
</html>
