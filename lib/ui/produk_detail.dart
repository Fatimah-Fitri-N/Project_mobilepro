import 'package:flutter/material.dart';

class ProdukDetail extends StatefulWidget {
  final String? IdBayi;
  final String? NamaBayi;
  final String? JenisKelamin;
  final String? Tanggal;
  final String? NamaOrtu;

  const ProdukDetail({Key? key, this.IdBayi, this.NamaBayi, this.JenisKelamin, this.Tanggal, this.NamaOrtu})
      : super(key: key);

  @override
  _ProdukDetailState createState() => _ProdukDetailState();
}

class _ProdukDetailState extends State<ProdukDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Info Bayi'),
      ),
      body: Column(
        children: [
          Text("Id Bayi : " + widget.IdBayi.toString()),
          Text("Nama Bayi : ${widget.NamaBayi}"),
          Text("Jenis Kelamin : ${widget.JenisKelamin}"),
          Text("Tanggal Lahir : ${widget.Tanggal}"),
          Text("Nama Orang Tua : ${widget.NamaOrtu}"),
        ],
      ),
    );
  }
}
