unit uCalculaNota;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnCalcular: TButton;
    edtFalta: TEdit;
    edtNota1: TEdit;
    edtNota2: TEdit;
    edtNota3: TEdit;
    edtNota4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

const
  MEDIA_APROVACAO = 7.0;
  MAX_FALTAS = 10;

{ TForm1 }

procedure TForm1.btnCalcularClick(Sender: TObject);
var
   media, nota1, nota2, nota3, nota4, faltas: double;
   resultado: string;

begin
   // Convertendo valores dos campos para números
   nota1:= StrToFloat(edtNota1.Text);
   nota2:= StrToFloat(edtNota2.Text);
   nota3:= StrToFloat(edtNota3.Text);
   nota4:= StrToFloat(edtNota4.Text);
   faltas:= StrToFloat(edtFalta.Text);

   // Calculando a média das notas
   media := (nota1 + nota2 + nota3 + nota4) / 4;

   // Verificando se o aluno foi aprovado ou reprovado
  if faltas > MAX_FALTAS then
    resultado := 'Reprovado por excesso de faltas'
  else

  if media >= MEDIA_APROVACAO then
    resultado := 'Aprovado'
  else
    resultado := 'Reprovado por nota';

  // Exibindo o resultado
  ShowMessage('Média: ' + FloatToStr(media) + #13#10 + resultado);
end;

end.

