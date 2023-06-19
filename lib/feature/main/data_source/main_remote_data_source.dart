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

  Future<void> withdrawMoney({
    required String iban,
    required String email,
  }) async {
    if (iban.isNotEmpty) {
      final userRef = _database.ref().child('users');

      final snapshot = await userRef.once().then((event) => event.snapshot);
      final users = snapshot.value as Map<dynamic, dynamic>?;

      if (users != null) {
        for (final userKey in users.keys) {
          final user = users[userKey];
          if (user['email'] == email) {
            const finalAmount = 0;
            final userToUpdateRef = userRef.child(userKey as String);
            await userToUpdateRef.update({'amount': finalAmount});
            break;
          }
        }
      }
    } else {
      throw Exception('Iban is empty');
    }
  }
}
