
unit Anuncio;

interface

uses
  System.Collections, System.ComponentModel,
  System.Data, System.Drawing, System.Web, System.Web.SessionState,
  System.Web.UI, System.Web.UI.WebControls, System.Web.UI.HtmlControls, 
  FreeTextBoxControls, FirebirdSql.Data.Firebird, ControleMessageBox,
  System.IO, SysUtils, System.Globalization, System.Security.Cryptography,
  System.Configuration, System.Text;

type
  TWebForm1 = class(System.Web.UI.Page)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
    procedure TWebForm1_Load(sender: System.Object; e: System.EventArgs);
    procedure ButExcluirImg_Click(sender: System.Object; e: System.EventArgs);
    procedure ButSalvar_Click(sender: System.Object; e: System.EventArgs);
    procedure ButExcluir_Click(sender: System.Object; e: System.EventArgs);
    procedure ButAlterarDados_Click(sender: System.Object; e: System.EventArgs);
    procedure ButCancelar_Click(sender: System.Object; e: System.EventArgs);
    procedure DataGrid1_PageIndexChanged(source: System.Object; e: System.Web.UI.WebControls.DataGridPageChangedEventArgs);
    procedure Button2_Click(sender: System.Object; e: System.EventArgs);
    procedure ButNovo_Click(sender: System.Object; e: System.EventArgs);
    procedure ImageButton1_Click(sender: System.Object; e: System.Web.UI.ImageClickEventArgs);
    procedure DropDownList_SelectedIndexChanged(sender: System.Object; e: System.EventArgs);

  {$ENDREGION}
  strict private

  strict protected
  PageTitulo: system.web.ui.htmlcontrols.htmlgenericcontrol;
    TextTitulo: System.Web.UI.WebControls.TextBox;
    TextMail: System.Web.UI.WebControls.TextBox;
    ButSalvar: System.Web.UI.WebControls.Button;
    ImageAnuncio: System.Web.UI.WebControls.Image;
    ButAlterarDados: System.Web.UI.WebControls.Button;
    MessageBox1: ControleMessageBox.MessageBox;
    DataGrid1: System.Web.UI.WebControls.DataGrid;
    file1: System.Web.UI.HtmlControls.HtmlInputFile;
    ButExcluirImg: System.Web.UI.WebControls.Button;
    FbDataAdapter1: FirebirdSql.Data.Firebird.FbDataAdapter;
    FbConnection1: FirebirdSql.Data.Firebird.FbConnection;
    FbCommand4: FirebirdSql.Data.Firebird.FbCommand;
    DataSet1: System.Data.DataSet;
    FbDataAdapter2: FirebirdSql.Data.Firebird.FbDataAdapter;
    FbCommand8: FirebirdSql.Data.Firebird.FbCommand;
    ButCancelar: System.Web.UI.WebControls.Button;
    ButExcluir: System.Web.UI.WebControls.Button;
    Button2: System.Web.UI.WebControls.Button;
    DropDownList: System.Web.UI.WebControls.DropDownList;
    RequiredFieldValidator1: System.Web.UI.WebControls.RequiredFieldValidator;
    RequiredFieldValidator2: System.Web.UI.WebControls.RequiredFieldValidator;
    RequiredFieldValidator3: System.Web.UI.WebControls.RequiredFieldValidator;
    ValidationSummary1: System.Web.UI.WebControls.ValidationSummary;
    DropDownListDias: System.Web.UI.WebControls.DropDownList;
    RequiredFieldValidator4: System.Web.UI.WebControls.RequiredFieldValidator;
    FbCommand1: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand2: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand3: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand5: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand6: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand7: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand9: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand10: FirebirdSql.Data.Firebird.FbCommand;
    ButNovo: System.Web.UI.WebControls.Button;
    ImageButton1: System.Web.UI.WebControls.ImageButton;
    FbCommandVerifica: FirebirdSql.Data.Firebird.FbCommand;
    CheckBox1: System.Web.UI.WebControls.CheckBox;
    Label1: System.Web.UI.WebControls.Label;
    Label2: System.Web.UI.WebControls.Label;
    FreeTextBoxDesc: FreeTextBoxControls.FreeTextBox;
    procedure OnInit(e: EventArgs); override;
  private
    { Private Declarations }
    Codigo, Anuncio: System.Object;
    procedure SelecionaAnuncios;
  public
    { Public Declarations }
    procedure LerDados;
    procedure ExecutarCommand(Com: FbCommand);
  end;

  var
  DataAnun, AFile, Extensao, Arq, Arquivo: String;
  Tamanho, Permitido: Double;
  DataVencimento, DataAtual: TDate;
  script: StringBuilder;

  DirArq: String;
  ArquivoSR: StreamReader;
  ArquivoSW: StreamWriter;

  ds, dm ,m,a, h, FormatoRSS: String;
  DataHora: DateTime;

