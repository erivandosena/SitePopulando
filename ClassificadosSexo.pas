
unit ClassificadosSexo;

interface

uses
  System.Collections, System.ComponentModel,
  System.Data, System.Drawing, System.Web, System.Web.SessionState,
  System.Web.UI, System.Web.UI.WebControls, System.Web.UI.HtmlControls, 
  ControleMessageBox, FirebirdSql.Data.Firebird, System.Configuration;

type
  TWebForm1 = class(System.Web.UI.Page)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
    procedure Button1_Click(sender: System.Object; e: System.EventArgs);
    procedure Button3_Click(sender: System.Object; e: System.EventArgs);
    procedure Button2_Click(sender: System.Object; e: System.EventArgs);
    procedure LinkButton1_Click(sender: System.Object; e: System.EventArgs);
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
  PageTitulo: system.web.ui.htmlcontrols.htmlgenericcontrol;
    Button1: System.Web.UI.WebControls.Button;
    Button3: System.Web.UI.WebControls.Button;
    Label1: System.Web.UI.WebControls.Label;
    Label2: System.Web.UI.WebControls.Label;
    Image1: System.Web.UI.WebControls.Image;
    Label3: System.Web.UI.WebControls.Label;
    Label4: System.Web.UI.WebControls.Label;
    Label5: System.Web.UI.WebControls.Label;
    Label6: System.Web.UI.WebControls.Label;
    Label7: System.Web.UI.WebControls.Label;
    Label8: System.Web.UI.WebControls.Label;
    Label9: System.Web.UI.WebControls.Label;
    LinkButton1: System.Web.UI.WebControls.LinkButton;
    Button2: System.Web.UI.WebControls.Button;
    MessageBox1: ControleMessageBox.MessageBox;
    FbConnection1: FirebirdSql.Data.Firebird.FbConnection;
    FbCommand1: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand6: FirebirdSql.Data.Firebird.FbCommand;
    FbCommandSomaV: FirebirdSql.Data.Firebird.FbCommand;
    procedure OnInit(e: EventArgs); override;
  private
    { Private Declarations }
        Anuncio: System.Object;
    procedure SelecionaAnuncio;
  public
    { Public Declarations }
  end;

    var
  dr: FbDataReader;
  DataVencimento, DataAtual: TDate;
  AnunVisualizado: Integer;

implementation

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
  Self.FbCommand6 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommandSomaV := FirebirdSql.Data.Firebird.FbCommand.Create;
  Include(Self.Button1.Click, Self.Button1_Click);
  Include(Self.Button3.Click, Self.Button3_Click);
  Include(Self.LinkButton1.Click, Self.LinkButton1_Click);
  Include(Self.Button2.Click, Self.Button2_Click);
  // 
  // FbConnection1
  // 
  Self.FbConnection1.ConnectionString := (string(configurationAppSettings.GetValue('F' +
    'bConnection1.ConnectionString', TypeOf(string))));
  // 
  // FbCommand1
  // 
  Self.FbCommand1.CommandText := 'select anun_cod, anun_secao, anun_titulo, ' +
  'anun_descricao, anun_imagem, anun_data, anun_visualizacao, usu_nome,usu_c' +
  'idade,usu_estado,usu_telefone,usu_email from anuncios, usuarios where anu' +
  'ncios.usu_cod = usuarios.usu_cod and anun_cod = ?';
  Self.FbCommand1.Connection := Self.FbConnection1;
  Self.FbCommand1.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('A' +
      'NUNCIO', FirebirdSql.Data.Firebird.FbDbType.Integer, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'anun_cod', System.Data.DataRowVersion.Current, 
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
end;
// Verifica se o anúncio existe
if Label1.Text.ToString.Trim = nil then
begin
Response.Redirect('SemAnuncio.aspx');
end;

end;

procedure TWebForm1.SelecionaAnuncio;
begin
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

procedure TWebForm1.LinkButton1_Click(sender: System.Object; e: System.EventArgs);
begin
  Response.Redirect('mailto:'+LinkButton1.Text.ToString+'?subject='+Label1.Text.ToString);
end;

procedure TWebForm1.Button2_Click(sender: System.Object; e: System.EventArgs);
begin
  Response.Redirect('Default.aspx');
end;

procedure TWebForm1.Button3_Click(sender: System.Object; e: System.EventArgs);
begin
  Response.Redirect('Default.aspx');
end;

procedure TWebForm1.Button1_Click(sender: System.Object; e: System.EventArgs);
begin
  if Session['Usuario'] = nil then
Response.Redirect('Login.aspx')
else
Response.Redirect('Anuncio.aspx');
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

