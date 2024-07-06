import 'dart:convert';

import 'package:chatinc_backend/apis/app_headers.dart';
import 'package:chatinc_backend/auth/auth_res.dart';
import 'package:chatinc_backend/auth/interface/auth_interface.dart';
import 'package:chatinc_backend/auth/model/user_model.dart';
import 'package:chatinc_backend/constants/app_constants.dart';
import 'package:chatinc_backend/service/db_services.dart';
import 'package:mongo_dart/mongo_dart.dart';
// import 'package:realm/realm.dart';
import 'package:shelf/shelf.dart';

class SignUp extends AuthResponse implements AuthInterface {
  final DatabaseService _dbService = DatabaseService();

  /// 2. On Success POST Request, This method calls [_storeInDB] function.
  ///    Which stores user provided data.
  ///    On Successful storing operation The API sends a response with user data through message.
  Future<Response> _onSuccess(Request request) async {
    var user = await _storeInDB(request);
    return Response.ok(super.message(user), headers: AppHeader.app);
  }

  Response _onFailure(Request request) {
    return Response.notFound(super.message('Failed'), headers: AppHeader.app);
  }

  Future<Map<String, dynamic>?> _getUser(Map<String, dynamic> userInput) async {
    DbCollection collection = _fetchCollection();
    Map<String, dynamic>? user = await collection.findOne(userInput);
    return user;
  }

  DbCollection _fetchCollection() {
    return _dbService.db.collection(AppConstant.dbUsersCollection);
  }

  /// 1. This function checks whether user is making a Get request or post.
  /// IF REQUEST == GET -> Throws error message.
  /// IF REQUEST == POST -> Goes to Success ([_onSuccess]) Method.
  Future<Response> _validateMethod(Request request) async {
    if (request.method == 'GET') {
      return _onFailure(request);
    } else {
      return await _onSuccess(request);
    }
  }

  Future<Map<String, dynamic>?> isDbConnected(
      Map<String, dynamic> document) async {
    if (_dbService.db.isConnected) {
      return await _insertDocument(document);
    }
    return null;
  }

  Future<Map<String, dynamic>?> _openDB(
      Request request, Map<String, dynamic> document) async {
    await _dbService.initializeDB();
    return await _insertDocument(document);
  }

  Future<Map<String, dynamic>> _userInput(Request request) async {
    String jsonString = await request.readAsString();
    Map<String, dynamic> jsonData = jsonDecode(jsonString);
    return jsonData;
  }

  Future<Map<String, dynamic>> _insertDocument(
      Map<String, dynamic> document) async {
    DbCollection collection = _fetchCollection();
    return await collection.insert(document);
  }

  /// 3.
  Future<Map<String, dynamic>?> _storeInDB(Request request) async {
    Map<String, dynamic> jsonData = await _userInput(request);
    await _openDB(request, jsonData);
    return _getUser(jsonData);
  }

  /// Signup is the top level function which takes user input and stores data in mongodb.
  @override
  Future<Response> signUp(Request request) async {
    return await _validateMethod(request);
  }
}

// Flow:
// signup -> _validateMethod -> _userInput -> _openDB -> _insertDocument -> _storeInDB -> _onSuccess
