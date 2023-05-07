class Nasabah {
  String? nama;
  String? alamat;
  int saldo;

  Nasabah({this.nama, this.alamat, this.saldo = 0});

  void simpan(int jumlah) {
    this.saldo += jumlah;
    print("Saldo setelah ditambah adalah $saldo");
  }

  void ambil(int jumlah) {
    // int sum = saldo - jumlah;
    this.saldo -= jumlah;
    print("Saldo setelah diambil adalah $saldo");
  }
}

void main() {
  Nasabah nasabah1 = Nasabah(nama: "bivo", alamat: "jakarta", saldo: 1000);
  Nasabah nasabah2 = Nasabah(nama: "muh", alamat: "yogya", saldo: 900);

  nasabah1.simpan(200);
  nasabah1.ambil(2);
  print("Saldo akhir Nasabah 1 = ${nasabah1.saldo}");

  print("------------------------- ");

  nasabah2.simpan(500);
  nasabah2.ambil(7);
  print("Saldo akhir Nasabah 2 = ${nasabah2.saldo}");
}
