// ignore_for_file: avoid_dynamic_calls

import 'package:firebase_database/firebase_database.dart';
import 'package:licenta/core/core.dart';

class MainRemoteDataSource {
  MainRemoteDataSource(FirebaseDatabase database) : _database = database;

  final FirebaseDatabase _database;

  Future<Account?> getAccount(String email) async {
    final databaseEvent = await _database
        .ref()
        .child('users')
        .orderByChild('email')
        .equalTo(email)
        .once();

    final dataSnapshot = databaseEvent.snapshot;

    if (dataSnapshot.value != null) {
      final userData = dataSnapshot.value! as Map<dynamic, dynamic>;

      final userDataFirst = userData.values.first as Map<dynamic, dynamic>;

      return Account.fromJson(userDataFirst.cast<String, dynamic>());
    } else {
      return null;
    }
  }
}
