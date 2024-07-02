import 'package:chatinc_backend/apis/app_apis.dart';
import 'package:chatinc_backend/routes/app_routes.dart';
import 'package:shelf_router/shelf_router.dart';

class AppRouter {
  final Router _router = Router();
  final AppApis _api = AppApis();

  Router get router => _apis();

  Router _apis() {
    return _router
      ..get(AppRoute.home, _api.rootHandler)
      ..get(AppRoute.signUp, _api.signUp);
  }
}
