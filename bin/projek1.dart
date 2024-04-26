import 'dart:math';

// Enum untuk merepresentasikan pilihan pemain
enum Pilihan { batu, kertas, gunting }

// Kelas untuk merepresentasikan pemain
class Pemain {
  String nama;
  Pilihan pilihan;

  Pemain(this.nama, this.pilihan);

  // Metode untuk membuat pilihan acak
  void membuatPilihan() {
    Random random = Random();
    int nomorAcak = random.nextInt(3);
    pilihan = Pilihan.values[nomorAcak];
  }

  // Metode untuk menampilkan pilihan pemain
  void tampilkanPilihan() {
    print('Pilihan $nama: $pilihan');
  }
}

// Fungsi untuk menentukan pemenang
String tentukanPemenang(Pemain pemain1, Pemain pemain2) {
  if (pemain1.pilihan == pemain2.pilihan) {
    return 'Hasil seri!';
  } else if ((pemain1.pilihan == Pilihan.batu && pemain2.pilihan == Pilihan.gunting) ||
      (pemain1.pilihan == Pilihan.gunting && pemain2.pilihan == Pilihan.kertas) ||
      (pemain1.pilihan == Pilihan.kertas && pemain2.pilihan == Pilihan.batu)) {
    return '${pemain1.nama} menang!';
  } else {
    return '${pemain2.nama} menang!';
  }
}

void main() {
  // Membuat dua pemain
  Pemain pemain1 = Pemain('Pemain 1', Pilihan.kertas);
  Pemain pemain2 = Pemain('Pemain 2', Pilihan.batu);

  // Pemain membuat pilihan
  pemain1.membuatPilihan();
  pemain2.membuatPilihan();

  // Menampilkan pilihan pemain
  pemain1.tampilkanPilihan();
  pemain2.tampilkanPilihan();

  // Menampilkan hasil permainan
  print(tentukanPemenang(pemain1, pemain2));
}
