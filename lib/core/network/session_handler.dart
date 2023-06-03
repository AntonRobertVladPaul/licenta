import 'dart:async';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:licenta/resource/constants/constants.dart';

class SessionHandler {
  SessionHandler();

  final controller = StreamController<TokenExpiredEvent>.broadcast();

  Future<bool> get isAuthenticated async {
    const storage = FlutterSecureStorage();

    final token = await storage.read(key: StorageConstants.authKey);
    return token != null;
  }
}

class TokenExpiredEvent {
  const TokenExpiredEvent();
}
