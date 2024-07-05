import 'package:realm/realm.dart';

abstract class AuthInterface {
  Realm connectDB();
  // void accessDB();
  // void getLoggedInUser();
}
