import 'package:shelf/shelf.dart';

class AppApis {
  Response rootHandler(Request req) {
    return Response.ok('Hello, World!\n');
  }

  Response signUp(Request request) {
    return Response.ok('Success');
  }
}
