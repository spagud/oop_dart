class Person{
  String? nama;
  String? alamat;
  final String negara ='Indonesia';
 //konstruktor
  Person(String nm, String al){
    nama = nm;
    alamat = al;
  }
  void sayHelo(){
    print('Helo $nama, alamat $alamat, Negara $negara');

  }
}

void main(){
  var p = Person("eljava mifzal","malang" );
  p.sayHelo();

}