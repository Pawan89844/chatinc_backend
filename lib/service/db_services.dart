import 'package:chatinc_backend/constants/app_constants.dart';
import 'package:realm/realm.dart';

class DatabaseService {
  final AppConfiguration appConfig = AppConfiguration(AppConstant.appId);

  Future<User> initializeDB() async {
    final App app = App(appConfig);
    final User user = await app.logIn(Credentials.apiKey(AppConstant.apiKey));
    return user;
  }
}
