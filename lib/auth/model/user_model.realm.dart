// // GENERATED CODE - DO NOT MODIFY BY HAND

// part of 'user_model.dart';

// // **************************************************************************
// // RealmObjectGenerator
// // **************************************************************************

// // ignore_for_file: type=lint
// class UserModel extends _UserModel
//     with RealmEntity, RealmObjectBase, RealmObject {
//   UserModel(
//     String uid,
//     String name,
//     String dob,
//     int phone,
//     String profilePic,
//   ) {
//     RealmObjectBase.set(this, 'uid', uid);
//     RealmObjectBase.set(this, 'name', name);
//     RealmObjectBase.set(this, 'dob', dob);
//     RealmObjectBase.set(this, 'phone', phone);
//     RealmObjectBase.set(this, 'profilePic', profilePic);
//   }

//   UserModel._();

//   @override
//   String get uid => RealmObjectBase.get<String>(this, 'uid') as String;
//   @override
//   set uid(String value) => RealmObjectBase.set(this, 'uid', value);

//   @override
//   String get name => RealmObjectBase.get<String>(this, 'name') as String;
//   @override
//   set name(String value) => RealmObjectBase.set(this, 'name', value);

//   @override
//   String get dob => RealmObjectBase.get<String>(this, 'dob') as String;
//   @override
//   set dob(String value) => RealmObjectBase.set(this, 'dob', value);

//   @override
//   int get phone => RealmObjectBase.get<int>(this, 'phone') as int;
//   @override
//   set phone(int value) => RealmObjectBase.set(this, 'phone', value);

//   @override
//   String get profilePic =>
//       RealmObjectBase.get<String>(this, 'profilePic') as String;
//   @override
//   set profilePic(String value) =>
//       RealmObjectBase.set(this, 'profilePic', value);

//   @override
//   Stream<RealmObjectChanges<UserModel>> get changes =>
//       RealmObjectBase.getChanges<UserModel>(this);

//   @override
//   Stream<RealmObjectChanges<UserModel>> changesFor([List<String>? keyPaths]) =>
//       RealmObjectBase.getChangesFor<UserModel>(this, keyPaths);

//   @override
//   UserModel freeze() => RealmObjectBase.freezeObject<UserModel>(this);

//   EJsonValue toEJson() {
//     return <String, dynamic>{
//       'uid': uid.toEJson(),
//       'name': name.toEJson(),
//       'dob': dob.toEJson(),
//       'phone': phone.toEJson(),
//       'profilePic': profilePic.toEJson(),
//     };
//   }

//   static EJsonValue _toEJson(UserModel value) => value.toEJson();
//   static UserModel _fromEJson(EJsonValue ejson) {
//     return switch (ejson) {
//       {
//         'uid': EJsonValue uid,
//         'name': EJsonValue name,
//         'dob': EJsonValue dob,
//         'phone': EJsonValue phone,
//         'profilePic': EJsonValue profilePic,
//       } =>
//         UserModel(
//           fromEJson(uid),
//           fromEJson(name),
//           fromEJson(dob),
//           fromEJson(phone),
//           fromEJson(profilePic),
//         ),
//       _ => raiseInvalidEJson(ejson),
//     };
//   }

//   static final schema = () {
//     RealmObjectBase.registerFactory(UserModel._);
//     register(_toEJson, _fromEJson);
//     return SchemaObject(ObjectType.realmObject, UserModel, 'UserModel', [
//       SchemaProperty('uid', RealmPropertyType.string),
//       SchemaProperty('name', RealmPropertyType.string),
//       SchemaProperty('dob', RealmPropertyType.string),
//       SchemaProperty('phone', RealmPropertyType.int),
//       SchemaProperty('profilePic', RealmPropertyType.string),
//     ]);
//   }();

//   @override
//   SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
// }
