import 'package:flutter/material.dart';
import 'package:flutter_posyandu/ui/produk_form.dart';
import 'package:flutter_posyandu/ui/produk_detail.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({Key? key}) : super(key: key);

  @override
  _ProdukPageState createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Bayi'),
        actions: [
          GestureDetector(
              // menampilkan icon +
            child: const Icon(Icons.add),
            onTap: () async {
              // berpindah ke halaman ProdukForm
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProdukForm()));
              })
        ],
      ),
      body: ListView(
        children: const [
        // List 1
        ItemProduk(
            IdBayi: "B001",
            NamaBayi: "Afnan Rizky",
            JenisKelamin: "Laki-Laki",
            
          ),
       // List 2
       ItemProduk(
            IdBayi: "B002",
            NamaBayi: "Sinta Purwantini",
            JenisKelamin: "Perempuan",
            
          ),
      // List 3
      ItemProduk(
            IdBayi: "B003",
            NamaBayi: "Nopal Ramdan",
            JenisKelamin: "Laki-Laki",
            
          ),
     ],
    ),
   );
  }
}
class ItemProduk extends StatelessWidget { 
  final String? IdBayi;
  final String? NamaBayi;
  final String? JenisKelamin;
  
 
  const ItemProduk({Key? key, this.IdBayi, this.NamaBayi, this.JenisKelamin}) 
      : super(key: key);
 
  @override 
  Widget build(BuildContext context) { 
    return GestureDetector(
      child: Card( 
            child: ListTile( 
              title: Text(NamaBayi.toString()), 
              subtitle: Text(JenisKelamin.toString()), 
            ),
        ), 
        onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProdukDetail(
                      IdBayi: IdBayi,
                      NamaBayi: NamaBayi,
                      JenisKelamin: JenisKelamin,
                      
                    )));
        },
    ); 
  } 
} 
