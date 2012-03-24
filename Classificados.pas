
unit Classificados;

interface

uses
  System.Collections, System.ComponentModel,
  System.Data, System.Drawing, System.Web, System.Web.SessionState,
  System.Web.UI, System.Web.UI.WebControls, System.Web.UI.HtmlControls, 
  FirebirdSql.Data.Firebird, ControleMessageBox, System.Web.Mail, System.IO, 
  System.Globalization, System.Configuration;

type
  TWebForm1 = class(System.Web.UI.Page)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
    procedure Button1_Click(sender: System.Object; e: System.EventArgs);
    procedure LinkButton1_Click(sender: System.Object; e: System.EventArgs);
    procedure DataGrid_ItemDataBound(sender: System.Object; e: System.Web.UI.WebControls.DataGridItemEventArgs);
    procedure DataGridImg_ItemDataBound(sender: System.Object; e: System.Web.UI.WebControls.DataGridItemEventArgs);
    procedure Button2_Click(sender: System.Object; e: System.EventArgs);
    procedure Button3_Click(sender: System.Object; e: System.EventArgs);
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
  PageTitulo: system.web.ui.htmlcontrols.htmlgenericcontrol;
    Button1: System.Web.UI.WebControls.Button;
    DataGrid1: System.Web.UI.WebControls.DataGrid;
    FbConnection1: FirebirdSql.Data.Firebird.FbConnection;
    FbCommand1: FirebirdSql.Data.Firebird.FbCommand;
    MessageBox1: ControleMessageBox.MessageBox;
    Image1: System.Web.UI.WebControls.Image;
    Label1: System.Web.UI.WebControls.Label;
    Label2: System.Web.UI.WebControls.Label;
    Label3: System.Web.UI.WebControls.Label;
    Label4: System.Web.UI.WebControls.Label;
    Label5: System.Web.UI.WebControls.Label;
    Label6: System.Web.UI.WebControls.Label;
    Label7: System.Web.UI.WebControls.Label;
    Label8: System.Web.UI.WebControls.Label;
    Label9: System.Web.UI.WebControls.Label;
    LinkButton1: System.Web.UI.WebControls.LinkButton;
    DataSet1: System.Data.DataSet;
    FbDataAdapterVerifica: FirebirdSql.Data.Firebird.FbDataAdapter;
    FbCommand4: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand5: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand6: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand7: FirebirdSql.Data.Firebird.FbCommand;
    DataGrid: System.Web.UI.WebControls.DataGrid;
    DataGridImg: System.Web.UI.WebControls.DataGrid;
    FbDataAdapterImg: FirebirdSql.Data.Firebird.FbDataAdapter;
    FbCommand3: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand8: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand9: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand10: FirebirdSql.Data.Firebird.FbCommand;
    DataSet2: System.Data.DataSet;
    Button2: System.Web.UI.WebControls.Button;
    Button3: System.Web.UI.WebControls.Button;
    FbDA_ContaAnuncio: FirebirdSql.Data.Firebird.FbDataAdapter;
    FbCommand11: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand12: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand13: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand14: FirebirdSql.Data.Firebird.FbCommand;
    FbCommandSomaV: FirebirdSql.Data.Firebird.FbCommand;
    procedure OnInit(e: EventArgs); override;
  private
    { Private Declarations }
    Anuncio, visualizacoes: System.Object;
    procedure SelecionaAnuncio;
    procedure ExecutarCommandAviso(Com: FbCommand);
  public
    { Public Declarations }
  end;

  var
  dr: FbDataReader;
  DataVencimento, DataAtual: TDate;
  Mail: System.Web.Mail.MailMessage;
  cdoBasic : &Object;
  username, senhaserver, servidor, ArqImagem, CodigoAnun: String;
  AnunVisualizado: Integer;

implementation

uses UnCliptografia;

{$REGION 'Designer Managed Code'}
/// <summary>
/// Required method for Designer support -- do not modify
/// the contents of this method with the code editor.
/// </summary>
procedure TWebForm1.InitializeComponent;
var
  configurationAppSettings: System.Configuration.AppSettingsReader;
