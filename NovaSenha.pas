
unit NovaSenha;

interface

uses
  System.Collections, System.ComponentModel,
  System.Data, System.Drawing, System.Web, System.Web.SessionState,
  System.Web.UI, System.Web.UI.WebControls, System.Web.UI.HtmlControls,
  System.Web.Mail, ControleMessageBox, FirebirdSql.Data.Firebird, 
  System.Configuration;

type
  TWebForm1 = class(System.Web.UI.Page)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
    procedure Button2_Click(sender: System.Object; e: System.EventArgs);
    procedure Button1_Click(sender: System.Object; e: System.EventArgs);
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
  PageTitulo: system.web.ui.htmlcontrols.htmlgenericcontrol;
    TextMail: System.Web.UI.WebControls.TextBox;
    Button1: System.Web.UI.WebControls.Button;
    Button2: System.Web.UI.WebControls.Button;
    RequiredFieldValidator1: System.Web.UI.WebControls.RequiredFieldValidator;
    ValidationSummary1: System.Web.UI.WebControls.ValidationSummary;
    MessageBox1: ControleMessageBox.MessageBox;
    FbCommand1: FirebirdSql.Data.Firebird.FbCommand;
    FbConnection1: FirebirdSql.Data.Firebird.FbConnection;
    FbCommand2: FirebirdSql.Data.Firebird.FbCommand;
    procedure OnInit(e: EventArgs); override;
  private
  SenhaTemp: System.Object;
    procedure GeraSenha;
    procedure EnviaEmailSenha;
    { Private Declarations }
  public
    { Public Declarations }
    function SoNumeros(Const Texto:String):String;
  end;

  var
  Mail: System.Web.Mail.MailMessage;
  cdoBasic : &Object;
  username, senhaserver, servidor: String;
  dr: FbDataReader;

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
  Self.FbCommand1 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbConnection1 := FirebirdSql.Data.Firebird.FbConnection.Create;
  Self.FbCommand2 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Include(Self.Button1.Click, Self.Button1_Click);
  Include(Self.Button2.Click, Self.Button2_Click);
  // 
  // FbCommand1
  // 
  Self.FbCommand1.CommandText := 'select usu_email from usuarios where lower' +
  '(usu_email) = ?';
  Self.FbCommand1.Connection := Self.FbConnection1;
  Self.FbCommand1.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('E' +
      'MAIL', FirebirdSql.Data.Firebird.FbDbType.VarChar, 50, 'usu_email'));
  // 
  // FbConnection1
  // 
  Self.FbConnection1.ConnectionString := (string(configurationAppSettings.GetValue('F' +
    'bConnection1.ConnectionString', TypeOf(string))));
  // 
  // FbCommand2
  // 
  Self.FbCommand2.CommandText := 'UPDATE usuarios SET usu_senha = ? WHERE (u' +
  'su_email = ?)';
  Self.FbCommand2.Connection := Self.FbConnection1;
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('S' +
      'ENHA', FirebirdSql.Data.Firebird.FbDbType.VarChar, 50, 'usu_senha'));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('M' +
      'AIL', FirebirdSql.Data.Firebird.FbDbType.VarChar, 50, 'usu_email'));
  Include(Self.Load, Self.Page_Load);
end;
{$ENDREGION}

procedure TWebForm1.Page_Load(sender: System.Object; e: System.EventArgs);
begin
  // TODO: Put user code to initialize the page here
  PageTitulo.innertext:= 'Populando.com.br - Onde você anuncia e encontra tudo';
end;

function TWebForm1.SoNumeros(const Texto: String): String;
{ Remove caracteres de uma string deixando apenas numeros }
var
I: integer;
S: string;
begin
S := '';
for I := 1 To Length(Texto) Do
begin
if (Texto[I] in ['0'..'9']) then
begin
S := S + Copy(Texto, I, 1);
end;
end;
result := S;
end;

procedure TWebForm1.EnviaEmailSenha;
begin
cdoBasic:= (1 as &Object);
username:= 'smtp';//usuário
senhaserver:= 'smtp2004';//senha
servidor:= 'smtp.cdlbaturite.com.br';//smtp

