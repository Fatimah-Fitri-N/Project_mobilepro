class Login {
  int? code;
  bool? status;
  String? token;
  int? userId;
  String? userEmail;

  Login({this.code, this.status, this.token, this.userId, this.userEmail});

  factory Login.fromJson(Map<String, dynamic> obj) {
    return Login(
      code: obj['code'],
      status: obj['status'],
      token: obj['data']['token'],
      userId: int.tryParse(obj['data']['user']['id']),
      userEmail: obj['data']['user']['email']
    );
  }
}