implementation

uses UnCliptografia;

{$REGION 'Designer Managed Code'}
/// <summary>
/// Required method for Designer support -- do not modify
/// the contents of this method with the code editor.
/// </summary>
procedure TWebForm1.ExecutarCommand(Com: FbCommand);
begin
//if not Self.IsValid then Exit;
  Com.Connection.Open();
  try try
    { Para inserção não deve ser fornecido o Codigo }
    if Anuncio <> nil then
      Com.Parameters['@p1'].Value := Anuncio;
    { Somente Insert e Update têm mais parâmetros }
    if Com <> FbDataAdapter1.DeleteCommand then
    begin
      Com.Parameters['@p2'].Value := DropDownList.SelectedItem.Text;
      Com.Parameters['@p3'].Value := TextTitulo.Text.ToUpper;
      Com.Parameters['@p4'].Value := FreeTextBoxDesc.Text;
      if ImageAnuncio.ImageUrl <> 'imagens/populando_sem_imagem.gif' then
      begin
      Com.Parameters['@p5'].Value := ImageAnuncio.ImageUrl;
      end;
      Com.Parameters['@p6'].Value := Codigo;
      Com.Parameters['@p7'].Value := System.String.Format('{0:dd/MM/yyyy}', System.DateTime.Now.AddDays(System.Convert.ToInt32(DropDownListDias.SelectedItem.Text)));
      if Com = FbDataAdapter1.UpdateCommand then
      begin
      Com.Parameters['@p7'].Value := System.String.Format('{0:dd/MM/yyyy}',DataAnun);
      if CheckBox1.Checked = True then
      begin
      Com.Parameters['@p7'].Value := System.String.Format('{0:dd/MM/yyyy}', System.DateTime.Now.AddDays(System.Convert.ToInt32(DropDownListDias.SelectedItem.Text)));
      end;
      end;
      Com.Parameters['@p8'].Value := '1';

   if file1.PostedFile.FileName <> '' then
   begin
   Permitido:= 150;
   aFile:= Path.GetFileName(file1.PostedFile.FileName);
   if aFile = nil then
   begin
   MessageBox1.ShowMessage('Adicione uma imagem com largura máxima de 250 pixels.');
   Exit;
   end;
   //verificamos a extensão através dos últimos 4 caracteres
   Extensao:= aFile.Substring(aFile.Length - 4).ToLower();
   if (extensao <> '.jpg') and (extensao <> '.gif') then
   begin
   MessageBox1.ShowMessage('Só é permitido imagens do tipo *.jpg e *.gif');
   Exit;
   end;
   //identifica o tamanho do arquivo
   Tamanho:= Convert.ToDouble(file1.PostedFile.ContentLength)/1024;
   if (tamanho > permitido) then
   begin
   MessageBox1.ShowMessage('O tamanho máximo permitido do arquivo é de '+ Convert.ToString(Permitido)+'Kb');
   Exit;
   end;
   Afile:= Session['Codigo'].ToString+ChangeFileExt(aFile,'');
   Afile:= Criptografia(AFile)+Extensao;
   file1.PostedFile.SaveAs(Server.MapPath('/')+'anuncios\imagens\'+Afile);
   Com.Parameters['@p5'].Value:= 'anuncios/imagens/'+Afile;

   if ('anuncios/imagens/'+Afile.ToString <> ImageAnuncio.ImageUrl) and (ImageAnuncio.ImageUrl <> 'imagens/populando_sem_imagem.gif') then
   begin
   Arq:= Server.MapPath(ImageAnuncio.ImageUrl);
   if System.IO.&File.Exists(Arq) then
   begin
   System.IO.&File.Delete(Arq);
   end;

  end;

  end;

  if Session['ImagemAnuncio'] <> nil then
  begin
  Com.Parameters['@p5'].IsNullable;
  Session['ImagemAnuncio']:= nil;
  ImageAnuncio.ImageUrl:= 'imagens/populando_sem_imagem.gif';
  end;

    end;
  { Executa Comando Insert, Update ou Delete }
  Com.ExecuteNonQuery();
  finally
  Com.Connection.Close();
  end;
  except
  MessageBox1.ShowMessage('Erro ao executar a operação de gravação dos dados!');
  end;

 DirArq:= Server.MapPath('/')+'rss/anuncios.xml';
 if &File.Exists(DirArq) then
 begin
 ArquivoSR:= &File.OpenText(DirArq);
 ArquivoSR.Close;
 end;

DataHora:= System.DateTime.Now;
ds:= FormatDateTime('ddd',DataHora);
dm:= FormatDateTime('dd',DataHora);
m:= FormatDateTime('MMM',DataHora);
a:= FormatDateTime('yyyy',DataHora);
h:= FormatDateTime('HH:mm:ss',DataHora);
// Dias da semana
if ds = 'seg' then
ds:= 'Mon'
else
if ds = 'ter' then
ds:= 'Tue'
else
if ds = 'qua' then
ds:= 'Wed'
else
if ds = 'qui' then
ds:= 'Thu'
else
if ds = 'sex' then
ds:= 'Fri'
else
if ds = 'sab' then
ds:= 'Sat'
else
if ds = 'dom' then
ds:= 'Sun';
//Meses
if m = 'jan' then
m:= 'Jan'
else
if m = 'fev' then
m:= 'Feb'
else
if m = 'mar' then
m:= 'Mar'
else
if m = 'abr' then
m:= 'Apr'
else
if m = 'mai' then
m:= 'May'
else
if m = 'jun' then
m:= 'Jun'
else
if m = 'jul' then
m:= 'Jul'
else
if m = 'ago' then
m:= 'Aug'
else
if m = 'set' then
m:= 'Sep'
else
if m = 'out' then
m:= 'Oct'
else
if m = 'nov' then
m:= 'Nov'
else
if m = 'dez' then
m:= 'Dec';
// Monta data e hora para o feed rss
FormatoRSS:=  ds+', '+dm+' '+m+' '+a+' '+h+' GMT';

 ArquivoSW:= StreamWriter.Create(DirArq);
 ArquivoSW.WriteLine('<?xml version="1.0" ?>');
 ArquivoSW.WriteLine('<rss version="2.0">');
 ArquivoSW.WriteLine('  <channel>');
 ArquivoSW.WriteLine('  <title>Populando</title>');
 ArquivoSW.WriteLine('  <description>Populando.com.br - O Classficado mais Popular da Internet</description>');
 ArquivoSW.WriteLine('  <link>http://'+ HttpContext.Current.Request.Url.Authority +'</link>');
 ArquivoSW.WriteLine('  <language>pt-br</language>');
 ArquivoSW.WriteLine('  <copyright>Copyright (C) RWD Desenvolvimento Web</copyright>');
 ArquivoSW.WriteLine('  <lastBuildDate>'+FormatoRSS+'</lastBuildDate>');
 ArquivoSW.WriteLine('  <generator>Populando RSS</generator>');
 ArquivoSW.WriteLine('  <item>');
 ArquivoSW.WriteLine('  <title>Populando.com.br - Classificado Grátis!</title>');
 ArquivoSW.WriteLine('  <link>http://'+ HttpContext.Current.Request.Url.Authority +'</link>');
 ArquivoSW.WriteLine('  <description>');
 ArquivoSW.WriteLine('<![CDATA[');
 ArquivoSW.WriteLine('');
 ArquivoSW.WriteLine('<b>'+System.DateTime.Now.ToLongDateString+' - '+TextTitulo.Text.ToUpper.ToString+'</b><br><br>');
 ArquivoSW.WriteLine(''+FreeTextBoxDesc.Text.ToString+'');
 ArquivoSW.WriteLine('  <br />');
 ArquivoSW.WriteLine('  ]]>');
 ArquivoSW.WriteLine('  </description>');
 ArquivoSW.WriteLine('  <author>Anunciante: '+Session['Email'].ToString+'</author>');
 ArquivoSW.WriteLine('  <pubDate>'+FormatoRSS+'</pubDate>');
 ArquivoSW.WriteLine('  <guid>http://'+ HttpContext.Current.Request.Url.Authority +'</guid>');
 ArquivoSW.WriteLine('  </item>');
 ArquivoSW.WriteLine('  </channel>');
 ArquivoSW.WriteLine('  </rss>');
 ArquivoSW.Close;

 Response.Redirect('Anuncio.aspx');
end;

procedure TWebForm1.DropDownList_SelectedIndexChanged(sender: System.Object;
  e: System.EventArgs);
begin
  if DropDownList.SelectedItem.Text = 'SEXO - Profissionais' then
  begin
  Label1.Text:= '<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="450" id="AutoNumber1"> '+
  '<tr> '+
    '<td valign="bottom"> '+
    '<p style="margin-top: 0; margin-bottom: 0"><b><font face="Tahoma" size="2"> '+
    'Está vetado e proibido apresentar, produzir, vender, fornecer, divulgar e '+
    'publicar conteúdos de:</font></b></td> '+
  '</tr> '+
  '<tr> '+
    '<td> '+
    '<ul style="color: #FF3300"> '+
      '<li> '+
      '<p style="margin-top: 0; margin-bottom: 0"><font face="Tahoma" size="1"> '+
      '<font color="#333333">Pedofilia, pornografia infantil, ou '+
      'qualquer tipo de produto que exponha menores de idade.</font> </font></li> '+
      '<li> '+
      '<p style="margin-top: 0; margin-bottom: 0"> '+
      '<font face="Tahoma" size="1" color="#333333">Sexo forçado, violações, '+
      'filmes &quot;snuff&quot;. </font></li> '+
      '<li> '+
      '<p style="margin-top: 0; margin-bottom: 0"> '+
      '<font face="Tahoma" size="1" color="#333333">Filmes ou fotografias que '+
      'tenham sido realizadas de forma ilegal ou sem a autorização.</font></li> '+
      '<li> '+
      '<p style="margin-top: 0; margin-bottom: 0"> '+
      '<font face="Tahoma" size="1" color="#333333">Anúncios com material adulto que não seja na cessão especifica (SEXO - Profissionais).</font></li> '+
      '<li> '+
      '<p style="margin-top: 0; margin-bottom: 0"><font face="Tahoma" size="1"> '+
      '<font color="#333333">Publicações que violem as normas de '+
      'conduta exigidas no </font> '+
      '<a target="_blank" href="http://'+ HttpContext.Current.Request.Url.Authority +'/TermoPoliticaUso.aspx"> '+
      'Termo da Política de Uso</a><font color="#333333">.</font></font></li> '+
    '</ul> '+
    '</td> '+
  '</tr> '+
  '<tr> '+
    '<td valign="top"> '+
    '<p style="margin-top: 0; margin-bottom: 0"><b> '+
    '<font face="Tahoma" size="1" color="#CC3300">O usuário que infringir estas '+
    'normas poderá ter seu cadastro excluído deste Site e responder judicialmente '+
    'as penalidades prevista em Lei.</font></b></td> '+
  '</tr> '+
'</table>';
Label2.Visible:= True;
Label2.Text:= '<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="450" id="AutoNumber2"> '+
  '<tr> '+
    '<td valign="bottom"> '+
    '<p style="margin-top: 0; margin-bottom: 0"><b> '+
    '<font face="Verdana" size="1" color="#FF0000">Atenção:</font></b></td> '+
  '</tr> '+
  '<tr> '+
    '<td> '+
    '<ul> '+
      '<li> '+
      '<p style="margin-top: 0; margin-bottom: 0"> '+
      '<font face="Tahoma" size="1" color="#333333">Não use no &quot;Título&quot;, '+
      'palavras, termos ou expressões do tipo vulgar, obscenos ou imorais, seja '+
      'profissional e discreto.</font></li> '+
    '</ul> '+
    '</td> '+
  '</tr> '+
  '<tr> '+
    '<td valign="top"> '+
    '<p style="margin-top: 0; margin-bottom: 0"> '+
    '<font face="Tahoma" size="1" color="#CC3300">A não utilização desta regra '+
    'implicará em exclusão do seu anúncio e posteriormente a suspensão do '+
    'cadastro neste Site.</font></td> '+
  '</tr> '+
'</table>';

  end;
  if DropDownList.SelectedItem.Text <> 'SEXO - Profissionais' then
  begin
  Label1.Text:= '<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="450" id="AutoNumber2"> '+
  '<tr> '+
    '<td valign="bottom"> '+
    '<p style="margin-top: 0; margin-bottom: 0"><b> '+
    '<font face="Verdana" size="1" color="#FF0000">Comunicado Importante:</font></b></td> '+
  '</tr> '+
  '<tr> '+
    '<td> '+
    '<ul> '+
      '<li> '+
      '<p style="margin-top: 0; margin-bottom: 0"> '+
      '<font face="Tahoma" size="1" color="#333333">Só publique conteúdo adulto '+
      'neste site utilizando a cessão especifica &quot;SEXO - Profissionais&quot;.</font></li> '+
    '</ul> '+
    '</td> '+
  '</tr> '+
  '<tr> '+
    '<td valign="top"> '+
    '<p style="margin-top: 0; margin-bottom: 0"> '+
    '<font face="Tahoma" size="1" color="#CC3300">O descumprimento implica na '+
    'exclusão automática do seu anúncio.</font></td> '+
  '</tr> '+
'</table>';
Label2.Visible:= False;
  end;
end;

procedure TWebForm1.ImageButton1_Click(sender: System.Object; e: System.Web.UI.ImageClickEventArgs);
begin
  script := StringBuilder.Create;
  script.Append('<script language="JavaScript">');
  script.Append('window.open("DicaAnuncio.aspx", "",');
  script.Append('"resizable=no, menubar=no, scrollbars=yes, width= 590, height= 425")');
  script.Append('</script>');
  RegisterClientScriptBlock('client', script.ToString);
end;

procedure TWebForm1.ButNovo_Click(sender: System.Object; e: System.EventArgs);
begin
  Response.Redirect('Anuncio.aspx');
end;

procedure TWebForm1.Button2_Click(sender: System.Object; e: System.EventArgs);
begin
  Response.Redirect('Default.aspx');
end;

procedure TWebForm1.ButExcluir_Click(sender: System.Object; e: System.EventArgs);
begin
if ImageAnuncio.ImageUrl <> 'imagens/populando_sem_imagem.gif' then
begin
      System.IO.&File.Delete(Server.MapPath(ImageAnuncio.ImageUrl));
end;
      ExecutarCommand(FbDataAdapter1.DeleteCommand);
end;

procedure TWebForm1.ButCancelar_Click(sender: System.Object; e: System.EventArgs);
begin
Session['Usuario']:= nil;
Response.Redirect('Default.aspx');
end;

procedure TWebForm1.SelecionaAnuncios;
begin
  FbDataAdapter2.SelectCommand.Parameters['@p1'].Value:= Codigo;
  FbDataAdapter2.Fill(DataSet1);
  DataGrid1.DataSource := DataSet1;
  DataGrid1.DataBind;
end;

procedure TWebForm1.DataGrid1_PageIndexChanged(source: System.Object; e: System.Web.UI.WebControls.DataGridPageChangedEventArgs);
begin
  DataGrid1.CurrentPageIndex:= e.NewPageIndex;
  SelecionaAnuncios;
end;

procedure TWebForm1.ButAlterarDados_Click(sender: System.Object; e: System.EventArgs);
begin
if Session['Usuario'] = nil then
Response.Redirect('Login.aspx')
else
Response.Redirect('Usuario.aspx?usu_cod='+Codigo.ToString);
end;

procedure TWebForm1.ButSalvar_Click(sender: System.Object; e: System.EventArgs);
var
dr: FbDataReader;
begin
    if Anuncio = nil then
    begin
  //##### Verifica cadastro existente ao inserir
  FbConnection1.Open;
  try
    FbCommandVerifica.Parameters[0].Value:= Codigo.ToString;
    FbCommandVerifica.Parameters[1].Value:= TextTitulo.Text.ToUpper;
    dr:= FbCommandVerifica.ExecuteReader;
    if dr.Read() then
    begin
    if Convert.ToInt32(dr['COUNT'].ToString) <> 0 then
    begin
    MessageBox1.ShowMessage('Título já existente! Não é permitido títulos repetidos. Informe outro nome para o título deste anúncio.');
    Exit;
    end else
    end;
  finally
    FbConnection1.Close;
  end;
  //#####
    Session['Mail']:= 'Populando - Cadastro Efetuado';
    ExecutarCommand(FbDataAdapter1.InsertCommand);
    Exit;
  end else
  //***** Verifica se houve mudanças no campo principal
   if TextTitulo.Text.ToUpper <> Session['TituloAnuncio'].ToString then
   begin
  //##### Verifica cadastro existente ao atualizar
  FbConnection1.Open;
  try
    FbCommandVerifica.Parameters[0].Value:= Codigo.ToString;
    FbCommandVerifica.Parameters[1].Value:= TextTitulo.Text.ToUpper;
    dr:= FbCommandVerifica.ExecuteReader;
    if dr.Read() then
    begin
    if Convert.ToInt32(dr['COUNT'].ToString) <> 0 then
    begin
    MessageBox1.ShowMessage('Título já existente! Não é permitido títulos repetidos. Informe outro nome para o título deste anúncio.');
    Exit;
    end else
    end;
  finally
    FbConnection1.Close;
  end;
  //#####
   end;
  //*****
    Session['Mail']:= 'Populando - Alteração de Cadastro';
    ExecutarCommand(FbDataAdapter1.UpdateCommand);
end;

procedure TWebForm1.ButExcluirImg_Click(sender: System.Object; e: System.EventArgs);
begin
      Arq:= Server.MapPath(ImageAnuncio.ImageUrl);
      if System.IO.&File.Exists(Arq) then
      begin
      System.IO.&File.Delete(Arq);
      ImageAnuncio.ImageUrl:= nil;
      Session['ImagemAnuncio']:= 'Excluir';
      ExecutarCommand(FbDataAdapter1.UpdateCommand);
      Exit;
      end else
      MessageBox1.ShowMessage('Não existe imagem para exclusão!');
end;

procedure TWebForm1.InitializeComponent;
var
  configurationAppSettings: System.Configuration.AppSettingsReader;
begin
  configurationAppSettings := System.Configuration.AppSettingsReader.Create;
  Self.FbCommand4 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand8 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbConnection1 := FirebirdSql.Data.Firebird.FbConnection.Create;
  Self.DataSet1 := System.Data.DataSet.Create;
  Self.FbDataAdapter2 := FirebirdSql.Data.Firebird.FbDataAdapter.Create;
  Self.FbCommand6 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand3 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand2 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand5 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbDataAdapter1 := FirebirdSql.Data.Firebird.FbDataAdapter.Create;
  Self.FbCommand10 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand7 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand1 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand9 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommandVerifica := FirebirdSql.Data.Firebird.FbCommand.Create;
  (System.ComponentModel.ISupportInitialize(Self.DataSet1)).BeginInit;
  Include(Self.DropDownList.SelectedIndexChanged, Self.DropDownList_SelectedIndexChanged);
  Include(Self.ImageButton1.Click, Self.ImageButton1_Click);
  Include(Self.ButExcluirImg.Click, Self.ButExcluirImg_Click);
  Include(Self.ButNovo.Click, Self.ButNovo_Click);
  Include(Self.ButSalvar.Click, Self.ButSalvar_Click);
  Include(Self.ButExcluir.Click, Self.ButExcluir_Click);
  Include(Self.ButAlterarDados.Click, Self.ButAlterarDados_Click);
  Include(Self.ButCancelar.Click, Self.ButCancelar_Click);
  Include(Self.DataGrid1.PageIndexChanged, Self.DataGrid1_PageIndexChanged);
  Include(Self.Button2.Click, Self.Button2_Click);
  // 
  // FbCommand4
  // 
  Self.FbCommand4.CommandText := 'DELETE FROM ANUNCIOS WHERE (ANUN_COD = @p1' +
  ')';
  Self.FbCommand4.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p1', FirebirdSql.Data.Firebird.FbDbType.Integer, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'ANUN_COD', System.Data.DataRowVersion.Original, 
        nil));
  // 
  // FbConnection1
  // 
  Self.FbConnection1.ConnectionString := (string(configurationAppSettings.GetValue('F' +
    'bConnection1.ConnectionString', TypeOf(string))));
  // 
  // DataSet1
  // 
  Self.DataSet1.DataSetName := 'NewDataSet';
  Self.DataSet1.Locale := System.Globalization.CultureInfo.Create('pt-BR');
  // 
  // FbDataAdapter2
  // 
  Self.FbDataAdapter2.DeleteCommand := Self.FbCommand6;
  Self.FbDataAdapter2.InsertCommand := Self.FbCommand3;
  Self.FbDataAdapter2.SelectCommand := Self.FbCommand2;
  Self.FbDataAdapter2.UpdateCommand := Self.FbCommand5;
  // 
  // FbCommand2
  // 
  Self.FbCommand2.CommandText := 'select anun_cod, anun_secao, anun_titulo, ' +
  'anun_descricao, anun_imagem, usu_cod, anun_data, anun_confirmacao from an' +
  'uncios where usu_cod = @p1 order by 2';
  Self.FbCommand2.Connection := Self.FbConnection1;
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p1', FirebirdSql.Data.Firebird.FbDbType.Integer, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'usu_cod', System.Data.DataRowVersion.Current, 
        nil));
  // 
  // FbDataAdapter1
  // 
  Self.FbDataAdapter1.DeleteCommand := Self.FbCommand10;
  Self.FbDataAdapter1.InsertCommand := Self.FbCommand7;
  Self.FbDataAdapter1.SelectCommand := Self.FbCommand1;
  Self.FbDataAdapter1.UpdateCommand := Self.FbCommand9;
  // 
  // FbCommand10
  // 
  Self.FbCommand10.CommandText := 'DELETE FROM ANUNCIOS WHERE (ANUN_COD = @p' +
  '1)';
  Self.FbCommand10.Connection := Self.FbConnection1;
  Self.FbCommand10.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p1', FirebirdSql.Data.Firebird.FbDbType.Integer, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'ANUN_COD', System.Data.DataRowVersion.Original, 
        nil));
  // 
  // FbCommand7
  // 
  Self.FbCommand7.CommandText := 'INSERT INTO ANUNCIOS (ANUN_SECAO,ANUN_TITU' +
  'LO,ANUN_DESCRICAO,ANUN_IMAGEM,USU_COD,ANUN_DATA,ANUN_CONFIRMACAO) VALUES ' +
  '(@p2,@p3,@p4,@p5,@p6,@p7,@p8)';
  Self.FbCommand7.Connection := Self.FbConnection1;
  Self.FbCommand7.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p2', FirebirdSql.Data.Firebird.FbDbType.VarChar, 30, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'ANUN_SECAO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand7.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p3', FirebirdSql.Data.Firebird.FbDbType.VarChar, 40, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'ANUN_TITULO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand7.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p4', FirebirdSql.Data.Firebird.FbDbType.Text, 0, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'ANUN_DESCRICAO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand7.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p5', FirebirdSql.Data.Firebird.FbDbType.VarChar, 250, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'ANUN_IMAGEM', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand7.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p6', FirebirdSql.Data.Firebird.FbDbType.Integer, 4, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'USU_COD', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand7.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p7', FirebirdSql.Data.Firebird.FbDbType.Date, 0, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'ANUN_DATA', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand7.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p8', FirebirdSql.Data.Firebird.FbDbType.Char, 1, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'ANUN_CONFIRMACAO', System.Data.DataRowVersion.Current, 
        nil));
  // 
  // FbCommand1
  // 
  Self.FbCommand1.CommandText := 'select anun_cod, anun_secao, anun_titulo, ' +
  'anun_descricao, anun_imagem, usu_cod, anun_data, anun_confirmacao from an' +
  'uncios where anun_cod = @p1';
  Self.FbCommand1.Connection := Self.FbConnection1;
  Self.FbCommand1.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p1', FirebirdSql.Data.Firebird.FbDbType.Integer, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'anun_cod', System.Data.DataRowVersion.Current, 
        nil));
  // 
  // FbCommand9
  // 
  Self.FbCommand9.CommandText := 'UPDATE ANUNCIOS SET ANUN_SECAO = @p2,ANUN_' +
  'TITULO = @p3,ANUN_DESCRICAO = @p4,ANUN_IMAGEM = @p5,USU_COD = @p6,ANUN_DA' +
  'TA = @p7,ANUN_CONFIRMACAO = @p8 WHERE (ANUN_COD = @p1)';
  Self.FbCommand9.Connection := Self.FbConnection1;
  Self.FbCommand9.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p1', FirebirdSql.Data.Firebird.FbDbType.Integer, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'ANUN_COD', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand9.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p2', FirebirdSql.Data.Firebird.FbDbType.VarChar, 30, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'ANUN_SECAO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand9.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p3', FirebirdSql.Data.Firebird.FbDbType.VarChar, 40, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'ANUN_TITULO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand9.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p4', FirebirdSql.Data.Firebird.FbDbType.Text, 0, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'ANUN_DESCRICAO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand9.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p5', FirebirdSql.Data.Firebird.FbDbType.VarChar, 250, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'ANUN_IMAGEM', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand9.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p6', FirebirdSql.Data.Firebird.FbDbType.Integer, 4, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'USU_COD', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand9.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p7', FirebirdSql.Data.Firebird.FbDbType.Date, 0, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'ANUN_DATA', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand9.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p8', FirebirdSql.Data.Firebird.FbDbType.Char, 1, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'ANUN_CONFIRMACAO', System.Data.DataRowVersion.Current, 
        nil));
  // 
  // FbCommandVerifica
  // 
  Self.FbCommandVerifica.CommandText := 'select count(1) from anuncios where' +
  ' usu_cod = ? and upper(anun_titulo) = ?';
  Self.FbCommandVerifica.Connection := Self.FbConnection1;
  Self.FbCommandVerifica.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('U' +
      'SUARIO', FirebirdSql.Data.Firebird.FbDbType.Integer, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'usu_cod', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommandVerifica.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('T' +
      'ITULO', FirebirdSql.Data.Firebird.FbDbType.VarChar, 40, 'anun_titulo'));
  Include(Self.Load, Self.TWebForm1_Load);
  (System.ComponentModel.ISupportInitialize(Self.DataSet1)).EndInit;