begin
  configurationAppSettings := System.Configuration.AppSettingsReader.Create;
  Self.FbConnection1 := FirebirdSql.Data.Firebird.FbConnection.Create;
  Self.FbCommand1 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.DataSet1 := System.Data.DataSet.Create;
  Self.FbDataAdapterVerifica := FirebirdSql.Data.Firebird.FbDataAdapter.Create;
  Self.FbCommand7 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand5 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand4 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand6 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbDataAdapterImg := FirebirdSql.Data.Firebird.FbDataAdapter.Create;
  Self.FbCommand10 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand8 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand3 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand9 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.DataSet2 := System.Data.DataSet.Create;
  Self.FbDA_ContaAnuncio := FirebirdSql.Data.Firebird.FbDataAdapter.Create;
  Self.FbCommand14 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand12 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand11 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand13 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommandSomaV := FirebirdSql.Data.Firebird.FbCommand.Create;
  (System.ComponentModel.ISupportInitialize(Self.DataSet1)).BeginInit;
  (System.ComponentModel.ISupportInitialize(Self.DataSet2)).BeginInit;
  Include(Self.Button1.Click, Self.Button1_Click);
  Include(Self.Button3.Click, Self.Button3_Click);
  Include(Self.LinkButton1.Click, Self.LinkButton1_Click);
  Include(Self.Button2.Click, Self.Button2_Click);
  Include(Self.DataGrid.ItemDataBound, Self.DataGrid_ItemDataBound);
  Include(Self.DataGridImg.ItemDataBound, Self.DataGridImg_ItemDataBound);
  // 
  // FbConnection1
  // 
  Self.FbConnection1.ConnectionString := (string(configurationAppSettings.GetValue('F' +
    'bConnection1.ConnectionString', TypeOf(string))));
  // 
  // FbCommand1
  // 
  Self.FbCommand1.CommandText := 'select anun_cod, anun_secao, anun_titulo, ' +
  'anun_descricao, anun_imagem, anun_data, anun_confirmacao, anun_visualizac' +
  'ao, usu_nome, usu_cidade, usu_estado, usu_telefone, usu_email from anunci' +
  'os, usuarios where anuncios.usu_cod = usuarios.usu_cod and anun_cod = ?';
  Self.FbCommand1.Connection := Self.FbConnection1;
  Self.FbCommand1.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('A' +
      'NUNCIO', FirebirdSql.Data.Firebird.FbDbType.Integer, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'anun_cod', System.Data.DataRowVersion.Current, 
        nil));
  // 
  // DataSet1
  // 
  Self.DataSet1.DataSetName := 'NewDataSet';
  Self.DataSet1.Locale := System.Globalization.CultureInfo.Create('pt-BR');
  // 
  // FbDataAdapterVerifica
  // 
  Self.FbDataAdapterVerifica.DeleteCommand := Self.FbCommand7;
  Self.FbDataAdapterVerifica.InsertCommand := Self.FbCommand5;
  Self.FbDataAdapterVerifica.SelectCommand := Self.FbCommand4;
  Self.FbDataAdapterVerifica.UpdateCommand := Self.FbCommand6;
  // 
  // FbCommand7
  // 
  Self.FbCommand7.CommandText := 'DELETE FROM ANUNCIOS WHERE (anun_data < CU' +
  'RRENT_DATE and anun_confirmacao = ''2'') ';
  Self.FbCommand7.Connection := Self.FbConnection1;
  Self.FbCommand7.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p1', FirebirdSql.Data.Firebird.FbDbType.Integer, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'ANUN_COD', System.Data.DataRowVersion.Original, 
        nil));
  // 
  // FbCommand5
  // 
  Self.FbCommand5.Connection := Self.FbConnection1;
  // 
  // FbCommand4
  // 
  Self.FbCommand4.CommandText := 'select anun_cod, anun_titulo, anun_data, u' +
  'su_nome, usu_email, anun_visualizacao from anuncios, usuarios where anun_' +
  'data <= CURRENT_DATE and anun_confirmacao = ''1'' and anuncios.usu_cod = ' +
  'usuarios.usu_cod order by 2';
  Self.FbCommand4.Connection := Self.FbConnection1;
  // 
  // FbCommand6
  // 
  Self.FbCommand6.CommandText := 'UPDATE ANUNCIOS SET ANUN_CONFIRMACAO = @p2' +
  ' where (ANUN_COD = @p1)';
  Self.FbCommand6.Connection := Self.FbConnection1;
  Self.FbCommand6.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p1', FirebirdSql.Data.Firebird.FbDbType.Integer, 4, 'ANUN_COD'));
  Self.FbCommand6.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p2', FirebirdSql.Data.Firebird.FbDbType.Char, 1, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'ANUN_CONFIRMACAO', System.Data.DataRowVersion.Current, 
        nil));
  // 
  // FbDataAdapterImg
  // 
  Self.FbDataAdapterImg.DeleteCommand := Self.FbCommand10;
  Self.FbDataAdapterImg.InsertCommand := Self.FbCommand8;
  Self.FbDataAdapterImg.SelectCommand := Self.FbCommand3;
  Self.FbDataAdapterImg.UpdateCommand := Self.FbCommand9;
  // 
  // FbCommand3
  // 
  Self.FbCommand3.CommandText := 'select anun_imagem from anuncios where anu' +
  'n_data < CURRENT_DATE and anun_imagem is not null and anun_confirmacao = ' +
  '''2'' order by 1';
  Self.FbCommand3.Connection := Self.FbConnection1;
  // 
  // DataSet2
  // 
  Self.DataSet2.DataSetName := 'NewDataSet';
  Self.DataSet2.Locale := System.Globalization.CultureInfo.Create('pt-BR');
  // 
  // FbDA_ContaAnuncio
  // 
  Self.FbDA_ContaAnuncio.DeleteCommand := Self.FbCommand14;
  Self.FbDA_ContaAnuncio.InsertCommand := Self.FbCommand12;
  Self.FbDA_ContaAnuncio.SelectCommand := Self.FbCommand11;
  Self.FbDA_ContaAnuncio.UpdateCommand := Self.FbCommand13;
  // 
  // FbCommand14
  // 
  Self.FbCommand14.Connection := Self.FbConnection1;
  // 
  // FbCommand12
  // 
  Self.FbCommand12.Connection := Self.FbConnection1;
  // 
  // FbCommand11
  // 
  Self.FbCommand11.Connection := Self.FbConnection1;
  // 
  // FbCommand13
  // 
  Self.FbCommand13.CommandText := 'UPDATE ANUNCIOS SET ANUN_VISUALIZACAO = @' +
  'p2 WHERE (ANUN_COD = @p1)';
  Self.FbCommand13.Connection := Self.FbConnection1;
  Self.FbCommand13.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p1', FirebirdSql.Data.Firebird.FbDbType.Integer, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'ANUN_COD', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand13.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p2', FirebirdSql.Data.Firebird.FbDbType.Integer, 0, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'ANUN_VISUALIZACAO', System.Data.DataRowVersion.Current, 
        nil));
  // 
  // FbCommandSomaV
  // 
  Self.FbCommandSomaV.CommandText := 'UPDATE ANUNCIOS SET ANUN_VISUALIZACAO ' +
  '= ? WHERE (ANUN_COD = ?)';
  Self.FbCommandSomaV.Connection := Self.FbConnection1;
  Self.FbCommandSomaV.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('V' +
      'ISUALIZACAO', FirebirdSql.Data.Firebird.FbDbType.Integer, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'anun_visualizacao', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommandSomaV.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('C' +
      'OD', FirebirdSql.Data.Firebird.FbDbType.Integer, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'anun_cod', System.Data.DataRowVersion.Current, 
        nil));
  Include(Self.Load, Self.Page_Load);
  (System.ComponentModel.ISupportInitialize(Self.DataSet1)).EndInit;
  (System.ComponentModel.ISupportInitialize(Self.DataSet2)).EndInit;
end;
{$ENDREGION}

procedure TWebForm1.Page_Load(sender: System.Object; e: System.EventArgs);
begin
// TODO: Put user code to initialize the page here
  PageTitulo.innertext:= 'Populando.com.br - Onde você anuncia e encontra tudo';
Anuncio:= Request.QueryString['anun_cod'];
if not IsPostBack then
begin
    SelecionaAnuncio;
AnunVisualizado:= AnunVisualizado+1;
  FbConnection1.Open;
  try
    try
    FbCommandSomaV.Parameters[1].Value := Anuncio;
    FbCommandSomaV.Parameters[0].Value := AnunVisualizado.ToString;
    FbCommandSomaV.ExecuteNonQuery;
  finally
    FbConnection1.Close;
  end;
  except
  MessageBox1.ShowMessage('Erro ao executar a operação de gravação dos dados!');
  end;

// Envia alerta de anuncio
if (System.DateTime.Now.Hour > 6) and (System.DateTime.Now.Hour < 12) then
begin
  FbDataAdapterVerifica.SelectCommand.CommandText:= 'select anun_cod, anun_titulo, anun_data, usu_nome, usu_email, anun_visualizacao from anuncios, usuarios where anun_data <= CURRENT_DATE and anun_confirmacao = '+#39+'1'+#39+' and anuncios.usu_cod = usuarios.usu_cod order by 1';
  FbDataAdapterVerifica.Fill(DataSet1);
  DataGrid.DataSource:= DataSet1;
  DataGrid.DataBind;
end;
// Exclui anuncio e imagem se houver
if (System.DateTime.Now.Hour > 18) or (System.DateTime.Now.Hour < 6) then
begin
// Exclui imagem
  FbDataAdapterImg.Fill(DataSet2);
  DataGridImg.DataSource := DataSet2;
  DataGridImg.DataBind;
// Exclui anuncio
  FbDataAdapterVerifica.SelectCommand.CommandText:= 'select anun_cod from anuncios where anun_data < CURRENT_DATE and anun_confirmacao = '+#39+'2'+#39+' order by 1';
  FbDataAdapterVerifica.Fill(DataSet1);
  DataGrid.DataSource := DataSet1;
  DataGrid.DataBind;
end;

end;

// Verifica se o anúncio existe
if Label1.Text.ToString.Trim = nil then
begin
Response.Redirect('SemAnuncio.aspx');
end;

// Verifica se o anúncio é de sexo
if Label2.Text.ToString.Trim = 'SEXO - Profissionais' then
begin
Response.Redirect('AnuncioRestrito.aspx?anun_cod='+Anuncio.ToString);
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

procedure TWebForm1.SelecionaAnuncio;
begin
AnunVisualizado:= 0;
    FbConnection1.Open;
  try
    try
      FbCommand1.Parameters[0].Value := Anuncio;
      dr := FbCommand1.ExecuteReader;
      if dr.Read then
      begin
        Label1.Text := dr['anun_titulo'].ToString;
        Label2.Text := dr['anun_secao'].ToString;
        Label3.Text := dr['usu_nome'].ToString;
        Label4.Text := dr['usu_cidade'].ToString;
        Label5.Text := dr['usu_estado'].ToString;
        Label8.Text := dr['usu_nome'].ToString;
        Label9.Text := dr['usu_telefone'].ToString;
        LinkButton1.Text := dr['usu_email'].ToString;
        if dr['anun_visualizacao'].ToString <> nil then
        begin
        AnunVisualizado:= Convert.ToInt32(dr['anun_visualizacao']);
        end;
        if dr['anun_visualizacao'].ToString = nil then
        begin
        AnunVisualizado:= 0;
        end;
        DataVencimento:= Convert.ToDateTime(dr['anun_data']);
        DataAtual:= Convert.ToDateTime(System.DateTime.Now.ToShortDateString);
        Label6.Text:= Convert.ToDouble(DataVencimento-DataAtual).ToString +' Dia(s)';
        if Convert.ToDouble(DataVencimento-DataAtual) = 1 then
        begin
        Label6.Text:= Convert.ToDouble(DataVencimento-DataAtual).ToString +' Dia(s)';
        end;
        Label7.Text:= '<div style="overflow-x: hidden; width:439">'+dr['anun_descricao'].ToString+'</div>';
        Image1.ImageUrl:= dr['anun_imagem'].ToString;
        if dr['anun_imagem'].ToString = nil then
        begin
        Image1.ImageUrl:= 'imagens/populando_100_imagem.gif';
        end;

        end;
    finally
      FbConnection1.Close;
    end;
 except
    MessageBox1.ShowMessage('Erro ao executar a operação de leitura dos dados!');
  end;
end;

procedure TWebForm1.DataGrid_ItemDataBound(sender: System.Object; e: System.Web.UI.WebControls.DataGridItemEventArgs);
begin
if (e.Item.ItemType = ListItemType.Item) or (e.Item.ItemType = ListItemType.AlternatingItem) then
begin
// Aviso por e-mail
if (System.DateTime.Now.Hour > 6) and (System.DateTime.Now.Hour < 12) then
begin
CodigoAnun:= e.Item.Cells[0].Text.ToString;
visualizacoes:= e.Item.Cells[5].Text;
if visualizacoes = nil then
begin
visualizacoes:= &Object(0);
end;

cdoBasic:= (1 as &Object);
username:= 'smtp';//usuário
senhaserver:= 'smtp2004';//senha
servidor:= 'smtp.populando.com.br';//smtp
Mail := MailMessage.create;
  try
    with Mail do
    begin
    From := 'Populando<populando@populando.com.br>';
    &To := e.Item.Cells[4].Text.ToLower;
    Bcc := 'populando@populando.com.br';
    Subject := 'Seu anúncio será finalizado!';
    BodyFormat:= System.Web.Mail.MailFormat.Html;
    Body := '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"> '+
'<HTML><HEAD> '+
'<META http-equiv=Content-Type content="text/html; charset=iso-8859-1"> '+
'<META content="MSHTML 6.00.2900.2180" name=GENERATOR> '+
'<STYLE></STYLE> '+
'</HEAD> '+
'<p align=center><body link="#333333" vlink="#000000" alink="#999999"> '+

'<TABLE cellSpacing=0 cellPadding=0 width=548 align=center> '+
'<TBODY> '+
'<TR> '+
'<TD> '+
'<IMG height=124 src="http://www.populando.com.br/imagens/topo_email.gif" width=548 alt="Populando - O Classificado mais Popular da Internet"></TD></TR> '+
'<TR> '+
'<TD style="PADDING-RIGHT: 25px; PADDING-LEFT: 25px; PADDING-BOTTOM: 25px; FONT: 12px Arial, Helvetica, sans-serif; PADDING-TOP: 25px" vAlign=top background=http://www.populando.com.br/imagens/fundo_email.gif> '+
'<div align="center"> '+
  '<center> '+
  '<table border="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="498" cellpadding="0" id="AutoNumber1"> '+
    '<tr> '+
      '<td> '+
      '<p style="margin-top: 0; margin-bottom: 0"><span style="font-size: 9pt"> '+
      'Prezado(a),</span></td> '+
    '</tr> '+
    '<tr> '+
      '<td> '+
      '<p style="margin-top: 0; margin-bottom: 0"> '+
      '<span style="font-size: 9pt; font-weight: 700">'+e.Item.Cells[3].Text.ToString+'</span></td> '+
    '</tr> '+
    '<tr> '+
      '<td> '+
      '<p style="margin-top: 0; margin-bottom: 0">&nbsp;</td> '+
    '</tr> '+
    '<tr> '+
      '<td> '+
      '<p style="margin-top: 0; margin-bottom: 0" align="justify"> '+
      '<span style="font-size: 9pt">Seu anúncio publicado no Site Populando será '+
      'finalizado em algumas horas.<br> '+
      '<br> '+
      'Para continuar utilizando gratuitamente este serviço de classificado '+
      'acesse agora mesmo o Site. Faça login em sua conta de usuário, caso o seu '+
      'anúncio ainda esteja acessível, será possível alterar o tempo de duração, '+
      'título, descrição e imagem.<br> '+
      '<br> '+
      'Caso o anúncio tenha sido finalizado, cadastre um novo e continue a '+
      'participar do maior conteúdo de negócios nacionais em classificados grátis '+
      'que mais cresce na Internet.</span></td> '+
    '</tr> '+
    '<tr> '+
      '<td> '+
      '<p style="margin-top: 0; margin-bottom: 0">&nbsp;</td> '+
    '</tr> '+
    '<tr> '+
      '<td> '+
      '<div align="left"> '+
        '<table border="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="497" cellpadding="0" id="AutoNumber2"> '+
          '<tr> '+
            '<td width="117"> '+
            '<p style="margin-top: 0; margin-bottom: 0"> '+
            '<span style="font-size: 9pt">Anúncio:</span></td> '+
            '<td width="380"> '+
            '<p style="margin-top: 0; margin-bottom: 0"> '+
            '<span style="font-size: 9pt; font-weight: 700"> '+
            '<a target="_blank" href="http://www.populando.com.br/classificados.aspx?anun_cod='+e.Item.Cells[0].Text.ToString+'">'+e.Item.Cells[1].Text.ToString+'</a></span></td> '+
          '</tr> '+
          '<tr> '+
            '<td width="117"> '+
            '<p style="margin-top: 0; margin-bottom: 0"> '+
            '<span style="font-size: 9pt">Visualizações:</span></td> '+
            '<td width="380"> '+
            '<p style="margin-top: 0; margin-bottom: 0"> '+
            '<span style="font-size: 9pt; font-weight: 700">'+visualizacoes.ToString+'</span></td> '+
          '</tr> '+
          '<tr> '+
            '<td width="117"> '+
            '<p style="margin-top: 0; margin-bottom: 0"> '+
            '<span style="font-size: 9pt">Data de Finalização:</span></td> '+
            '<td width="380"> '+
            '<p style="margin-top: 0; margin-bottom: 0"> '+
            '<span style="font-size: 9pt; font-weight: 700">'+System.&String.Format('{0:dd/MM/yyyy}',e.Item.Cells[2].Text)+'</span></td> '+
          '</tr> '+
          '<tr> '+
            '<td width="117"> '+
            '<p style="margin-top: 0; margin-bottom: 0">&nbsp;</td> '+
            '<td width="380"> '+
            '<p style="margin-top: 0; margin-bottom: 0">&nbsp;</td> '+
          '</tr> '+
          '<tr> '+
            '<td width="497" colspan="2" height="25" bgcolor="#FCCC4D"> '+
            '<p style="margin-top: 0; margin-bottom: 0" align="center"> '+
            '<span style="font-weight: 700"> '+
            '<a style="text-decoration: none" target="_blank" href="http://www.populando.com.br/Login.aspx"> '+
            '<font size="2" color="#FFFFFF">Acessar o Site Agora!</font></a></span></td> '+
          '</tr> '+
        '</table> '+
      '</div> '+
      '</td> '+
    '</tr> '+
    '<tr> '+
      '<td> '+
      '<p style="margin-top: 0; margin-bottom: 0">&nbsp;</td> '+
    '</tr> '+
    '<tr> '+
      '<td> '+
      '<p style="margin-top: 0; margin-bottom: 0"><span style="font-size: 9pt"> '+
      'Obrigado por utilizar nossos serviços, e continue conosco!<br> '+
      '<br> '+
      'Classificado Grátis,<br> '+
      '<br> '+
      '<a target="_blank" href="http://www.populando.com.br">www.populando.com.br</a></span></td> '+
    '</tr> '+
    '<tr> '+
      '<td> '+
      '<p style="margin-top: 0; margin-bottom: 0">&nbsp;</td> '+
    '</tr> '+
    '<tr> '+
      '<td> '+
      '</td> '+
    '</tr> '+
  '</table> '+
  '</center> '+
'</div> '+
'<P style="margin-top: 0; margin-bottom: 0"><font size="1" face="Tahoma"> '+
'<font color="#333333"><b>Não é SPAM</b></font><font color="#666666">: Você recebeu este e-mail porque está cadastrado(a) no Site Populando. Para cancelar seu cadastro, </font> '+
'<a target="_blank" href="http://www.populando.com.br/Login.aspx"> '+
'<font color="#666666">clique aqui</font></a><font color="#666666">.</font></font></P> '+
'</TD></TR> '+
'<TR> '+
'<TD> '+
'<IMG height=24 src="http://www.populando.com.br/imagens/rodape_email.gif" width=548 alt="Copyright © POPULANDO - Todos os direitos reservados. All Rights Reserved."></TD></TR> '+
'</TBODY> '+
'</TABLE> '+

'</p></BODY></HTML>';
    end;
    mail.Fields.Add('http://schemas.microsoft.com/cdo/configuration/smtpauthenticate', cdoBasic);
    mail.Fields.Add('http://schemas.microsoft.com/cdo/configuration/sendusername', username);
    mail.Fields.Add('http://schemas.microsoft.com/cdo/configuration/sendpassword', senhaserver);
    mail.Fields.Add('http://schemas.microsoft.com/cdo/configuration/smtpserver', servidor);
    mail.Fields.Add('http://schemas.microsoft.com/cdo/configuration/smtpserverport', '25');
    SmtpMail.SmtpServer:= servidor;
    SmtpMail.Send(Mail);
    except on e: Exception do
    MessageBox1.ShowMessage('Houve um erro no servidor postal, desculpe o transtorno!');
  end;
  ExecutarCommandAviso(FbDataAdapterVerifica.UpdateCommand);
 end;

 // Exclui anuncio
 if (System.DateTime.Now.Hour > 18) or (System.DateTime.Now.Hour < 6) then
 begin
 ExecutarCommandAviso(FbDataAdapterVerifica.DeleteCommand);
 end;

end;

end;

procedure TWebForm1.ExecutarCommandAviso(Com: FbCommand);
begin
Com.Connection.Open();
  try try
  if CodigoAnun <> nil then
  begin
  Com.Parameters['@p1'].Value := CodigoAnun;
  end;
  if Com <> FbDataAdapterVerifica.DeleteCommand then
  begin
  Com.Parameters['@p2'].Value := '2';
  end;
  { Executa Comando Insert, Update ou Delete }
  Com.ExecuteNonQuery();
  finally
  Com.Connection.Close();
  end;
 except
  MessageBox1.ShowMessage('Erro ao executar a operação dos dados!');
 end;
end;

procedure TWebForm1.Button3_Click(sender: System.Object; e: System.EventArgs);
begin
    Response.Redirect('Default.aspx');
end;

procedure TWebForm1.Button2_Click(sender: System.Object; e: System.EventArgs);
begin
  Response.Redirect('Default.aspx');
end;

procedure TWebForm1.DataGridImg_ItemDataBound(sender: System.Object; e: System.Web.UI.WebControls.DataGridItemEventArgs);
begin
if (e.Item.ItemType = ListItemType.Item) or (e.Item.ItemType = ListItemType.AlternatingItem) then
begin
 // Exclui imagem
if (System.DateTime.Now.Hour > 18) or (System.DateTime.Now.Hour < 6) then
begin
 if (e.Item.Cells[0].Text <> 'imagens/populando_sem_imagem.gif') and (e.Item.Cells[0].Text <> 'imagens/populando_100_imagem.gif') then
 begin
 System.IO.&File.Delete(Server.MapPath(e.Item.Cells[0].Text));
 end;
 end;
end;
end;

procedure TWebForm1.LinkButton1_Click(sender: System.Object; e: System.EventArgs);
begin
  Response.Redirect('mailto:'+LinkButton1.Text.ToString+'?subject='+Label1.Text.ToString);
end;

procedure TWebForm1.Button1_Click(sender: System.Object; e: System.EventArgs);
begin
if Session['Usuario'] = nil then
Response.Redirect('Login.aspx')
else
Response.Redirect('Anuncio.aspx');
end;

end.

