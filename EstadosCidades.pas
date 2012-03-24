
unit EstadosCidades;

interface

uses
  System.Collections, System.ComponentModel,
  System.Data, System.Drawing, System.Web, System.Web.SessionState,
  System.Web.UI, System.Web.UI.WebControls, System.Web.UI.HtmlControls, 
  FirebirdSql.Data.Firebird, System.Text, System.Configuration;

type
  TWebForm1 = class(System.Web.UI.Page)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
    procedure Button1_Click(sender: System.Object; e: System.EventArgs);
    procedure DropDownList1_SelectedIndexChanged(sender: System.Object; e: System.EventArgs);
    procedure DropDownList2_SelectedIndexChanged(sender: System.Object; e: System.EventArgs);
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
  PageTitulo: system.web.ui.htmlcontrols.htmlgenericcontrol;
    DropDownList1: System.Web.UI.WebControls.DropDownList;
    DropDownList2: System.Web.UI.WebControls.DropDownList;
    FbConnection1: FirebirdSql.Data.Firebird.FbConnection;
    FbDataAdapter2: FirebirdSql.Data.Firebird.FbDataAdapter;
    FbDataAdapter3: FirebirdSql.Data.Firebird.FbDataAdapter;
    FbCommand1: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand2: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand3: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand4: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand5: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand6: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand7: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand8: FirebirdSql.Data.Firebird.FbCommand;
    Button1: System.Web.UI.WebControls.Button;
    procedure OnInit(e: EventArgs); override;
  private
    { Private Declarations }
  public
    { Public Declarations }
    function GetEstados(): DataSet;
    function GetCidades(ucodigo: System.&Object): DataView;
  end;

implementation

{$REGION 'Designer Managed Code'}
/// <summary>
/// Required method for Designer support -- do not modify
/// the contents of this method with the code editor.
/// </summary>
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

procedure TWebForm1.DropDownList2_SelectedIndexChanged(sender: System.Object;
  e: System.EventArgs);
begin

end;

procedure TWebForm1.DropDownList1_SelectedIndexChanged(sender: System.Object;
  e: System.EventArgs);
begin
    DropDownList2.DataSource := GetCidades(DropDownList1.SelectedValue);
    DropDownList2.DataTextField := 'cnome';
    DropDownList2.DataBind();
end;

procedure TWebForm1.Button1_Click(sender: System.Object; e: System.EventArgs);
var
  script: StringBuilder;
begin
if DropDownList2.SelectedValue <> nil then
begin
    //atente para o nome dos controles (TextBox) adicionados na Pagina.aspx
    script := StringBuilder.Create;
    script.Append('<script language="JavaScript">');
    script.Append('window.opener.document.forms[0]');
    script.Append('["'+Session['Text1'].ToString+'"].value="' + DropDownList1.SelectedItem.Text + '";');
    script.Append('window.opener.document.forms[0]');
    script.Append('["'+Session['Text2'].ToString+'"].value="' + DropDownList2.SelectedItem.Text + '";');
    script.Append('window.close(); </script>');
    RegisterClientScriptBlock('client', script.ToString);
end;
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

procedure TWebForm1.InitializeComponent;
var
  configurationAppSettings: System.Configuration.AppSettingsReader;
begin
  configurationAppSettings := System.Configuration.AppSettingsReader.Create;
  Self.FbConnection1 := FirebirdSql.Data.Firebird.FbConnection.Create;
  Self.FbDataAdapter2 := FirebirdSql.Data.Firebird.FbDataAdapter.Create;
  Self.FbCommand4 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand2 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand1 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand3 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbDataAdapter3 := FirebirdSql.Data.Firebird.FbDataAdapter.Create;
  Self.FbCommand8 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand6 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand5 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand7 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Include(Self.DropDownList1.SelectedIndexChanged, Self.DropDownList1_SelectedIndexChanged);
  Include(Self.DropDownList2.SelectedIndexChanged, Self.DropDownList2_SelectedIndexChanged);
  Include(Self.Button1.Click, Self.Button1_Click);
  // 
  // FbConnection1
  // 
  Self.FbConnection1.ConnectionString := (string(configurationAppSettings.GetValue('F' +
    'bConnection1.ConnectionString', TypeOf(string))));
  // 
  // FbDataAdapter2
  // 
  Self.FbDataAdapter2.DeleteCommand := Self.FbCommand4;
  Self.FbDataAdapter2.InsertCommand := Self.FbCommand2;
  Self.FbDataAdapter2.SelectCommand := Self.FbCommand1;
  Self.FbDataAdapter2.UpdateCommand := Self.FbCommand3;
  // 
  // FbCommand1
  // 
  Self.FbCommand1.CommandText := 'select ucodigo, unome, usigla from cep_uf ' +
  'where ucodigo = ucodigo order by 2';
  Self.FbCommand1.Connection := Self.FbConnection1;
  // 
  // FbDataAdapter3
  // 
  Self.FbDataAdapter3.DeleteCommand := Self.FbCommand8;
  Self.FbDataAdapter3.InsertCommand := Self.FbCommand6;
  Self.FbDataAdapter3.SelectCommand := Self.FbCommand5;
  Self.FbDataAdapter3.UpdateCommand := Self.FbCommand7;
  // 
  // FbCommand5
  // 
  Self.FbCommand5.CommandText := 'select distinct CNOME, CUF_CODIGO from CEP' +
  '_CIDADE where CUF_CODIGO = CUF_CODIGO order by 1';
  Self.FbCommand5.Connection := Self.FbConnection1;
  Include(Self.Load, Self.Page_Load);
end;
{$ENDREGION}

procedure TWebForm1.Page_Load(sender: System.Object; e: System.EventArgs);
begin
  // TODO: Put user code to initialize the page here
  PageTitulo.innertext:= 'Populando.com.br - Onde você anuncia e encontra tudo';
 if not IsPostBack then
  begin
    DropDownList1.DataSource := GetEstados();
    DropDownList1.DataTextField := 'unome';
    DropDownList1.DataValueField := 'ucodigo';
    DropDownList1.DataBind();
 // end else
 // begin
  //  DropDownList2.DataSource := GetCidades(DropDownList1.SelectedValue);
 //   DropDownList2.DataTextField := 'cnome';
   // DropDownList2.DataBind();
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

