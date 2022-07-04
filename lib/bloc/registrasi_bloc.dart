import 'dart:convert';

import 'package:flutter_posyandu/helpers/api.dart';
import 'package:flutter_posyandu/helpers/api_url.dart';
import 'package:flutter_posyandu/model/registrasi.dart';

class RegistrasiBloc {
  static Future<Registrasi> registrasi(
      {String? nama, String? email, String? password}) async {
    String apiUrl = ApiUrl.registrasi;

    var body = {"nama": nama, "email": email, "password": password};

    var response = await Api().post(apiUrl, body);
    var jsonObj = json.decode(response.body);
    return Registrasi.formJson(jsonObj);
  }
}
