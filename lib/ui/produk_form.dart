import 'package:flutter/material.dart';
import 'package:flutter_posyandu/ui/produk_detail.dart';

class ProdukForm extends StatefulWidget {
  const ProdukForm({Key? key}) : super(key: key);

  @override
  _ProdukFormState createState() => _ProdukFormState();
  }
  class _ProdukFormState extends State<ProdukForm> {
    final _IdBayiTextboxController = TextEditingController();
    final _NamaBayiTextboxController = TextEditingController();
    final _JenisKelaminTextboxController = TextEditingController();
    final _TanggalTextboxController = TextEditingController();
    final _NamaOrtuTextboxController = TextEditingController();

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Tambah Data Bayi'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _textboxIdBayi(),
              _textboxNamaBayi(),
              _textboxJenisKelamin(),
              _textboxTanggal(),
              _textboxNamaOrtu(),
              _tombolSimpan()
            ],
          ),
        ),
     );
  }

  _textboxIdBayi() {
    return TextField(
          decoration: const InputDecoration(labelText: "Id Bayi"),
          controller: _IdBayiTextboxController);
  }

  _textboxNamaBayi() {
    return TextField(
         decoration: const InputDecoration(labelText: "Nama Bayi"),
         controller: _NamaBayiTextboxController);
  }

  _textboxJenisKelamin() {
    return TextField(
         decoration: const InputDecoration(labelText: "Jenis Kelamin"),
         controller: _JenisKelaminTextboxController,);
  }
  _textboxTanggal() {
      return TextField(
          decoration: const InputDecoration(labelText: "Tanggal Lahir"),
          controller: _TanggalTextboxController,);
    }
    _textboxNamaOrtu() {
      return TextField(
          decoration: const InputDecoration(labelText: "Nama Orang Tua"),
          controller: _NamaOrtuTextboxController,);
    }
  _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        String IdBayi = _IdBayiTextboxController.text;
        String NamaBayi = _NamaBayiTextboxController.text;
        String JenisKelamin = _JenisKelaminTextboxController.text;
        String Tanggal = _TanggalTextboxController.text;
        String NamaOrtu = _NamaOrtuTextboxController.text;
        
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ProdukDetail(
            IdBayi: IdBayi,
            NamaBayi: NamaBayi,
            JenisKelamin: JenisKelamin,
            Tanggal: Tanggal,
            NamaOrtu:NamaOrtu
          )));
      }, child: const Text('Simpan'));
  }
}