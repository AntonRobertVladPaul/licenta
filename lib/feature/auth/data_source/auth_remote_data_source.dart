// ignore_for_file: avoid_dynamic_calls

import 'package:firebase_database/firebase_database.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/feature/auth/auth.dart';

class AuthRemoteDataSource {
  AuthRemoteDataSource(FirebaseDatabase database) : _database = database;

  final FirebaseDatabase _database;

  Future<bool> checkUserExists(String email) async {
    final databaseReference = _database.ref().child('users');

    final snapshot = await databaseReference.once().then(
          (event) => event.snapshot,
        );

    final users = snapshot.value as Map<dynamic, dynamic>?;

    if (users != null) {
      for (final userKey in users.keys) {
        final user = users[userKey];
        if (user['email'] == email) {
          return true;
        }
      }
    }

    return false;
  }

  Future<void> signUp(Account account) async {
    final databaseReference = _database.ref();
    final usersRef = databaseReference.child('users');
    await usersRef.push().set(account.toJson());
  }

  Future<bool> login(LoginParams params) async {
    final databaseReference = _database.ref().child('users');

    final snapshot = await databaseReference.once().then(
          (event) => event.snapshot,
        );

    final users = snapshot.value as Map<dynamic, dynamic>?;

    if (users != null) {
      for (final userKey in users.keys) {
        final user = users[userKey];
        if (user['email'] == params.email &&
            user['password'] == params.password) {
          return true;
        }
      }
    }

    return false;
  }
}
