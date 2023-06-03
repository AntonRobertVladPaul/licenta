import 'package:licenta/bootstrap.dart';
import 'package:licenta/core/core.dart';

Future<void> main() async {
  await bootstrap(
    networkConstants: DevConstants(),
  );
}
