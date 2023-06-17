import 'package:auto_route/auto_route.dart';
import 'package:licenta/app/app.dart';
import 'package:licenta/feature/locations/locations.dart';

const locationFirstLevelRoute = AutoRoute<void>(page: LocationsPage);
const locationsRoutes = [
  CustomRoute<void>(
    customRouteBuilder: cupertinoModalBuilder,
    page: AddLocationPage,
  ),
  AutoRoute<void>(page: LocationDetailsPage),
  CustomRoute<void>(
    customRouteBuilder: cupertinoModalBuilder,
    page: PaymentPage,
  ),
];
