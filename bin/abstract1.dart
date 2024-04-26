abstract class Pulau {
  String? nama;
  void info();
}

class Bali extends Pulau{
  @override
  void info() {
    // TODO: implement info
    print("Bali Keren");
  }
  
}
void main(){
  Bali b=Bali();
  b.info();
}