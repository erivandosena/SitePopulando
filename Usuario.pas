
unit Usuario;

interface

uses
  System.Collections, System.ComponentModel,
  System.Data, System.Drawing, System.Web, System.Web.SessionState,
  System.Web.UI, System.Web.UI.WebControls, System.Web.UI.HtmlControls, 
  FirebirdSql.Data.Firebird, ControleMessageBox, System.Web.Mail,
  System.Web.Security, System.Text, System.Configuration;

type
  TWebForm1 = class(System.Web.UI.Page)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
    procedure ButCancelar_Click(sender: System.Object; e: System.EventArgs);
    procedure ButAnuncio_Click(sender: System.Object; e: System.EventArgs);
    procedure ButSalvar_Click(sender: System.Object; e: System.EventArgs);
    procedure Button2_Click(sender: System.Object; e: System.EventArgs);
    procedure LinkButton1_Click(sender: System.Object; e: System.EventArgs);
    procedure DropDownList1_SelectedIndexChanged(sender: System.Object; e: System.EventArgs);
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
  PageTitulo: system.web.ui.htmlcontrols.htmlgenericcontrol;
    TextNome: System.Web.UI.WebControls.TextBox;
    TextTelefone: System.Web.UI.WebControls.TextBox;
    TextMail: System.Web.UI.WebControls.TextBox;
    ButCancelar: System.Web.UI.WebControls.Button;
    TextSenha: System.Web.UI.WebControls.TextBox;
    FbConnection1: FirebirdSql.Data.Firebird.FbConnection;
    FbCommand4: FirebirdSql.Data.Firebird.FbCommand;
    RequiredFieldValidator1: System.Web.UI.WebControls.RequiredFieldValidator;
    ValidationSummary1: System.Web.UI.WebControls.ValidationSummary;
    MessageBox1: ControleMessageBox.MessageBox;
    RequiredFieldValidator2: System.Web.UI.WebControls.RequiredFieldValidator;
    RequiredFieldValidator3: System.Web.UI.WebControls.RequiredFieldValidator;
    RequiredFieldValidator4: System.Web.UI.WebControls.RequiredFieldValidator;
    RequiredFieldValidator5: System.Web.UI.WebControls.RequiredFieldValidator;
    ButAnuncio: System.Web.UI.WebControls.Button;
    FbCommandVerifica: FirebirdSql.Data.Firebird.FbCommand;
    LabelTitulo: System.Web.UI.WebControls.Label;
    ButSalvar: System.Web.UI.WebControls.Button;
    RegularExpressionValidator1: System.Web.UI.WebControls.RegularExpressionValidator;
    Button2: System.Web.UI.WebControls.Button;
    FbCommand8: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand12: FirebirdSql.Data.Firebird.FbCommand;
    Label1: System.Web.UI.WebControls.Label;
    LinkButton1: System.Web.UI.WebControls.LinkButton;
    CheckBox1: System.Web.UI.WebControls.CheckBox;
    FbDataAdapter1: FirebirdSql.Data.Firebird.FbDataAdapter;
    FbCommand1: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand2: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand3: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand5: FirebirdSql.Data.Firebird.FbCommand;
    DropDownList1: System.Web.UI.WebControls.DropDownList;
    DropDownList2: System.Web.UI.WebControls.DropDownList;
    FbDataAdapter3: FirebirdSql.Data.Firebird.FbDataAdapter;
    FbDataAdapter2: FirebirdSql.Data.Firebird.FbDataAdapter;
    FbCommand6: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand7: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand9: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand10: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand11: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand13: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand14: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand15: FirebirdSql.Data.Firebird.FbCommand;
    RequiredFieldValidator6: System.Web.UI.WebControls.RequiredFieldValidator;
    procedure OnInit(e: EventArgs); override;
  private
    { Private Declarations }
    Codigo, Email, Nome, AssuntoMail, Senha, ChecaEmail: System.Object;
    procedure EnviaEmail;
  public
    { Public Declarations }
    procedure LerDados;
    procedure ExecutarCommand(Com: FbCommand);
    function GetEstados(): DataSet;
    function GetCidades(ucodigo: System.&Object): DataView;
  end;

  var
  Mail: System.Web.Mail.MailMessage;
  cdoBasic : &Object;
  username, senhaserver, servidor: String;
  script: StringBuilder;

implementation

uses UnCliptografia;

