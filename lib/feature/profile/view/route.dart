import 'package:auto_route/auto_route.dart';
import 'package:licenta/feature/profile/profile.dart';

const profileFirstLevelRoute = AutoRoute<void>(page: ProfilePage);
const profileRoutes = [
  AutoRoute<void>(page: BookedLocationsPage),
  AutoRoute<void>(page: WalletPage),
];
