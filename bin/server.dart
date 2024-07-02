import 'dart:io';

import 'package:chatinc_backend/routes/app_router.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';

// Configure routes.
// final _router = Router()
//   ..get('/', _rootHandler)
//   ..get('/echo/<message>', _echoHandler);

void main(List<String> args) async {
  // Use any available host or container IP (usually `0.0.0.0`).
  final ip = InternetAddress.anyIPv4;
  final AppRouter rout = AppRouter();
  // Configure a pipeline that logs requests.
  final handler =
      Pipeline().addMiddleware(logRequests()).addHandler(rout.router.call);

  // For running in containers, we respect the PORT environment variable.
  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  final server = await serve(handler, ip, port);
  print('Server listening on port ${server.port}');
}