Mail := MailMessage.create;
  try
    with Mail do
    begin
    From := 'Populando<rwd@rwd.net.br>';
    &To := TextMail.Text.ToLower;
   // Bcc := 'populando@populando.com.br';
    Subject := 'Senha Temporária';
    BodyFormat:= System.Web.Mail.MailFormat.Html;
    Body := '<HTML><BODY bgColor=#ffffff>' + '<DIV><IMG alt="" hspace=0 src="http://'+ HttpContext.Current.Request.Url.Authority +'/imagens/populando.gif" align=baseline border=0></DIV>' + '<DIV>Sr(a).,</DIV>' + '<DIV>&nbsp;</DIV>' + '<DIV>Usuário(a) </DIV>' + '<DIV>&nbsp;</DIV>' + '<DIV>Você solicitou no <A href="http://'+ HttpContext.Current.Request.Url.Authority +'">www.populando.com.br</A>, o cadastro de uma nova senha, segue abaixo a senha temporária para acesso.</DIV><DIV>&nbsp;</DIV>' +
    '<DIV>Solicitação efetuada em <STRONG>' + System.DateTime.Now.ToShortDateString + '</STRONG> através do IP <STRONG>' + Request.UserHostAddress + '</STRONG></DIV>' + '<DIV>&nbsp;</DIV>' + '<DIV>Após efetuar login com esta senha no site, faça alteração para uma senha pessoal.</DIV><br>' + '<DIV><STRONG>Senha Temporária:</STRONG> ' + SenhaTemp.ToString + '<br>' + '<DIV><STRONG>Acesso ao Site: </STRONG> <A href="http://'+ HttpContext.Current.Request.Url.Authority +'/Login.aspx">Efetuar Login</A>' +
    '</DIV>' + '<DIV>No caso de não ter sido você a pessoa que solicitou esta alteração, desconsidere esta mensagem e solicite outra senha.</DIV>' + '<DIV>&nbsp;</DIV>' + '<DIV>Cordialmente,</DIV>' + '<DIV>&nbsp;</DIV><DIV>' + 'Equipe Populando' + '<BR> ---------------------------------------- ' + '<br> O Classificado mais Popular da Internet<BR><A href="http://'+ HttpContext.Current.Request.Url.Authority +'">www.populando.com.br</A></DIV></BODY></HTML>';
    end;

    mail.Fields.Add('http://schemas.microsoft.com/cdo/configuration/smtpauthenticate', cdoBasic);
    mail.Fields.Add('http://schemas.microsoft.com/cdo/configuration/sendusername', username);
    mail.Fields.Add('http://schemas.microsoft.com/cdo/configuration/sendpassword', senhaserver);
    mail.Fields.Add('http://schemas.microsoft.com/cdo/configuration/smtpserver', servidor);
    mail.Fields.Add('http://schemas.microsoft.com/cdo/configuration/smtpserverport', '25');

    SmtpMail.SmtpServer:= servidor;
    SmtpMail.Send(Mail);

    except on e: Exception do
    MessageBox1.ShowMessage('Erro no servidor de e-mails. Por favor, verifique o endereço de e-mail informado ou tente executar esta operação após alguns minutos.');
  end;
  MessageBox1.ShowMessage('Solicitação enviada com sucesso!');
end;

procedure TWebForm1.OnInit(e: EventArgs);
begin
  //
  // Required for Designer support
  //
  InitializeComponent;
  inherited OnInit(e);
end;

procedure TWebForm1.GeraSenha;
begin
  FbConnection1.Open;
  try
    try
    FbCommand2.Parameters[1].Value := TextMail.Text.ToLower;
    SenhaTemp:= SoNumeros(System.String.Format('{0:ddMMyy}', System.DateTime.Now) + System.String.Format('{0:hhmm}', System.DateTime.Now.ToShortTimeString));
    FbCommand2.Parameters[0].Value := Criptografia(SenhaTemp.ToString);
    FbCommand2.ExecuteNonQuery;
  finally
    FbConnection1.Close;
  end;
  except
  MessageBox1.ShowMessage('Erro ao executar a operação de gravação dos dados!');
  end;
end;

procedure TWebForm1.Button1_Click(sender: System.Object; e: System.EventArgs);
begin
  FbConnection1.Open;
  try try
    FbCommand1.Parameters[0].Value:= TextMail.Text.ToLower;
    dr:= FbCommand1.ExecuteReader;
    if dr.Read() then
    begin
    FbConnection1.Close;
    GeraSenha;
    EnviaEmailSenha;
    Exit;
    end else
    MessageBox1.ShowMessage('E-mail não cadastrado ou incorreto!');
  finally
    FbConnection1.Close;
  end;
  except
  MessageBox1.ShowMessage('Erro ao executar a operação de leitura dos dados!');
  end;
end;

procedure TWebForm1.Button2_Click(sender: System.Object; e: System.EventArgs);
begin
    Response.Redirect('Default.aspx');
end;

end.

