// class abstract
abstract class Hewan {
  String? jenis;
  String? makan;
  void Info();
}

// implementasi interface
class Kucing implements Hewan{
  String? jenis;
  String? makan;
  String? Suara;

// konstruktor
  Kucing(this.jenis,this.makan,this.Suara);

  @override
  void Info(){
    print("Jenis hewan $jenis,pemakan $makan, dengan suara $Suara");
  
  }
 
}


void main(){
  var anakkucing = Kucing("kaki empat", "daging", "meong");
  anakkucing.Info();
  
 
}