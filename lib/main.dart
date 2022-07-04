import 'package:flutter/material.dart';
import 'package:flutter_posyandu/ui/produk_detail.dart';
import 'package:flutter_posyandu/ui/produk_form.dart';
import 'package:flutter_posyandu/ui/produk_page.dart';
import 'package:flutter_posyandu/ui/login_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Posyandu Data Bayi",
      home: LoginPage(),
    );
  }
}
