class Produk {
  int? id;
  String? IdBayi;
  String? Namabayi;
  String? JenisKelamin;
  String? Tanggal;
  String? NamaOrtu;

  Produk({this.id, this.IdBayi, this.Namabayi, this.JenisKelamin, this.Tanggal, this.NamaOrtu});

  factory Produk.fromJson(Map<String, dynamic> obj) {
    return Produk(
      id: obj['id'],
      IdBayi: obj['Id_Bayi'],
      Namabayi: obj['Nama_Bayi'],
      JenisKelamin: obj['Jenis_Kelamin'],
      Tanggal: obj['Tanggal'],
      NamaOrtu: obj['Nama_Orangtua']
    );
  }
}
