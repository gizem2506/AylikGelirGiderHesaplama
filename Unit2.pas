unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Colors, FMX.Edit, FMX.Layouts,
  FMX.ListBox;

type
  TForm2 = class(TForm)
    ColorButton1: TColorButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ListBox1: TListBox;
    ComboBox1: TComboBox;
    Edit2: TEdit;
    Button4: TButton;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    ListBoxItem5: TListBoxItem;
    ListBoxItem6: TListBoxItem;
    ListBoxItem7: TListBoxItem;
    ListBoxItem8: TListBoxItem;
    ListBoxItem9: TListBoxItem;
    ListBoxItem10: TListBoxItem;
    ListBoxItem11: TListBoxItem;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}
          var
           butce : Real;
   harcanan : Real;
   kalan : Real;
   deger : Real;
   adgelir : Real;

procedure TForm2.Button1Click(Sender: TObject);
begin
ListBox1.Items.Clear;
  butce := StrToFloat(Edit1.Text);
  harcanan := 0;
  adgelir :=0;
  kalan := butce;
  label3.Text := 'Toplam harcanan para: '+ FloatToStr(harcanan) + ' TL';
  label4.Text := 'Kalan Tutar: '+ FloatToStr(kalan)+ ' TL';
  label5.Text := 'Ek Gelir: '+ FloatToStr(adgelir)+ ' TL'
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
Form2.Close;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
deger := StrToFloat(Edit2.Text);
  ListBox1.Items.Add(FloatToStr(deger)+' TL Gelir Eklendi');
  kalan := kalan+StrToFloat(Edit2.Text);
  label4.Text := 'Kalan Tutar: '+ FloatToStr(kalan)+ ' TL';
  adgelir := adgelir+deger;
  label5.Text := 'Ek Gelir: '+ FloatToStr(adgelir)+ ' TL';
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
deger := StrToFloat(Edit2.Text);
if kalan >= deger then
 begin
      ListBox1.Items.Add(FloatToStr(deger) + ' TL Harcama Yap?ld?- ' + ComboBox1.Items[ComboBox1.ItemIndex]);
      harcanan := harcanan + StrToFloat(Edit2.Text);
      label3.Text := 'Toplam harcanan para: '+ FloatToStr(harcanan) + ' TL';
      kalan := kalan-StrToFloat(Edit2.Text);
      label4.Text := 'Kalan Tutar: '+ FloatToStr(kalan)+ ' TL';
 end
 else
   ShowMessage(' Paran?z harcama yapmak i?in yeterli de?ildir.');
end;

end.
