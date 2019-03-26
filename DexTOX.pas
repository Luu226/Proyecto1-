unit DexTOX;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo,
  System.ImageList, FMX.ImgList;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    lbnUsuario: TLabel;
    btnLogin: TButton;
    lbnContrase�a: TLabel;
    txtUsuario: TEdit;
    txtContrase�a: TEdit;
    PasswordEditButton1: TPasswordEditButton;
    btrRecuperar: TRadioButton;
    btrRegistrar: TRadioButton;
    lbnTitulo: TLabel;
    btnSalir: TButton;
    ImgLogo: TImageList;
    procedure btnLoginClick(Sender: TObject);
    procedure btrRecuperarChange(Sender: TObject);
    procedure btrRegistrarChange(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}
{$R *.Moto360.fmx ANDROID}
{$R *.SSW3.fmx ANDROID}

procedure TForm1.btnLoginClick(Sender: TObject);

  //declaro variables
  var
  usuario:string;
  contrase�a:string;


begin
       usuario := txtUsuario.Text;
       contrase�a := txtContrase�a.Text;

      if(usuario = 'Lulu') and (contrase�a = '1234')then

begin
      ShowMessage('Espera un momento...');
      
end
      else if (usuario = '') and (contrase�a = '')then
begin

      ShowMessage('Usuario no registrado');

end
        else
begin
      ShowMessage('Usuario o contrase�a incorrecto');

end;

  end;


procedure TForm1.btnSalirClick(Sender: TObject);
begin

  ShowMessage('Est� seguro que desea salir');

  close();

end;

procedure TForm1.btrRecuperarChange(Sender: TObject);
begin

       ShowMessage ('Recuperar contrase�a'
       + sLineBreak +' pregunta de seguridad:'  + sLineBreak +
       '�Nombre de su perro favorito? ');
end;

procedure TForm1.btrRegistrarChange(Sender: TObject);
begin
      ShowMessage('Un momento, por favor espere');
end;

end.

