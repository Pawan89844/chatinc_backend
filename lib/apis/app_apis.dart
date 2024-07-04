import 'dart:convert';

import 'package:chatinc_backend/apis/app_headers.dart';
import 'package:chatinc_backend/auth/auth.dart';
import 'package:chatinc_backend/auth/auth_res.dart';
import 'package:chatinc_backend/service/db_services.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class AppApis {
  final Auth _auth = Auth();
  Response rootHandler(Request req) {
    // _auth.connectDB();
    return Response.ok('Data');
  }

  Future<Response> signUp(Request request) async {
    return Response.ok(_auth.success('connected'), headers: AppHeader.app);
  }
}
