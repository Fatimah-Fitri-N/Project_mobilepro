import 'package:flutter_posyandu/helpers/user_info.dart';

class LogoutBloc {
  static Future logout() async {
    await UserInfo().logout();
  }

  then(Set<Future> Function(dynamic value) param0) {}
}
