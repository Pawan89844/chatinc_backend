import 'dart:convert';

import 'package:chatinc_backend/apis/app_headers.dart';
import 'package:chatinc_backend/auth/auth_res.dart';
import 'package:chatinc_backend/auth/interface/auth_interface.dart';
import 'package:chatinc_backend/auth/model/user_model.dart';
import 'package:chatinc_backend/service/db_services.dart';
// import 'package:realm/realm.dart';
import 'package:shelf/shelf.dart';

class Auth extends AuthResponse implements AuthInterface {
  final DatabaseService _dbService = DatabaseService();

  @override
  void connectDB() {
    _dbService.initializeDB();
    // return _dbService.initializeCompass(UserModel.schema);
  }

  Response _onSuccess(Request request) {
    return Response.ok(super.message('Success'), headers: AppHeader.app);
  }

  Response _onFailure(Request request) {
    return Response.notFound(super.message('Failed'), headers: AppHeader.app);
  }

  Response validateMethod(Request request) {
    if (request.method == 'GET') {
      return _onFailure(request);
    } else {
      return _onSuccess(request);
    }
  }

  Future<Response> logic(Request request) async {
    String jsonString = await request.readAsString();
    Map<String, dynamic> jsonData = jsonDecode(jsonString);
    connectDB();
    // Realm realm = connectDB();
    // print('Path: ${realm.find(primaryKey)}');
    return validateMethod(request);
  }
}
