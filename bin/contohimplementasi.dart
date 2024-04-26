// Interface Mahasiswa
abstract class Mahasiswa {
  String? nama;
  String? nim;

  void info();
}

// Implementasi interface Mahasiswa pada class MahasiswaTeknik
class MahasiswaTeknik implements Mahasiswa {
  String? nama;
  String? nim;
  String? jurusan;

  MahasiswaTeknik(this.nama, this.nim, this.jurusan);

  @override
  void info() {
    print('Mahasiswa Teknik:');
    print('Nama: $nama');
    print('NIM: $nim');
    print('Jurusan: $jurusan');
  }
}

// Implementasi interface Mahasiswa pada class MahasiswaEkonomi
class MahasiswaEkonomi implements Mahasiswa {
  String? nama;
  String? nim;
  String? jurusan;

  MahasiswaEkonomi(this.nama, this.nim, this.jurusan);

  @override
  void info() {
    print('Mahasiswa Ekonomi:');
    print('Nama: $nama');
    print('NIM: $nim');
    print('Jurusan: $jurusan');
  }
}

void main() {
  // Penggunaan class MahasiswaTeknik
  var mahasiswaTeknik = MahasiswaTeknik('Andi', '123456', 'Teknik Informatika');
  mahasiswaTeknik.info();

  // Penggunaan class MahasiswaEkonomi
  var mahasiswaEkonomi = MahasiswaEkonomi('Budi', '654321', 'Manajemen');
  mahasiswaEkonomi.info();
}