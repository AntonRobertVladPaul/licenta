import 'package:licenta/bootstrap.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/firebase_options_dev.dart';

Future<void> main() async {
  final defaultOptions = DefaultFirebaseOptions.currentPlatform;
  await bootstrap(
    networkConstants: DevConstants(),
  );
}
