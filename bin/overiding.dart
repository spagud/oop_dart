class Hewan {
  void Suara(){
    print("Meraung");
  }
}

class Kucing implements Hewan{
  @override
  void Suara(){
    print("meong,meong,meong");
  }
}
void main(){
  var anakkucing = Kucing();
  anakkucing.Suara();
  var harimau = Hewan();
  harimau.Suara();
}