unit WebControl_AnunLatEsq;

interface

uses System.Data, System.Drawing, System.Web, System.Web.UI,
     System.Web.UI.WebControls, System.Web.UI.HtmlControls, 
  FirebirdSql.Data.Firebird, System.ComponentModel, System.Globalization, 
  ControleMessageBox;
     
type
    /// <summary>
    /// Summary description for WebUserControl1.
    /// </summary>
  TWebUserControl1 = class(System.Web.UI.UserControl)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
    DataGridEstados: System.Web.UI.WebControls.DataGrid;
    DataGridVisualiza: System.Web.UI.WebControls.DataGrid;
    LabelEstado: System.Web.UI.WebControls.Label;
    FbDataAdapterEst: FirebirdSql.Data.Firebird.FbDataAdapter;
    FbConnection1: FirebirdSql.Data.Firebird.FbConnection;
    FbCommand1: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand2: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand3: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand4: FirebirdSql.Data.Firebird.FbCommand;
    DataSetEst: System.Data.DataSet;
    DataSetVisualiza: System.Data.DataSet;
    MessageBox1: ControleMessageBox.MessageBox;
    procedure OnInit(e: System.EventArgs); override;
  private
    procedure MostraAnunciosEstados;
    { Private Declarations }
  public
    { Public Declarations }
  end;

implementation

procedure TWebUserControl1.Page_Load(sender: System.Object; e: System.EventArgs);
begin
  // TODO: Put user code to initialize the page here
  if not IsPostBack then
  begin
    MostraAnunciosEstados;
  end;
end;

procedure TWebUserControl1.OnInit(e: System.EventArgs);
begin
  //
  // Required for Designer support
  //
  InitializeComponent;
  inherited OnInit(e);
end;

procedure TWebUserControl1.MostraAnunciosEstados;
begin
  try
    try
      // Carrega Estados com anuncios
      FbDataAdapterEst.SelectCommand.CommandText := 'select unome, (select count(anun_cod) from anuncios, usuarios where anun_data >= CURRENT_DATE and anun_confirmacao = ' + '''' + '1' + '''' + ' and usuarios.usu_estado = cep_uf.unome and anuncios.usu_cod = usuarios.usu_cod) from cep_uf order by 1';
      FbDataAdapterEst.Fill(DataSetEst);
      DataGridEstados.DataSource := DataSetEst;
      DataGridEstados.DataBind;
      // Tras estado ceará por default
      if Request.QueryString['Estado'] = nil then
      begin
        FbDataAdapterEst.SelectCommand.CommandText := 'select anun_cod, anun_titulo from anuncios, usuarios where anun_data >= CURRENT_DATE and anun_confirmacao = ' + '''' + '1' + '''' + ' and usuarios.usu_estado = ' + '''' + 'CEARA' + '''' + ' and anuncios.usu_cod = usuarios.usu_cod order by 1';
        FbDataAdapterEst.Fill(DataSetVisualiza);
        DataGridVisualiza.DataSource := DataSetVisualiza;
        DataGridVisualiza.DataBind;
        LabelEstado.Text := 'Anúncios em CEARÁ';
      end;
      // Abre anuncios de determinado estado selecionado
      if Request.QueryString['Estado'] <> nil then
      begin
        FbDataAdapterEst.SelectCommand.CommandText := 'select anun_cod, anun_titulo from anuncios, usuarios where anun_data >= CURRENT_DATE and anun_confirmacao = ' + '''' + '1' + '''' + ' and usuarios.usu_estado = ' + '''' + Request.QueryString['Estado'].ToString + '''' + ' and anuncios.usu_cod = usuarios.usu_cod order by 1';
        FbDataAdapterEst.Fill(DataSetVisualiza);
        DataGridVisualiza.DataSource := DataSetVisualiza;
        DataGridVisualiza.DataBind;
        LabelEstado.Text := 'Anúncios em ' + Request.QueryString['Estado'].ToString;
      end;
    finally
    end;
  except
    MessageBox1.ShowMessage('Erro ao executar a operação de leitura dos dados!');
  end;
end;

{$REGION 'Designer Managed Code'}
/// <summary>
/// Required method for Designer support -- do not modify
/// the contents of this method with the code editor.
/// </summary>
procedure TWebUserControl1.InitializeComponent;
begin
  Self.FbDataAdapterEst := FirebirdSql.Data.Firebird.FbDataAdapter.Create;
  Self.FbCommand4 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand2 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand1 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbConnection1 := FirebirdSql.Data.Firebird.FbConnection.Create;
  Self.FbCommand3 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.DataSetEst := System.Data.DataSet.Create;
  Self.DataSetVisualiza := System.Data.DataSet.Create;
  (System.ComponentModel.ISupportInitialize(Self.DataSetEst)).BeginInit;
  (System.ComponentModel.ISupportInitialize(Self.DataSetVisualiza)).BeginInit;
  // 
  // FbDataAdapterEst
  // 
  Self.FbDataAdapterEst.DeleteCommand := Self.FbCommand4;
  Self.FbDataAdapterEst.InsertCommand := Self.FbCommand2;
  Self.FbDataAdapterEst.SelectCommand := Self.FbCommand1;
  Self.FbDataAdapterEst.UpdateCommand := Self.FbCommand3;
  // 
  // FbCommand1
  // 
  Self.FbCommand1.CommandText := 'select unome, (select count(anun_cod) from' +
  ' anuncios, usuarios where anun_data >= CURRENT_DATE and anun_confirmacao ' +
  '= ''1'' and usuarios.usu_estado = cep_uf.unome and anuncios.usu_cod = usu' +
  'arios.usu_cod) from cep_uf order by 1';
  Self.FbCommand1.Connection := Self.FbConnection1;
  // 
  // FbConnection1
  // 
  Self.FbConnection1.ConnectionString := 'User=SYSDBA;Password=master;Databa' +
  'se=c:\www\cdlbaturite\dados\rwd\POPULANDO.FDB;DataSource=www.cdlbaturite.' +
  'com.br;Port=3050;Dialect=3;Charset=NONE;Role=;Connection lifetime=0;Conne' +
  'ction timeout=15;Pooling=True;Packet Size=8192;Server Type=0';
  // 
  // DataSetEst
  // 
  Self.DataSetEst.DataSetName := 'NewDataSet';
  Self.DataSetEst.Locale := System.Globalization.CultureInfo.Create('pt-BR');
  // 
  // DataSetVisualiza
  // 
  Self.DataSetVisualiza.DataSetName := 'NewDataSet';
  Self.DataSetVisualiza.Locale := System.Globalization.CultureInfo.Create('p' +
    't-BR');
  Include(Self.Load, Self.Page_Load);
  (System.ComponentModel.ISupportInitialize(Self.DataSetEst)).EndInit;
  (System.ComponentModel.ISupportInitialize(Self.DataSetVisualiza)).EndInit;
end;
{$ENDREGION}


end.
