
unit Default;

interface

uses
  System.Collections, System.ComponentModel,
  System.Data, System.Drawing, System.Web, System.Web.SessionState,
  System.Web.UI, System.Web.UI.WebControls, System.Web.UI.HtmlControls,
  FirebirdSql.Data.Firebird, System.Globalization, System.Configuration,
  ControleMessageBox, System.IO, System.Xml;

type
  TWebForm1 = class(System.Web.UI.Page)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
    procedure DataGrid1_ItemDataBound(sender: System.Object; e: System.Web.UI.WebControls.DataGridItemEventArgs);
    procedure DataGrid1_PageIndexChanged(source: System.Object; e: System.Web.UI.WebControls.DataGridPageChangedEventArgs);
    procedure ImageButton1_Click(sender: System.Object; e: System.Web.UI.ImageClickEventArgs);
    procedure Button1_Click(sender: System.Object; e: System.EventArgs);
    procedure ImageButton2_Click(sender: System.Object; e: System.Web.UI.ImageClickEventArgs);
    procedure LinkButton1_Click(sender: System.Object; e: System.EventArgs);
    procedure DropList_Estados_SelectedIndexChanged(sender: System.Object; e: System.EventArgs);
    procedure DropDownList_SelectedIndexChanged(sender: System.Object; e: System.EventArgs);
    procedure LinkButton2_Click(sender: System.Object; e: System.EventArgs);
    procedure ImageButton3_Click(sender: System.Object; e: System.Web.UI.ImageClickEventArgs);
    procedure ImageButton4_Click(sender: System.Object; e: System.Web.UI.ImageClickEventArgs);
    procedure ImageButton5_Click(sender: System.Object; e: System.Web.UI.ImageClickEventArgs);
    procedure DataGridV1_PageIndexChanged(source: System.Object; e: System.Web.UI.WebControls.DataGridPageChangedEventArgs);
    procedure DataGridV2_PageIndexChanged(source: System.Object; e: System.Web.UI.WebControls.DataGridPageChangedEventArgs);
    procedure ImageButton6_Click(sender: System.Object; e: System.Web.UI.ImageClickEventArgs);
    procedure DataGrid2_PageIndexChanged(source: System.Object; e: System.Web.UI.WebControls.DataGridPageChangedEventArgs);
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
    FbDA_Padrao: FirebirdSql.Data.Firebird.FbDataAdapter;
    FbConnection1: FirebirdSql.Data.Firebird.FbConnection;
    FbCommand1: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand2: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand3: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand4: FirebirdSql.Data.Firebird.FbCommand;
    DS_Padrao: System.Data.DataSet;
    ListBox1: System.Web.UI.WebControls.ListBox;
    FbDA_Secao: FirebirdSql.Data.Firebird.FbDataAdapter;
    DS_Secao: System.Data.DataSet;
    FbCommand5: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand6: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand7: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand8: FirebirdSql.Data.Firebird.FbCommand;
    Button1: System.Web.UI.WebControls.Button;
    HyperLink1: System.Web.UI.WebControls.HyperLink;
    TextPesquisa: System.Web.UI.WebControls.TextBox;
    DropDownList: System.Web.UI.WebControls.DropDownList;
    ImageButton1: System.Web.UI.WebControls.ImageButton;
    DataGrid1: System.Web.UI.WebControls.DataGrid;
    Label1: System.Web.UI.WebControls.Label;
    Image1: System.Web.UI.WebControls.Image;
    ImageButton2: System.Web.UI.WebControls.ImageButton;
    DropList_Estados: System.Web.UI.WebControls.DropDownList;
    DropList_Cidades: System.Web.UI.WebControls.DropDownList;
    LinkButton1: System.Web.UI.WebControls.LinkButton;
    FbDA_Estados: FirebirdSql.Data.Firebird.FbDataAdapter;
    FbDA_Cidades: FirebirdSql.Data.Firebird.FbDataAdapter;
    FbCommand9: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand10: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand11: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand12: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand13: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand14: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand15: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand16: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand17: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand18: FirebirdSql.Data.Firebird.FbCommand;
    ImageButton3: System.Web.UI.WebControls.ImageButton;
    ImageButton4: System.Web.UI.WebControls.ImageButton;
    LinkButton2: System.Web.UI.WebControls.LinkButton;
    MessageBox1: ControleMessageBox.MessageBox;
    ImageButton5: System.Web.UI.WebControls.ImageButton;
    Image2: System.Web.UI.WebControls.Image;
    FbCommand22: FirebirdSql.Data.Firebird.FbCommand;
    FbDataAdapterV1: FirebirdSql.Data.Firebird.FbDataAdapter;
    FbDataAdapterV2: FirebirdSql.Data.Firebird.FbDataAdapter;
    FbCommand23: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand24: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand25: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand26: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand27: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand28: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand29: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand30: FirebirdSql.Data.Firebird.FbCommand;
    DataSetV1: System.Data.DataSet;
    DataSetV2: System.Data.DataSet;
    DataGridV1: System.Web.UI.WebControls.DataGrid;
    DataGridV2: System.Web.UI.WebControls.DataGrid;
    ImageButton6: System.Web.UI.WebControls.ImageButton;
    Label2: System.Web.UI.WebControls.Label;
    DataGrid2: System.Web.UI.WebControls.DataGrid;
    DataSetLateral: System.Data.DataSet;
    FbDataAdapterLateral: FirebirdSql.Data.Firebird.FbDataAdapter;
    FbCommand19: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand20: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand21: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand31: FirebirdSql.Data.Firebird.FbCommand;
    Label3: System.Web.UI.WebControls.Label;
    procedure OnInit(e: EventArgs); override;
  private
    procedure SelecionaClassificados;
    procedure Localizar;
    procedure CarregaCombos;
    procedure MaisVisualizados1;
    procedure MaisVisualizados2;
    procedure AnunciosLateral;
    { Private Declarations }
  public
    { Public Declarations }
    function GetEstados(): DataSet;
    function GetCidades(ucodigo: System.&Object): DataView;
  end;

