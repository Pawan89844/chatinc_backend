import 'package:realm/realm.dart';

abstract class AuthInterface {
  Future<Realm> connectDB();
  // void accessDB();
  // void getLoggedInUser();
}