end;
procedure TWebForm1.LerDados;
var
  dr: FbDataReader;
begin
   with FbDataAdapter1.SelectCommand do
   begin
     Parameters['@p1'].Value := Anuncio;
      try try
        Connection.Open();
        dr := ExecuteReader();
        if dr.Read() then
        begin
    if (Codigo.ToString.Trim  <> dr['usu_cod'].ToString.Trim) then
    begin
    Response.redirect('Login.aspx');
    Exit;
    end else
        DropDownList.SelectedItem.Text:= dr['anun_secao'].ToString;
        TextTitulo.Text:= dr['anun_titulo'].ToString;
        DataVencimento:= Convert.ToDateTime(dr['anun_data']);
        DataAtual:= Convert.ToDateTime(System.DateTime.Now.ToShortDateString);
        DropDownListDias.SelectedItem.Text:= Convert.ToDouble(DataVencimento-DataAtual).ToString;
        FreeTextBoxDesc.Text:= dr['anun_descricao'].ToString;
        ImageAnuncio.ImageUrl:= dr['anun_imagem'].ToString;
        DataAnun:= dr['anun_data'].ToString;
        Session['TituloAnuncio']:= dr['anun_titulo'].ToString;
        end;
      finally
        Connection.Close();
      end;
 except
  MessageBox1.ShowMessage('Erro ao executar a operação de leitura dos dados!');
  end;
   end;