Var
   imgBase, imgFinal: System.Drawing.Image;
   largura, altura: Double;
   dimensoes: Size;
   grafico : System.drawing.Graphics;
   retangulo :  Rectangle;
   drEst, drVza, dr1, dr2: FbDataReader;

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
  Self.FbDA_Padrao := FirebirdSql.Data.Firebird.FbDataAdapter.Create;
  Self.FbCommand4 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand2 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand1 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbConnection1 := FirebirdSql.Data.Firebird.FbConnection.Create;
  Self.FbCommand3 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.DS_Padrao := System.Data.DataSet.Create;
  Self.FbDA_Secao := FirebirdSql.Data.Firebird.FbDataAdapter.Create;
  Self.FbCommand8 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand6 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand5 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand7 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.DS_Secao := System.Data.DataSet.Create;
  Self.FbCommand12 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand16 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbDA_Estados := FirebirdSql.Data.Firebird.FbDataAdapter.Create;
  Self.FbCommand17 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand10 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand9 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand11 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbDA_Cidades := FirebirdSql.Data.Firebird.FbDataAdapter.Create;
  Self.FbCommand18 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand14 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand13 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand15 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand22 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbDataAdapterV1 := FirebirdSql.Data.Firebird.FbDataAdapter.Create;
  Self.FbCommand26 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand24 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand23 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand25 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbDataAdapterV2 := FirebirdSql.Data.Firebird.FbDataAdapter.Create;
  Self.FbCommand30 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand28 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand27 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand29 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.DataSetV1 := System.Data.DataSet.Create;
  Self.DataSetV2 := System.Data.DataSet.Create;
  Self.DataSetLateral := System.Data.DataSet.Create;
  Self.FbDataAdapterLateral := FirebirdSql.Data.Firebird.FbDataAdapter.Create;
  Self.FbCommand31 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand20 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand19 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand21 := FirebirdSql.Data.Firebird.FbCommand.Create;
  (System.ComponentModel.ISupportInitialize(Self.DS_Padrao)).BeginInit;
  (System.ComponentModel.ISupportInitialize(Self.DS_Secao)).BeginInit;
  (System.ComponentModel.ISupportInitialize(Self.DataSetV1)).BeginInit;
  (System.ComponentModel.ISupportInitialize(Self.DataSetV2)).BeginInit;
  (System.ComponentModel.ISupportInitialize(Self.DataSetLateral)).BeginInit;
  Include(Self.DataGrid2.PageIndexChanged, Self.DataGrid2_PageIndexChanged);
  Include(Self.ImageButton5.Click, Self.ImageButton5_Click);
  Include(Self.Button1.Click, Self.Button1_Click);
  Include(Self.ImageButton6.Click, Self.ImageButton6_Click);
  Include(Self.DropList_Estados.SelectedIndexChanged, Self.DropList_Estados_SelectedIndexChanged);
  Include(Self.ImageButton3.Click, Self.ImageButton3_Click);
  Include(Self.ImageButton4.Click, Self.ImageButton4_Click);
  Include(Self.DropDownList.SelectedIndexChanged, Self.DropDownList_SelectedIndexChanged);
  Include(Self.ImageButton1.Click, Self.ImageButton1_Click);
  Include(Self.LinkButton2.Click, Self.LinkButton2_Click);
  Include(Self.DataGridV1.PageIndexChanged, Self.DataGridV1_PageIndexChanged);
  Include(Self.DataGridV2.PageIndexChanged, Self.DataGridV2_PageIndexChanged);
  Include(Self.LinkButton1.Click, Self.LinkButton1_Click);
  Include(Self.DataGrid1.PageIndexChanged, Self.DataGrid1_PageIndexChanged);
  Include(Self.DataGrid1.ItemDataBound, Self.DataGrid1_ItemDataBound);
  Include(Self.ImageButton2.Click, Self.ImageButton2_Click);
  // 
  // FbDA_Padrao
  // 
  Self.FbDA_Padrao.DeleteCommand := Self.FbCommand4;
  Self.FbDA_Padrao.InsertCommand := Self.FbCommand2;
  Self.FbDA_Padrao.SelectCommand := Self.FbCommand1;
  Self.FbDA_Padrao.UpdateCommand := Self.FbCommand3;
  // 
  // FbCommand1
  // 
  Self.FbCommand1.CommandText := 'select anun_cod, anun_imagem, anun_titulo,' +
  ' anun_secao from anuncios where anun_data >= CURRENT_DATE order by 1 desc';
  Self.FbCommand1.Connection := Self.FbConnection1;
  // 
  // FbConnection1
  // 
  Self.FbConnection1.ConnectionString := (string(configurationAppSettings.GetValue('F' +
    'bConnection1.ConnectionString', TypeOf(string))));
  // 
  // DS_Padrao
  // 
  Self.DS_Padrao.DataSetName := 'NewDataSet';
  Self.DS_Padrao.Locale := System.Globalization.CultureInfo.Create('pt-BR');
  // 
  // FbDA_Secao
  // 
  Self.FbDA_Secao.DeleteCommand := Self.FbCommand8;
  Self.FbDA_Secao.InsertCommand := Self.FbCommand6;
  Self.FbDA_Secao.SelectCommand := Self.FbCommand5;
  Self.FbDA_Secao.UpdateCommand := Self.FbCommand7;
  // 
  // FbCommand5
  // 
  Self.FbCommand5.CommandText := 'select anun_cod, anun_imagem, anun_titulo,' +
  ' anun_secao, usu_estado, usu_cidade from anuncios, usuarios where anun_da' +
  'ta >= CURRENT_DATE and anun_secao like @anun_secao and usu_estado like @u' +
  'su_estado and usu_cidade like @usu_cidade and upper(anun_titulo) like @an' +
  'un_titulo and anuncios.usu_cod = usuarios.usu_cod or anun_data >= CURRENT' +
  '_DATE and anun_secao like @anun_secao and usu_estado like @usu_estado and' +
  ' usu_cidade like @usu_cidade and anun_descricao like @anun_descricao and ' +
  'anuncios.usu_cod = usuarios.usu_cod order by 1 desc';
  Self.FbCommand5.Connection := Self.FbConnection1;
  // 
  // DS_Secao
  // 
  Self.DS_Secao.DataSetName := 'NewDataSet';
  Self.DS_Secao.Locale := System.Globalization.CultureInfo.Create('pt-BR');
  // 
  // FbDA_Estados
  // 
  Self.FbDA_Estados.DeleteCommand := Self.FbCommand17;
  Self.FbDA_Estados.InsertCommand := Self.FbCommand10;
  Self.FbDA_Estados.SelectCommand := Self.FbCommand9;
  Self.FbDA_Estados.UpdateCommand := Self.FbCommand11;
  // 
  // FbCommand9
  // 
  Self.FbCommand9.CommandText := 'select distinct ucodigo, unome  from cep_u' +
  'f where ucodigo = ucodigo order by 2';
  Self.FbCommand9.Connection := Self.FbConnection1;
  // 
  // FbDA_Cidades
  // 
  Self.FbDA_Cidades.DeleteCommand := Self.FbCommand18;
  Self.FbDA_Cidades.InsertCommand := Self.FbCommand14;
  Self.FbDA_Cidades.SelectCommand := Self.FbCommand13;
  Self.FbDA_Cidades.UpdateCommand := Self.FbCommand15;
  // 
  // FbCommand13
  // 
  Self.FbCommand13.CommandText := 'select distinct cnome, cuf_codigo from ce' +
  'p_cidade where cuf_codigo = cuf_codigo order by 1';
  Self.FbCommand13.Connection := Self.FbConnection1;
  // 
  // FbDataAdapterV1
  // 
  Self.FbDataAdapterV1.DeleteCommand := Self.FbCommand26;
  Self.FbDataAdapterV1.InsertCommand := Self.FbCommand24;
  Self.FbDataAdapterV1.SelectCommand := Self.FbCommand23;
  Self.FbDataAdapterV1.UpdateCommand := Self.FbCommand25;
  // 
  // FbCommand23
  // 
  Self.FbCommand23.CommandText := 'select anun_imagem, anun_titulo, anun_cod' +
  ', anun_visualizacao from anuncios'#13#10'where anun_data >= CURRENT_DATE ' +
  'and anun_visualizacao > ''5'''#13#10'and anun_imagem is not null and anun' +
  '_secao <> ''SEXO - Profissionais'' order by 4 desc';
  Self.FbCommand23.Connection := Self.FbConnection1;
  // 
  // FbDataAdapterV2
  // 
  Self.FbDataAdapterV2.DeleteCommand := Self.FbCommand30;
  Self.FbDataAdapterV2.InsertCommand := Self.FbCommand28;
  Self.FbDataAdapterV2.SelectCommand := Self.FbCommand27;
  Self.FbDataAdapterV2.UpdateCommand := Self.FbCommand29;
  // 
  // FbCommand27
  // 
  Self.FbCommand27.CommandText := 'select anun_titulo, anun_cod, anun_visual' +
  'izacao from anuncios'#13#10'where anun_data >= CURRENT_DATE and anun_visu' +
  'alizacao > ''5'''#13#10'and anun_imagem is null or anun_secao = ''SEXO - ' +
  'Profissionais'' and anun_data >= CURRENT_DATE and anun_visualizacao > ''5' +
  ''' order by 3 desc';
  Self.FbCommand27.Connection := Self.FbConnection1;
  // 
  // DataSetV1
  // 
  Self.DataSetV1.DataSetName := 'NewDataSet';
  Self.DataSetV1.Locale := System.Globalization.CultureInfo.Create('pt-BR');
  // 
  // DataSetV2
  // 
  Self.DataSetV2.DataSetName := 'NewDataSet';
  Self.DataSetV2.Locale := System.Globalization.CultureInfo.Create('pt-BR');
  // 
  // DataSetLateral
  // 
  Self.DataSetLateral.DataSetName := 'NewDataSet';
  Self.DataSetLateral.Locale := System.Globalization.CultureInfo.Create('pt-' +
    'BR');
  // 
  // FbDataAdapterLateral
  // 
  Self.FbDataAdapterLateral.DeleteCommand := Self.FbCommand31;
  Self.FbDataAdapterLateral.InsertCommand := Self.FbCommand20;
  Self.FbDataAdapterLateral.SelectCommand := Self.FbCommand19;
  Self.FbDataAdapterLateral.UpdateCommand := Self.FbCommand21;
  // 
  // FbCommand19
  // 
  Self.FbCommand19.CommandText := 'select anun_imagem, anun_titulo, anun_cod' +
  ' from anuncios'#13#10'where anun_data >= CURRENT_DATE and anun_imagem is ' +
  'not null and anun_secao <> ''SEXO - Profissionais'' order by 3';
  Self.FbCommand19.Connection := Self.FbConnection1;
  Include(Self.Load, Self.Page_Load);
  (System.ComponentModel.ISupportInitialize(Self.DS_Padrao)).EndInit;
  (System.ComponentModel.ISupportInitialize(Self.DS_Secao)).EndInit;
  (System.ComponentModel.ISupportInitialize(Self.DataSetV1)).EndInit;
  (System.ComponentModel.ISupportInitialize(Self.DataSetV2)).EndInit;
  (System.ComponentModel.ISupportInitialize(Self.DataSetLateral)).EndInit;
end;
{$ENDREGION}

procedure TWebForm1.Page_Load(sender: System.Object; e: System.EventArgs);
begin
  // TODO: Put user code to initialize the page here
  if not IsPostBack then
  begin
  CarregaCombos;
  SelecionaClassificados;
  Label1.Text:= 'Hoje é '+System.DateTime.Now.ToLongDateString;
  //MostraEstadosAnuncios;
  MaisVisualizados1;
  MaisVisualizados2;
end;
if (Session['Resolucao'] = nil) then
begin
Response.Redirect('Tela.aspx')
end else

if Convert.ToInt32(session['Resolucao']) >= 1024 then
begin
Label2.Text:= '<iframe src="http://pmssrv.mercadolivre.com.br/jm/PmsSrv?tool=5204487&creativity=108201&new=N&ovr=Y" width="180" height="150" scrolling="no" frameborder="0" marginheight="0" marginwidth="0"></iframe>';
DataGrid2.Visible:= True;
if not IsPostBack then
begin
      AnunciosLateral;
end;
  Label3.Text:= '<script language="JavaScript1.1" type="text/javascript" src=http://afiliados.submarino.com.br/afiliados/get_banner.asp?tipo=vertical&franq=254024></script> ';
  Exit;
end else
DataGrid2.Visible:= False;
Label2.Text:= nil;
Label3.Text:= nil;

end;

procedure TWebForm1.OnInit(e: EventArgs);
begin
  //
  // Required for Designer support
  //
  InitializeComponent;
  inherited OnInit(e);
end;

procedure TWebForm1.SelecionaClassificados;
begin
  FbDA_Padrao.Fill(DS_Padrao);
  DataGrid1.DataSource := DS_Padrao;
  DataGrid1.DataBind;
end;

procedure TWebForm1.Localizar;
begin
  DataGrid1.CurrentPageIndex := 0;
  FbDA_Secao.SelectCommand.Parameters[0].Value := DropDownList.SelectedItem.Text;
  if DropDownList.SelectedIndex = 0 then
  begin
    FbDA_Secao.SelectCommand.Parameters[0].Value := '%';
  end;
  FbDA_Secao.SelectCommand.Parameters[1].Value := DropList_Estados.SelectedItem.Text;
  if DropList_Estados.SelectedValue = 'Selecione...' then
  begin
    FbDA_Secao.SelectCommand.Parameters[1].Value := '%';
  end;
  FbDA_Secao.SelectCommand.Parameters[2].Value := DropList_Cidades.SelectedItem.Text;
  if DropList_Cidades.SelectedValue = 'Selecione...' then
  begin
    FbDA_Secao.SelectCommand.Parameters[2].Value := '%';
  end;
  FbDA_Secao.SelectCommand.Parameters[3].Value := '%' + TextPesquisa.Text.ToUpper + '%';
  FbDA_Secao.SelectCommand.Parameters[4].Value := '%' + TextPesquisa.Text + '%';
  FbDA_Secao.Fill(DS_Secao);
  DataGrid1.DataSource := DS_Secao;
  DataGrid1.DataBind;
end;

procedure TWebForm1.DropList_Estados_SelectedIndexChanged(sender: System.Object;
  e: System.EventArgs);
begin
    DropList_Cidades.DataSource := GetCidades(DropList_Estados.SelectedValue);
    DropList_Cidades.DataTextField := 'cnome';
    DropList_Cidades.DataBind();
//  Localizar estado selecionado
if DropList_Estados.SelectedValue = 'Selecione...' then
begin
MessageBox1.ShowMessage('Selecione o Estado');
Exit;
end;
  DataGrid1.CurrentPageIndex := 0;
  FbDA_Secao.SelectCommand.Parameters[0].Value := '%';
  if DropList_Estados.SelectedValue <> 'Selecione...' then
  begin
      FbDA_Secao.SelectCommand.Parameters[1].Value := DropList_Estados.SelectedItem.Text;
  end;
  FbDA_Secao.SelectCommand.Parameters[2].Value := '%';
  FbDA_Secao.SelectCommand.Parameters[3].Value := '%';
  FbDA_Secao.SelectCommand.Parameters[4].Value := '%';
  FbDA_Secao.Fill(DS_Secao);
  DataGrid1.DataSource := DS_Secao;
  DataGrid1.DataBind;
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

procedure TWebForm1.AnunciosLateral;
begin
  FbDataAdapterLateral.SelectCommand.CommandText := 'select anun_imagem, anun_titulo, anun_cod from anuncios where anun_data >= CURRENT_DATE and anun_imagem is not null and anun_secao <> ' + '''' + 'SEXO - Profissionais' + '''' + ' order by 3';
  FbDataAdapterLateral.Fill(DataSetLateral);
  DataGrid2.DataSource := DataSetLateral;
  DataGrid2.DataBind;
end;

procedure TWebForm1.DataGrid2_PageIndexChanged(source: System.Object; e: System.Web.UI.WebControls.DataGridPageChangedEventArgs);
begin
  DataGrid2.CurrentPageIndex:= e.NewPageIndex;
  AnunciosLateral;
end;

procedure TWebForm1.ImageButton6_Click(sender: System.Object; e: System.Web.UI.ImageClickEventArgs);
begin
Response.Redirect('IndicaAmigo.aspx');
end;

procedure TWebForm1.DataGridV2_PageIndexChanged(source: System.Object; e: System.Web.UI.WebControls.DataGridPageChangedEventArgs);
begin
  DataGridV2.CurrentPageIndex:= e.NewPageIndex;
  MaisVisualizados2;
end;

procedure TWebForm1.DataGridV1_PageIndexChanged(source: System.Object; e: System.Web.UI.WebControls.DataGridPageChangedEventArgs);
begin
  DataGridV1.CurrentPageIndex:= e.NewPageIndex;
  MaisVisualizados1;
end;

procedure TWebForm1.MaisVisualizados2;
begin
  FbDataAdapterV2.Fill(DataSetV2);
  DataGridV2.DataSource := DataSetV2;
  DataGridV2.DataBind;
end;

procedure TWebForm1.MaisVisualizados1;
begin
  FbDataAdapterV1.Fill(DataSetV1);
  DataGridV1.DataSource := DataSetV1;
  DataGridV1.DataBind;
end;

procedure TWebForm1.ImageButton5_Click(sender: System.Object; e: System.Web.UI.ImageClickEventArgs);
begin
    Response.Redirect('/rss/anuncios.xml');
end;

procedure TWebForm1.ImageButton4_Click(sender: System.Object; e: System.Web.UI.ImageClickEventArgs);
begin
if DropList_Cidades.SelectedValue = 'Selecione...' then
begin
MessageBox1.ShowMessage('Selecione a Cidade');
Exit;
end;
if DropList_Estados.SelectedValue = 'Selecione...' then
begin
MessageBox1.ShowMessage('Selecione o Estado');
Exit;
end;
  DataGrid1.CurrentPageIndex := 0;
  FbDA_Secao.SelectCommand.Parameters[0].Value := '%';
  if DropList_Estados.SelectedValue <> 'Selecione...' then
  begin
      FbDA_Secao.SelectCommand.Parameters[1].Value := DropList_Estados.SelectedItem.Text;
  end;
  if DropList_Cidades.SelectedValue <> 'Selecione...' then
  begin
      FbDA_Secao.SelectCommand.Parameters[2].Value := DropList_Cidades.SelectedItem.Text;
  end;
  FbDA_Secao.SelectCommand.Parameters[3].Value := '%';
  FbDA_Secao.SelectCommand.Parameters[4].Value := '%';
  FbDA_Secao.Fill(DS_Secao);
  DataGrid1.DataSource := DS_Secao;
  DataGrid1.DataBind;
end;

procedure TWebForm1.ImageButton3_Click(sender: System.Object; e: System.Web.UI.ImageClickEventArgs);
begin
if DropList_Estados.SelectedValue = 'Selecione...' then
begin
MessageBox1.ShowMessage('Selecione o Estado');
Exit;
end;
  DataGrid1.CurrentPageIndex := 0;
  FbDA_Secao.SelectCommand.Parameters[0].Value := '%';
  if DropList_Estados.SelectedValue <> 'Selecione...' then
  begin
      FbDA_Secao.SelectCommand.Parameters[1].Value := DropList_Estados.SelectedItem.Text;
  end;
  FbDA_Secao.SelectCommand.Parameters[2].Value := '%';
  FbDA_Secao.SelectCommand.Parameters[3].Value := '%';
  FbDA_Secao.SelectCommand.Parameters[4].Value := '%';
  FbDA_Secao.Fill(DS_Secao);
  DataGrid1.DataSource := DS_Secao;
  DataGrid1.DataBind;
end;

procedure TWebForm1.CarregaCombos;
begin
  //**** Preenche combo com Estados
  DropList_Estados.DataSource := GetEstados;
  DropList_Estados.DataTextField := 'unome';
  DropList_Estados.DataValueField := 'ucodigo';
  DropList_Estados.DataBind;
  DropList_Estados.Items.Add('Selecione...');
  // **** Preenche combo com Cidades
  DropList_Cidades.DataSource := GetCidades(DropList_Estados.SelectedValue);
  DropList_Cidades.DataTextField := 'cnome';
  DropList_Cidades.DataBind;
  DropList_Cidades.Items.Add('Selecione...');
  // **** Seleciona tipos de escolha
  DropList_Estados.SelectedValue := 'Selecione...';
  DropList_Cidades.SelectedValue := 'Selecione...';
end;

procedure TWebForm1.LinkButton2_Click(sender: System.Object; e: System.EventArgs);
begin
  TextPesquisa.Text:= '';
  DropDownList.SelectedIndex:= 0;
  CarregaCombos;
  Localizar;
end;

procedure TWebForm1.DropDownList_SelectedIndexChanged(sender: System.Object;
  e: System.EventArgs);
begin

end;

function TWebForm1.GetEstados: DataSet;
var
  ds: DataSet;
begin
  if (Cache['Estados'] = nil) then
  begin
    ds := DataSet.Create();
   	FbDA_Estados.Fill(ds,'cep_uf');
    FbDA_Cidades.Fill(ds,'cep_cidade');
   	Cache['Estados'] := ds;
  end;
   result := Cache['Estados'] as DataSet;
end;

procedure TWebForm1.LinkButton1_Click(sender: System.Object; e: System.EventArgs);
begin
TextPesquisa.Text:= '';
DropDownList.SelectedIndex:= 0;
  Localizar;
end;

procedure TWebForm1.ImageButton2_Click(sender: System.Object; e: System.Web.UI.ImageClickEventArgs);
begin
  Response.Redirect('http://www.inforamos.com/');
end;

procedure TWebForm1.Button1_Click(sender: System.Object; e: System.EventArgs);
begin
if Session['Usuario'] = nil then
Response.Redirect('Login.aspx')
else
Response.Redirect('Anuncio.aspx');
end;

procedure TWebForm1.ImageButton1_Click(sender: System.Object; e: System.Web.UI.ImageClickEventArgs);
begin
  Localizar;
end;

procedure TWebForm1.DataGrid1_PageIndexChanged(source: System.Object; e: System.Web.UI.WebControls.DataGridPageChangedEventArgs);
begin
  DataGrid1.CurrentPageIndex:= e.NewPageIndex;
  SelecionaClassificados;
end;

procedure TWebForm1.DataGrid1_ItemDataBound(sender: System.Object; e: System.Web.UI.WebControls.DataGridItemEventArgs);
begin
//DataGrid1.BackImageUrl:= 'imagens/populando_img_fundo.gif';
if (e.Item.ItemType = ListItemType.Item) or (e.Item.ItemType = ListItemType.AlternatingItem) then
begin
e.Item.Cells[0].Text:= '<img height="20" alt="Clique no anúncio para visualizar" src="imagens/populando_anuncios.gif">';
end;
end;

end.

