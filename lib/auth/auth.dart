import 'dart:convert';

import 'package:chatinc_backend/auth/auth_res.dart';
import 'package:chatinc_backend/auth/interface/auth_interface.dart';
import 'package:chatinc_backend/service/db_services.dart';
import 'package:realm/realm.dart';

class Auth extends AuthResponse implements AuthInterface {
  final DatabaseService _dbService = DatabaseService();

  @override
  void connectDB() async {
    User user = await _dbService.initializeDB();
    print('Access Token: ${user.accessToken}');
  }

  @override
  void accessDB() {}

  @override
  void getLoggedInUser() {}
}
