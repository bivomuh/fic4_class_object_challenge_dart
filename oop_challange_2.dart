import 'dart:convert';

class Mahasiswa {
  String? nama;
  String? jurusan;
  int? angkatan;

  Mahasiswa() {
    print("this is default constructor");
  }
  Mahasiswa.parameterizedCons(this.nama, this.jurusan, this.angkatan) {
    print("this is parameterized constructor");
  }

  Mahasiswa.fromJson(String jsonString) {
    Map<String, dynamic> json = jsonDecode(jsonString);
    nama = json['nama'];
    jurusan = json['jurusan'];
    angkatan = json['angkatan'];
  }
}

void main() {
  Mahasiswa mahasiswa0 = Mahasiswa();
  print(mahasiswa0);

  Mahasiswa mahasiswa1 = Mahasiswa.parameterizedCons("muh", "kedokteran", 2017);
  print(mahasiswa1);

  String jsonString1 =
      '{"nama" : "bivo", "jurusan" : "teknik elektro", "angkatan" : 2017}';
  Mahasiswa mahasiswa = Mahasiswa.fromJson(jsonString1);
  print(mahasiswa.nama);
  print(mahasiswa.jurusan);
  print(mahasiswa.angkatan);
}