{$REGION 'Designer Managed Code'}
/// <summary>
/// Required method for Designer support -- do not modify
/// the contents of this method with the code editor.
/// </summary>
procedure TWebForm1.ExecutarCommand(Com: FbCommand);
begin
if not Self.IsValid then Exit;
  Com.Connection.Open();
  try try
    { Para inserção não deve ser fornecido o Codigo }
    if Codigo <> nil then
      Com.Parameters['@p1'].Value := Codigo;
    { Somente Insert e Update têm mais parâmetros }
    if Com <> FbDataAdapter1.DeleteCommand then
    begin
      Com.Parameters['@p2'].Value := TextNome.Text.ToUpper;
      Com.Parameters['@p3'].Value := DropDownList2.SelectedItem.Text.ToUpper;
      Com.Parameters['@p4'].Value := DropDownList1.SelectedItem.Text.ToUpper;
      Com.Parameters['@p5'].Value := TextTelefone.Text.ToUpper;
      Com.Parameters['@p6'].Value := TextMail.Text.ToLower;
      Com.Parameters['@p7'].Value := Criptografia(TextSenha.Text);
      Com.Parameters['@p8'].Value := System.Convert.ToString(CheckBox1.Checked);
      Nome:= TextNome.Text.ToUpper;
      Email:= TextMail.Text.ToLower;
      Senha:= TextSenha.Text;
    end;
    { Executa Comando Insert, Update ou Delete }
    Com.ExecuteNonQuery();
  finally
    Com.Connection.Close();
  end;
    except
    MessageBox1.ShowMessage('Erro ao executar a operação de gravação dos dados!');
    end;

  EnviaEmail;

  if Codigo <> nil then
  begin
  MessageBox1.ShowMessage('Atualização submetida com sucesso!');
  Exit;
  end;

  if Codigo = nil then
  Response.Redirect('Login.aspx?novo=0')
  else
  LerDados;
end;

function TWebForm1.GetCidades(ucodigo: TObject): DataView;
var
  dv: DataView;
begin
    dv := DataView.Create();
    dv.Table := (Cache['Estados'] as
    DataSet).Tables['cep_cidade'] as DataTable;
    dv.RowFilter := 'cuf_codigo = ' + ucodigo.ToString();
    result := dv;
end;

function TWebForm1.GetEstados: DataSet;
var
  ds: DataSet;
begin
  if (Cache['Estados'] = nil) then
  begin
    ds := DataSet.Create();
   	FbDataAdapter2.Fill(ds,'cep_uf');
    FbDataAdapter3.Fill(ds,'cep_cidade');
   	Cache['Estados'] := ds;
  end;
   result := Cache['Estados'] as DataSet;
end;

procedure TWebForm1.DropDownList1_SelectedIndexChanged(sender: System.Object;
  e: System.EventArgs);
begin
if DropDownList1.SelectedItem.ToString = '' then
begin
  DropDownList2.Items.Clear;
Exit;
end else
    DropDownList2.DataSource := GetCidades(DropDownList1.SelectedValue);
    DropDownList2.DataTextField := 'cnome';
    DropDownList2.DataBind();
end;

procedure TWebForm1.LinkButton1_Click(sender: System.Object; e: System.EventArgs);
begin
cdoBasic:= (1 as &Object);
username:= 'smtp';//usuário
senhaserver:= 'smtp2004';//senha
servidor:= 'smtp.populando.com.br';//smtp

Mail := MailMessage.create;
  try
    with Mail do
    begin
    From:= ChecaEmail.ToString;
    &To:= 'Populando<populando@populando.com.br>';
    Bcc:= '';
    Subject:= 'Remover Cadastro';
    BodyFormat:= System.Web.Mail.MailFormat.Html;
    Body := '<HTML><BODY bgColor=#ffffff><div> Ao </div> Populando.com.br <br><br> Solicito minha exclusão do conteúdo Populando, e estou ciente que '+
    'será preciso um novo cadastro para eu poder novamente participar de forma integral dos benefícios gratuitos do Site Populando. <br><br><b>'
    + Nome.ToString + '</b><div> Usuário </div></BODY></HTML>';
    end;

    mail.Fields.Add('http://schemas.microsoft.com/cdo/configuration/smtpauthenticate', cdoBasic);
    mail.Fields.Add('http://schemas.microsoft.com/cdo/configuration/sendusername', username);
    mail.Fields.Add('http://schemas.microsoft.com/cdo/configuration/sendpassword', senhaserver);
    mail.Fields.Add('http://schemas.microsoft.com/cdo/configuration/smtpserver', servidor);
    mail.Fields.Add('http://schemas.microsoft.com/cdo/configuration/smtpserverport', '25');

    SmtpMail.SmtpServer:= servidor;
    SmtpMail.Send(Mail);

    Codigo:= Request.QueryString['usu_cod'];

    except on e: Exception do
    MessageBox1.ShowMessage('Erro no servidor de e-mails. Por favor, verifique o endereço de e-mail informado ou tente executar esta operação após alguns minutos.');
  end;
