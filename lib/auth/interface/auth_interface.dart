// import 'package:realm/realm.dart';

import 'package:shelf/shelf.dart';

abstract class AuthInterface {
  Future<Response> signUp(Request request);
  // void accessDB();
  // void getLoggedInUser();
}
