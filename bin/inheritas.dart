class Manager{
  String? nama;
  Manager(){
    print('manager BOE Malang');
  }
  void sayHelo(String nama){
    print('helo $nama, my name is ${this.nama}');

  }
}
class VicePresident extends Manager{

}
void main(){
  var vp = VicePresident();
  vp.nama = 'hisym';
  vp.sayHelo('budi');
}