class Orang{
  String nama;
  int umur;

  // konstruktor default
  Orang(this.nama,this.umur);

  // method
  void SayHelo(){
    print("Halo nama saya $nama dan umur saya $umur");
  }
  
  }

  class Anak extends Orang{
    String alamat;

    Anak(String nama, int umur, this.alamat) :super(nama,umur);

    void SayAnak(){
      print("Hai namaku $nama dan umurku $umur beralamat di $alamat");

    } 

  }
  void main(){

    var anak1 = Anak("kiki", 20, "denpasar");
    anak1.SayAnak();
          
    var orang1 = Orang("koko", 44);
    orang1.SayHelo();
  }
