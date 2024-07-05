import 'package:chatinc_backend/constants/app_constants.dart';
import 'package:mongo_dart/mongo_dart.dart';
// import 'package:realm/realm.dart';

class DatabaseService {
  static final DatabaseService _instance = DatabaseService._internal();

  DatabaseService._internal();

  factory DatabaseService() => _instance;
  final Db _db = Db(AppConstant.dbURL);
  // final AppConfiguration appConfig = AppConfiguration(AppConstant.appId);

  /// This function is used for connecting mongo db atlas cloud version.
  // Future<User> initializeDB() async {
  //   final App app = App(appConfig);
  //   final User user = await app.logIn(Credentials.apiKey(AppConstant.apiKey));
  //   return user;
  // }

  /// This function will be used for initializing mongodb compass locally.
  // Realm initializeCompass(SchemaObject schema) {
  //   Configuration config = Configuration.local([schema]);
  //   Realm app = Realm(config);
  //   return app;
  // }

  void initializeDB() async {
    final _db = await Db.create(AppConstant.dbURL);
    await _db.open();
    print('Value: ${_db.databaseName}');
  }
}