MessageBox1.ShowMessage('Solicitação enviada com sucesso!');
end;

procedure TWebForm1.Button2_Click(sender: System.Object; e: System.EventArgs);
begin
  Response.Redirect('Default.aspx');
end;

procedure TWebForm1.EnviaEmail;
begin
cdoBasic:= (1 as &Object);
username:= 'smtp';//usuário
senhaserver:= 'smtp2004';//senha
servidor:= 'smtp.populando.com.br';//smtp

Mail := MailMessage.create;
  try
    with Mail do
    begin
    From:= 'Populando<populando@populando.com.br>';
    &To:= Email.ToString;
    Bcc:= 'populando@populando.com.br';
    Subject:= AssuntoMail.ToString;
    BodyFormat:= System.Web.Mail.MailFormat.Html;
    Body := '<HTML><BODY bgColor=#ffffff>' + '<DIV><IMG alt="" hspace=0 src="http://www.populando.com.br/populando.gif" align=baseline border=0></DIV>' + '<DIV>Parabéns!</DIV>' + '<DIV>&nbsp;</DIV>' + '<DIV>Sr(a)., <STRONG>' + Nome.ToString + '</STRONG></DIV>' + '<DIV>&nbsp;</DIV>' +
    '<DIV>Você está cadastrado(a) no <A href="http://www.populando.com.br">www.populando.com.br</A>, agora você já pode anunciar a vontade ' +
    'no melhor e mais popular site de classificados da Internet. Para sua comodidade, seus dados foram gravados no site para agilizar no cadastro dos seus anúncios posteriores.</DIV><DIV>&nbsp;</DIV>' + '<DIV>Cadastro efetuado em <STRONG>' + System.DateTime.Now.ToShortDateString +
    '</STRONG> através do IP <STRONG>'+ Request.UserHostAddress + '</STRONG></DIV>' + '<DIV>&nbsp;</DIV>' + '<DIV>Seus dados para acesso no site Populando:</DIV>' + '<DIV><STRONG>E-mail:</STRONG> ' + Email.ToString + '</DIV>' + '<DIV><STRONG>Senha:</STRONG> ' + Senha.ToString + '</DIV>' +
    '<DIV>A senha é exclusiva, copie para um lugar seguro até memorizá-la, caso esqueça será preciso recadastrar uma nova.</DIV>' + '<DIV>&nbsp;</DIV>' + '<DIV>Cordialmente,</DIV>' + '<DIV>&nbsp;</DIV><DIV>' + 'Equipe Populando' + '<BR> ------------------------------------------ ' + '<br> O Classificado mais Popular da Internet<BR><A href="http://www.populando.com.br">www.populando.com.br</A></DIV></BODY></HTML>';
    end;

    mail.Fields.Add('http://schemas.microsoft.com/cdo/configuration/smtpauthenticate', cdoBasic);
    mail.Fields.Add('http://schemas.microsoft.com/cdo/configuration/sendusername', username);
    mail.Fields.Add('http://schemas.microsoft.com/cdo/configuration/sendpassword', senhaserver);
    mail.Fields.Add('http://schemas.microsoft.com/cdo/configuration/smtpserver', servidor);
    mail.Fields.Add('http://schemas.microsoft.com/cdo/configuration/smtpserverport', '25');

    SmtpMail.SmtpServer:= servidor;
    SmtpMail.Send(Mail);

    Codigo:= Request.QueryString['usu_cod'];

    except on e: Exception do
    MessageBox1.ShowMessage('Erro no servidor de e-mails. Por favor, verifique o endereço de e-mail informado ou tente executar esta operação após alguns minutos.');
  end;
end;

