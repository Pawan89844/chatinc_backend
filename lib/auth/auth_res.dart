import 'dart:convert';

class AuthResponse {
  String message(dynamic message) {
    return JsonEncoder.withIndent('  ')
        .convert({'status': true, 'message': message});
  }
}
