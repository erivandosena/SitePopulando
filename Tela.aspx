<%@ Page language="c#" Debug="true" Codebehind="Tela.pas" AutoEventWireup="false" Inherits="Tela.TWebForm1" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <title></title>
  </head>

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

  <body background="imagens/populando_img_fundo_pag.gif">

<DIV id="Layer1" style="BORDER-RIGHT: #999999 0px solid; PADDING-RIGHT: 8px; BORDER-TOP: #999999 0px solid; PADDING-LEFT: 8px; Z-INDEX: 1; VISIBILITY: hidden; PADDING-BOTTOM: 8px; BORDER-LEFT: #999999 0px solid; PADDING-TOP: 8px; BORDER-BOTTOM: #999999 0px solid; POSITION: absolute; HEIGHT: 50px; BACKGROUND-COLOR: #ffffff">
  <DIV align="center">
  <DIV style="PADDING-BOTTOM: 5px">
  <font face="Tahoma" size="2"><b>Aguarde um momento!<br>Carregando...</b></font></DIV>
  <IMG src="imagens/tempo.gif"></DIV></DIV>
<SCRIPT>
show();
</SCRIPT>

<script language="javascript"> 
res = "&res="+screen.width
location.href="Tela.aspx?action=set"+res
</script>
     <form runat="server">
     </form>
<script>
 hide();
</script>
  </body>
</html>