procedure TWebForm1.ButSalvar_Click(sender: System.Object; e: System.EventArgs);
var
  dr: FbDataReader;
begin
    if Codigo = nil then
    begin
  //##### Verifica cadastro existente ao inserir
  FbConnection1.Open;
  try
    FbCommandVerifica.Parameters[0].Value:= TextMail.Text.ToLower;
    dr:= FbCommandVerifica.ExecuteReader;
    if dr.Read() then
    begin
    if Convert.ToInt32(dr['COUNT'].ToString) <> 0 then
    begin
    MessageBox1.ShowMessage('E-mail já cadastrado no sistema! Informe outro!');
    Exit;
    end else
    end;
  finally
    FbConnection1.Close;
  end;
  //#####
    AssuntoMail:= 'Cadastro Efetuado';
    ExecutarCommand(FbDataAdapter1.InsertCommand);
    Exit;
  end else
  //***** Verifica se houve mudanças no campo principal
   if TextMail.Text.ToLower <> ChecaEmail.ToString.ToLower then
   begin
  //##### Verifica cadastro existente ao atualizar
  FbConnection1.Open;
  try
    FbCommandVerifica.Parameters[0].Value:= TextMail.Text.ToLower;
    dr:= FbCommandVerifica.ExecuteReader;
    if dr.Read() then
    begin
    if Convert.ToInt32(dr['COUNT'].ToString) <> 0 then
    begin
    MessageBox1.ShowMessage('E-mail já cadastrado no sistema! Informe outro!');
    Exit;
    end else
    end;
  finally
    FbConnection1.Close;
  end;
  //#####
   end;
  //*****
    AssuntoMail:= 'Alteração de Cadastro';
    ExecutarCommand(FbDataAdapter1.UpdateCommand);
end;

procedure TWebForm1.ButAnuncio_Click(sender: System.Object; e: System.EventArgs);
begin
Response.Redirect('Anuncio.aspx');
end;

procedure TWebForm1.ButCancelar_Click(sender: System.Object; e: System.EventArgs);
begin
Session['Usuario']:= nil;
Response.Redirect('Default.aspx');
end;

procedure TWebForm1.InitializeComponent;
var
  configurationAppSettings: System.Configuration.AppSettingsReader;
