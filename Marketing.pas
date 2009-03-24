
unit Marketing;

interface

uses
  System.Collections, System.ComponentModel,
  System.Data, System.Drawing, System.Web, System.Web.SessionState,
  System.Web.UI, System.Web.UI.WebControls, System.Web.UI.HtmlControls,
  FirebirdSql.Data.Firebird, System.Web.Mail, System.Globalization,
  ControleMessageBox, System.IO;

type
  TWebForm1 = class(System.Web.UI.Page)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
    procedure Button2_Click(sender: System.Object; e: System.EventArgs);
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
  PageTitulo: system.web.ui.htmlcontrols.htmlgenericcontrol;
    Button2: System.Web.UI.WebControls.Button;
    FbCommAviso: FirebirdSql.Data.Firebird.FbCommand;
    FbConnection1: FirebirdSql.Data.Firebird.FbConnection;
    FbDataAdapterVerifica: FirebirdSql.Data.Firebird.FbDataAdapter;
    DataSet1: System.Data.DataSet;
    FbCommand1: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand2: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand3: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand4: FirebirdSql.Data.Firebird.FbCommand;
    MessageBox1: ControleMessageBox.MessageBox;
    FbCommand5: FirebirdSql.Data.Firebird.FbCommand;
    FbComVerAnun: FirebirdSql.Data.Firebird.FbCommand;
    CheckBox1: System.Web.UI.WebControls.CheckBox;
    Label1: System.Web.UI.WebControls.Label;
    LinkButton1: System.Web.UI.WebControls.LinkButton;
    procedure OnInit(e: EventArgs); override;
  private
    { Private Declarations }
  public
    { Public Declarations }
  end;

  var
  Mail: System.Web.Mail.MailMessage;
  cdoBasic : &Object;
  username, senhaserver, servidor, ArqImagem, CodigoAnun: String;
  dr: FbDataReader;

implementation

{$REGION 'Designer Managed Code'}
/// <summary>
/// Required method for Designer support -- do not modify
/// the contents of this method with the code editor.
/// </summary>
procedure TWebForm1.InitializeComponent;
begin
  Self.FbComVerAnun := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbConnection1 := FirebirdSql.Data.Firebird.FbConnection.Create;
  Self.FbCommand4 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.DataSet1 := System.Data.DataSet.Create;
  Self.FbDataAdapterVerifica := FirebirdSql.Data.Firebird.FbDataAdapter.Create;
  Self.FbCommand5 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand2 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand1 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand3 := FirebirdSql.Data.Firebird.FbCommand.Create;
  (System.ComponentModel.ISupportInitialize(Self.DataSet1)).BeginInit;
  Include(Self.Button2.Click, Self.Button2_Click);
  // 
  // FbComVerAnun
  // 
  Self.FbComVerAnun.CommandText := 'select anun_cod, anun_titulo, anun_data,' +
  ' usu_nome, usu_email from anuncios, usuarios where anun_data <= CURRENT_D' +
  'ATE and anun_confirmacao = ''1'' and anuncios.usu_cod = usuarios.usu_cod ' +
  'order by 1';
  Self.FbComVerAnun.Connection := Self.FbConnection1;
  // 
  // FbConnection1
  // 
  Self.FbConnection1.ConnectionString := 'User=SYSDBA;Password=master;Databa' +
  'se=c:\www\cdlbaturite\dados\rwd\POPULANDO.FDB;DataSource=www.cdlbaturite.' +
  'com.br;Port=3050;Dialect=3;Charset=NONE;Role=;Connection lifetime=0;Conne' +
  'ction timeout=15;Pooling=True;Packet Size=8192;Server Type=0';
  // 
  // DataSet1
  // 
  Self.DataSet1.DataSetName := 'NewDataSet';
  Self.DataSet1.Locale := System.Globalization.CultureInfo.Create('pt-BR');
  // 
  // FbDataAdapterVerifica
  // 
  Self.FbDataAdapterVerifica.DeleteCommand := Self.FbCommand5;
  Self.FbDataAdapterVerifica.InsertCommand := Self.FbCommand2;
  Self.FbDataAdapterVerifica.SelectCommand := Self.FbCommand1;
  Self.FbDataAdapterVerifica.UpdateCommand := Self.FbCommand3;
  // 
  // FbCommand5
  // 
  Self.FbCommand5.CommandText := 'DELETE FROM ANUNCIOS WHERE (anun_data < CU' +
  'RRENT_DATE and anun_confirmaco = ''2'' ';
  Self.FbCommand5.Connection := Self.FbConnection1;
  Self.FbCommand5.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p1', FirebirdSql.Data.Firebird.FbDbType.Integer, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'anun_cod', System.Data.DataRowVersion.Current, 
        nil));
  // 
  // FbCommand2
  // 
  Self.FbCommand2.Connection := Self.FbConnection1;
  // 
  // FbCommand1
  // 
  Self.FbCommand1.CommandText := 'select anun_cod, anun_titulo, anun_data, u' +
  'su_nome, usu_email from anuncios, usuarios where anun_data <= CURRENT_DAT' +
  'E and anun_confirmacao = ''1'' and anuncios.usu_cod = usuarios.usu_cod or' +
  'der by 2';
  Self.FbCommand1.Connection := Self.FbConnection1;
  // 
  // FbCommand3
  // 
  Self.FbCommand3.CommandText := 'UPDATE ANUNCIOS SET ANUN_CONFIRMACAO = @p2' +
  ' where (ANUN_COD = @p1)';
  Self.FbCommand3.Connection := Self.FbConnection1;
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p2', FirebirdSql.Data.Firebird.FbDbType.Char, 1, 'anun_confirmacao'));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p1', FirebirdSql.Data.Firebird.FbDbType.Integer, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'anun_cod', System.Data.DataRowVersion.Current, 
        nil));
  Include(Self.Load, Self.Page_Load);
  (System.ComponentModel.ISupportInitialize(Self.DataSet1)).EndInit;
end;
{$ENDREGION}

procedure TWebForm1.Page_Load(sender: System.Object; e: System.EventArgs);
begin
// TODO: Put user code to initialize the page here
PageTitulo.innertext:= 'Populando.com.br - Onde você anuncia e encontra tudo';
 if not IsPostBack then
 begin

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

end.