end;

{$ENDREGION}

procedure TWebForm1.TWebForm1_Load(sender: System.Object; e: System.EventArgs);
begin
  // TODO: Put user code to initialize the page here
PageTitulo.innertext:= 'Populando.com.br - Onde você anuncia e encontra tudo';
if Session['Usuario'] = nil then
Response.Redirect('Login.aspx')
else
Codigo:= Session['Codigo'];
if Request.QueryString['anun_cod'] <> nil then
begin
Anuncio:= Request.QueryString['anun_cod'];
end;
if not IsPostBack then
begin
SelecionaAnuncios;
ImageAnuncio.Visible:= False;
ButExcluirImg.Visible:= False;
ButExcluir.Visible:= False;
ButNovo.Visible:= False;
CheckBox1.Visible:= False;
if Anuncio <> nil then
begin
LerDados;
ButNovo.Visible:= True;
ImageAnuncio.Visible:= True;
CheckBox1.Visible:= True;
if ImageAnuncio.ImageUrl <> nil then
begin
ButExcluirImg.Visible:= True;
end;
ButExcluir.Visible:= True;

end;

if ImageAnuncio.ImageUrl = nil then
begin
ImageAnuncio.ImageUrl:= 'imagens/populando_sem_imagem.gif';
end;

if ImageAnuncio.ImageUrl = 'imagens/populando_sem_imagem.gif' then
begin
ButExcluirImg.Visible:= False;
end;

end;

end;


procedure TWebForm1.OnInit(e: EventArgs);
begin
  //
  // Required for Designer support
  //
  InitializeComponent;
  inherited OnInit(e);
end;

end.