begin
  configurationAppSettings := System.Configuration.AppSettingsReader.Create;
  Self.FbConnection1 := FirebirdSql.Data.Firebird.FbConnection.Create;
  Self.FbCommand4 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommandVerifica := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand8 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand12 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbDataAdapter1 := FirebirdSql.Data.Firebird.FbDataAdapter.Create;
  Self.FbCommand5 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand2 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand1 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand3 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbDataAdapter3 := FirebirdSql.Data.Firebird.FbDataAdapter.Create;
  Self.FbCommand15 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand13 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand11 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand14 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbDataAdapter2 := FirebirdSql.Data.Firebird.FbDataAdapter.Create;
  Self.FbCommand10 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand7 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand6 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand9 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Include(Self.DropDownList1.SelectedIndexChanged, Self.DropDownList1_SelectedIndexChanged);
  Include(Self.ButSalvar.Click, Self.ButSalvar_Click);
  Include(Self.ButCancelar.Click, Self.ButCancelar_Click);
  Include(Self.ButAnuncio.Click, Self.ButAnuncio_Click);
  Include(Self.Button2.Click, Self.Button2_Click);
  Include(Self.LinkButton1.Click, Self.LinkButton1_Click);
  // 
  // FbConnection1
  // 
  Self.FbConnection1.ConnectionString := (string(configurationAppSettings.GetValue('F' +
    'bConnection1.ConnectionString', TypeOf(string))));
  // 
  // FbCommand4
  // 
  Self.FbCommand4.CommandText := 'DELETE FROM USUARIOS WHERE (USU_COD = @p1)';
  Self.FbCommand4.Connection := Self.FbConnection1;
  Self.FbCommand4.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p1', FirebirdSql.Data.Firebird.FbDbType.Integer, 4, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'USU_COD', System.Data.DataRowVersion.Original, 
        nil));
  // 
  // FbCommandVerifica
  // 
  Self.FbCommandVerifica.CommandText := 'select count(1) from usuarios where' +
  ' lower(usu_email) = ?';
  Self.FbCommandVerifica.Connection := Self.FbConnection1;
  Self.FbCommandVerifica.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('E' +
      'MAIL', FirebirdSql.Data.Firebird.FbDbType.VarChar, 50, 'usu_email'));
  // 
  // FbDataAdapter1
  // 
  Self.FbDataAdapter1.DeleteCommand := Self.FbCommand5;
  Self.FbDataAdapter1.InsertCommand := Self.FbCommand2;
  Self.FbDataAdapter1.SelectCommand := Self.FbCommand1;
  Self.FbDataAdapter1.UpdateCommand := Self.FbCommand3;
  // 
  // FbCommand5
  // 
  Self.FbCommand5.CommandText := 'DELETE FROM USUARIOS WHERE (USU_COD = @p1)';
  Self.FbCommand5.Connection := Self.FbConnection1;
  Self.FbCommand5.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p1', FirebirdSql.Data.Firebird.FbDbType.Integer, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'USU_COD', System.Data.DataRowVersion.Original, 
        nil));
  // 
  // FbCommand2
  // 
  Self.FbCommand2.CommandText := 'INSERT INTO USUARIOS (USU_NOME,USU_CIDADE,' +
  'USU_ESTADO,USU_TELEFONE,USU_EMAIL,USU_SENHA, usu_publicidade) VALUES (@p2' +
  ',@p3,@p4,@p5,@p6,@p7,@p8)';
  Self.FbCommand2.Connection := Self.FbConnection1;
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p2', FirebirdSql.Data.Firebird.FbDbType.VarChar, 50, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'USU_NOME', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p3', FirebirdSql.Data.Firebird.FbDbType.VarChar, 40, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'USU_CIDADE', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p4', FirebirdSql.Data.Firebird.FbDbType.VarChar, 35, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'USU_ESTADO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p5', FirebirdSql.Data.Firebird.FbDbType.VarChar, 25, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'USU_TELEFONE', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p6', FirebirdSql.Data.Firebird.FbDbType.VarChar, 50, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'USU_EMAIL', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p7', FirebirdSql.Data.Firebird.FbDbType.VarChar, 50, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'USU_SENHA', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p8', FirebirdSql.Data.Firebird.FbDbType.Char, 5, 'usu_publicidade'));
  // 
  // FbCommand1
  // 
  Self.FbCommand1.CommandText := 'select usu_cod,usu_nome,usu_cidade,usu_est' +
  'ado,usu_telefone,usu_email,usu_senha, usu_publicidade from usuarios where' +
  ' usu_cod = @p1';
  Self.FbCommand1.Connection := Self.FbConnection1;
  Self.FbCommand1.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p1', FirebirdSql.Data.Firebird.FbDbType.Integer, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'usu_cod', System.Data.DataRowVersion.Current, 
        nil));
  // 
  // FbCommand3
  // 
  Self.FbCommand3.CommandText := 'UPDATE USUARIOS SET USU_NOME = @p2, USU_CI' +
  'DADE = @p3, USU_ESTADO = @p4, USU_TELEFONE = @p5, USU_EMAIL = @p6, USU_SE' +
  'NHA = @p7, usu_publicidade = @p8 WHERE (USU_COD = @p1)';
  Self.FbCommand3.Connection := Self.FbConnection1;
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p1', FirebirdSql.Data.Firebird.FbDbType.Integer, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'USU_COD', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p2', FirebirdSql.Data.Firebird.FbDbType.VarChar, 50, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'USU_NOME', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p3', FirebirdSql.Data.Firebird.FbDbType.VarChar, 40, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'USU_CIDADE', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p4', FirebirdSql.Data.Firebird.FbDbType.VarChar, 35, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'USU_ESTADO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p5', FirebirdSql.Data.Firebird.FbDbType.VarChar, 25, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'USU_TELEFONE', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p6', FirebirdSql.Data.Firebird.FbDbType.VarChar, 50, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'USU_EMAIL', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p7', FirebirdSql.Data.Firebird.FbDbType.VarChar, 50, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'USU_SENHA', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p8', FirebirdSql.Data.Firebird.FbDbType.Char, 5, 'usu_publicidade'));
  // 
  // FbDataAdapter3
  // 
  Self.FbDataAdapter3.DeleteCommand := Self.FbCommand15;
  Self.FbDataAdapter3.InsertCommand := Self.FbCommand13;
  Self.FbDataAdapter3.SelectCommand := Self.FbCommand11;
  Self.FbDataAdapter3.UpdateCommand := Self.FbCommand14;
  // 
  // FbCommand11
  // 
  Self.FbCommand11.CommandText := 'select distinct CNOME, CUF_CODIGO from CE' +
  'P_CIDADE where CUF_CODIGO = CUF_CODIGO order by 1';
  Self.FbCommand11.Connection := Self.FbConnection1;
  // 
  // FbDataAdapter2
  // 
  Self.FbDataAdapter2.DeleteCommand := Self.FbCommand10;
  Self.FbDataAdapter2.InsertCommand := Self.FbCommand7;
  Self.FbDataAdapter2.SelectCommand := Self.FbCommand6;
  Self.FbDataAdapter2.UpdateCommand := Self.FbCommand9;
  // 
  // FbCommand6
  // 
  Self.FbCommand6.CommandText := 'select ucodigo, unome, usigla from cep_uf ' +
  'where ucodigo = ucodigo order by 2';
  Self.FbCommand6.Connection := Self.FbConnection1;
  Include(Self.Load, Self.Page_Load);
