
unit Login;

interface

uses
  System.Collections, System.ComponentModel,
  System.Data, System.Drawing, System.Web, System.Web.SessionState,
  System.Web.UI, System.Web.UI.WebControls, System.Web.UI.HtmlControls, 
  FirebirdSql.Data.Firebird, ControleMessageBox, System.Configuration;

type
  TWebForm1 = class(System.Web.UI.Page)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
    procedure ButFinalizar_Click(sender: System.Object; e: System.EventArgs);
    procedure ButRegistro_Click(sender: System.Object; e: System.EventArgs);
    procedure ButCancelar_Click(sender: System.Object; e: System.EventArgs);
    procedure Button2_Click(sender: System.Object; e: System.EventArgs);
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
  PageTitulo: system.web.ui.htmlcontrols.htmlgenericcontrol;
    TextMail: System.Web.UI.WebControls.TextBox;
    TextCidade: System.Web.UI.WebControls.TextBox;
    ButFinalizar: System.Web.UI.WebControls.Button;
    ButRegistro: System.Web.UI.WebControls.Button;
    TextSenha: System.Web.UI.WebControls.TextBox;
    FbConnection1: FirebirdSql.Data.Firebird.FbConnection;
    FbCommand1: FirebirdSql.Data.Firebird.FbCommand;
    MessageBox1: ControleMessageBox.MessageBox;
    RequiredFieldValidator1: System.Web.UI.WebControls.RequiredFieldValidator;
    RequiredFieldValidator2: System.Web.UI.WebControls.RequiredFieldValidator;
    ValidationSummary1: System.Web.UI.WebControls.ValidationSummary;
    ButCancelar: System.Web.UI.WebControls.Button;
    Button2: System.Web.UI.WebControls.Button;
    HyperLink1: System.Web.UI.WebControls.HyperLink;
    procedure OnInit(e: EventArgs); override;
  private
    { Private Declarations }
  public
    { Public Declarations }
  end;

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
  Include(Self.ButFinalizar.Click, Self.ButFinalizar_Click);
  Include(Self.ButRegistro.Click, Self.ButRegistro_Click);
  Include(Self.ButCancelar.Click, Self.ButCancelar_Click);
  Include(Self.Button2.Click, Self.Button2_Click);
  // 
  // FbConnection1
  // 
  Self.FbConnection1.ConnectionString := (string(configurationAppSettings.GetValue('F' +
    'bConnection1.ConnectionString', TypeOf(string))));
  // 
  // FbCommand1
  // 
  Self.FbCommand1.CommandText := 'select usu_cod,usu_nome,usu_email,usu_senh' +
  'a from usuarios where lower(usu_email) = ?';
  Self.FbCommand1.Connection := Self.FbConnection1;
  Self.FbCommand1.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('E' +
      'MAIL', FirebirdSql.Data.Firebird.FbDbType.VarChar, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'usu_email', System.Data.DataRowVersion.Current, 
        nil));
  Include(Self.Load, Self.Page_Load);
end;
{$ENDREGION}

procedure TWebForm1.Page_Load(sender: System.Object; e: System.EventArgs);
begin
  // TODO: Put user code to initialize the page here
  PageTitulo.innertext:= 'Populando.com.br - Login';
  if Request.QueryString['novo'] = '0' then
  begin
  MessageBox1.ShowMessage('Seus dados foram submetidos com sucesso! Faça o seu login agora para começar a publicar seus anúncios gratuitamente.');
  Exit;
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

procedure TWebForm1.Button2_Click(sender: System.Object; e: System.EventArgs);
begin
  Response.Redirect('Default.aspx');
end;

procedure TWebForm1.ButCancelar_Click(sender: System.Object; e: System.EventArgs);
begin
Session['Usuario']:= nil;
Response.Redirect('Default.aspx');
end;

procedure TWebForm1.ButRegistro_Click(sender: System.Object; e: System.EventArgs);
begin
Response.Redirect('Usuario.aspx?novo=0');
end;

procedure TWebForm1.ButFinalizar_Click(sender: System.Object; e: System.EventArgs);
var
dr: FbDataReader;
aSenha, SenhaBD: String;
begin
if not Self.IsValid then Exit;
  FbConnection1.Open;
  try try
    FbCommand1.Parameters[0].Value:= TextMail.Text.ToLower;
    dr:= FbCommand1.ExecuteReader;
    if dr.Read() then
    begin
    aSenha:= Criptografia(TextSenha.Text);
    SenhaBD:= dr['usu_senha'].ToString;
    if (SenhaBD = aSenha) then
    begin
    Session['Usuario']:= dr['usu_nome'];
    Session['Codigo']:= dr['usu_cod'];
    Session['Email']:= dr['usu_email'];
    Session['Novo']:= nil;
    Request.QueryString['novo'].Free;
    Session['Autorizado']:= 'SIM';
    FbConnection1.Close;
    Response.redirect('Anuncio.aspx');
    end else
    end;
    MessageBox1.ShowMessage('Dados incorretos!');
  finally
    FbConnection1.Close;
  end;
   except
  MessageBox1.ShowMessage('Erro ao executar a operação de leitura dos dados!');
  end;
  end;

end.

