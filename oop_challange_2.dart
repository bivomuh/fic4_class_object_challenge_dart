import 'dart:convert';

class Mahasiswa {
  String? nama;
  String? jurusan;
  int? angkatan;

  Mahasiswa(this.nama, this.jurusan, this.angkatan);
  Mahasiswa.fromJson(String jsonString) {
    Map<String, dynamic> json = jsonDecode(jsonString);
    nama = json['nama'];
    jurusan = json['jurusan'];
    angkatan = json['angkatan'];
  }
}

void main() {
  String jsonString1 =
      '{"nama" : "bivo", "jurusan" : "teknik elektro", "angkatan" : 2017}';
  Mahasiswa mahasiswa = Mahasiswa.fromJson(jsonString1);
  print(mahasiswa.nama);
  print(mahasiswa.jurusan);
  print(mahasiswa.angkatan);
}
