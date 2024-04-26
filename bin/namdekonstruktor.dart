class Person{
  String nama = 'Guest';
  String? alamat;
  final String negara ='Indonesia';
  Person(this.nama, this.alamat){}
  Person.withNama(this.nama){}
  Person.withAlamat(this.alamat){}

  void sayaHelo(){
    print('helo $nama, alamat $alamat, asal negara $negara');

  }

}
void main(){
  var p = Person("eljava", "Malang");
  var p1 = Person.withNama("hisyam");
  var p2 = Person.withAlamat("surabaya");
  p2.sayaHelo();
}