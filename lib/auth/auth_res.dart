import 'dart:convert';

class AuthResponse {
  String success(dynamic message) {
    return JsonEncoder.withIndent('  ')
        .convert({'status': true, 'message': message});
  }
}