end;
{$ENDREGION}

procedure TWebForm1.Page_Load(sender: System.Object; e: System.EventArgs);
begin
  // TODO: Put user code to initialize the page here
  PageTitulo.innertext:= 'Populando.com.br - Onde você anuncia e encontra tudo';
Label1.Text:= '<font face="Tahoma" size="1"><b>Atenção:</b> Após clicar em &quot;Salvar&quot;, não clique em mais nada e aguarde até você ser redirecionado para página de login para continuar.</font>';
if not IsPostBack then
begin
    DropDownList1.DataSource := GetEstados();
    DropDownList1.DataTextField := 'unome';
    DropDownList1.DataValueField := 'ucodigo';
    DropDownList1.DataBind();
if Request.QueryString['novo'] = '0' then
begin
if DropDownList1.Items.Count < 28 then
begin
DropDownList1.Items.Add('');
end;
DropDownList1.SelectedIndex:= 27;
end;
end;

if Request.QueryString['novo'] = nil then
begin
if Request.QueryString['novo'] <> '0' then
begin
if Session['Usuario'] = nil then
Response.Redirect('Login.aspx')
else
Label1.Text:= '<font face="Tahoma" size="1"><b>Atenção:</b> Antes de clicar em &quot;Editar Anúncio&quot;, verifique acima se seus dados para contato estão corretos e atualizados.</font>';
end;

if Request.QueryString['usu_cod'] <> nil then
begin
Codigo:= Request.QueryString['usu_cod'];
end;
Nome:= Session['Usuario'];
ChecaEmail:= Session['Email'];
if not IsPostBack then
begin
ButAnuncio.Visible:= False;
LinkButton1.Visible:= False;
LabelTitulo.Text:= 'INFORME SEUS DADOS';
if Codigo <> nil then
begin
LinkButton1.Visible:= True;
LerDados;
ButAnuncio.Visible:= True;
LabelTitulo.Text:= 'CONFIRA SEUS DADOS';
end;
end;

end;

end;

procedure TWebForm1.LerDados;
var
  dr: FbDataReader;
begin
   with FbDataAdapter1.SelectCommand do
   begin
      Parameters['@p1'].Value := Codigo;
      try try
        Connection.Open();
        dr := ExecuteReader();
        if dr.Read() then
        begin
    if (Session['Email'].ToString.ToLower.Trim <> dr['usu_Email'].ToString.ToLower.Trim) then
    begin
    Response.redirect('Login.aspx');
    Exit;
    end;
        TextNome.Text:= dr['usu_nome'].ToString;

       DropDownList1.Items.Add(ListItem.Create( dr['usu_estado'].ToString, '0'));
       DropDownList1.SelectedIndex:= 27;
       DropDownList2.Items.Add(dr['usu_cidade'].ToString);

        TextTelefone.Text:= dr['usu_telefone'].ToString;
        TextMail.Text:= dr['usu_email'].ToString;
        if dr['usu_publicidade'].ToString = nil then
        begin
        CheckBox1.Checked:= True;
        end;
        if dr['usu_publicidade'].ToString <> nil then
        begin
        CheckBox1.Checked:= System.Convert.ToBoolean(dr['usu_publicidade']);
        end;

        end;
      finally
        Connection.Close();
      end;
 except
  MessageBox1.ShowMessage('Erro ao executar a operação de leitura dos dados!');
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

