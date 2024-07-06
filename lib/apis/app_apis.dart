import 'dart:convert';

import 'package:chatinc_backend/apis/app_headers.dart';
import 'package:chatinc_backend/auth/signup.dart';
import 'package:chatinc_backend/auth/auth_res.dart';
import 'package:chatinc_backend/service/db_services.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class AppApis {
  final SignUp _auth = SignUp();
  Response rootHandler(Request req) {
    return Response.ok('Data');
  }

  Future<Response> signUp(Request request) async {
    return _auth.signUp(request);
  }
}
