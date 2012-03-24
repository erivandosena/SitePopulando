unit Global;

interface

uses
  System.Collections, System.ComponentModel,
  System.Web, System.Web.SessionState;

type
  TGlobal = class(System.Web.HttpApplication)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
  {$ENDREGION}
  strict protected
    procedure Application_Start(sender: System.Object; e: EventArgs);
    procedure Session_Start(sender: System.Object; e: EventArgs);
    procedure Application_BeginRequest(sender: System.Object; e: EventArgs);
    procedure Application_EndRequest(sender: System.Object; e: EventArgs);
    procedure Application_AuthenticateRequest(sender: System.Object; e: EventArgs);
    procedure Application_Error(sender: System.Object; e: EventArgs);
    procedure Session_End(sender: System.Object; e: EventArgs);
    procedure Application_End(sender: System.Object; e: EventArgs);
  private
    { Private Declarations }
    procedure InclementaVisita(Num: Integer);
  public
    constructor Create;
  end;

implementation

{$REGION 'Designer Managed Code'}
/// <summary>
/// Required method for Designer support -- do not modify
/// the contents of this method with the code editor.
/// </summary>
procedure TGlobal.InclementaVisita(Num: Integer);
var
NumAtual: Integer;
begin
if Context.Cache['NumVisitante'] = nil then
begin
  Context.Cache['NumVisitante']:= &Object(1);
end
else
begin
NumAtual:= Convert.ToInt32(Context.Cache['NumVisitante']);
NumAtual:= NumAtual + Num;
Context.Cache['NumVisitante']:= &Object(NumAtual);
// Para não ficar com numero negativo
if Convert.ToInt32(Context.Cache['NumVisitante']) < 1 then
Context.Cache['NumVisitante']:= &Object(1);
end;
end;

procedure TGlobal.InitializeComponent;
begin

end;
{$ENDREGION}

constructor TGlobal.Create;
begin
  inherited;
  //
  // Required for Designer support
  //
  InitializeComponent;
  //
  // TODO: Add any constructor code after InitializeComponent call
  //
end;

procedure TGlobal.Application_Start(sender: System.Object; e: EventArgs);
begin
   //  HttpContext.Current.Session.Timeout:= 40;
end;

procedure TGlobal.Session_Start(sender: System.Object; e: EventArgs);
begin
InclementaVisita(1);
end;

procedure TGlobal.Application_BeginRequest(sender: System.Object; e: EventArgs);
begin

end;

procedure TGlobal.Application_EndRequest(sender: System.Object; e: EventArgs);
begin

end;

procedure TGlobal.Application_AuthenticateRequest(sender: System.Object; e: EventArgs);
begin

end;

procedure TGlobal.Application_Error(sender: System.Object; e: EventArgs);
begin

end;

procedure TGlobal.Session_End(sender: System.Object; e: EventArgs);
begin
InclementaVisita(-1);
end;

procedure TGlobal.Application_End(sender: System.Object; e: EventArgs);
begin

end;

end.

