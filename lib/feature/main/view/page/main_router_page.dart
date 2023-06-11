import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:licenta/feature/locations/bloc/bloc.dart';
import 'package:licenta/feature/locations/repository/repository.dart';
import 'package:licenta/feature/main/main.dart';

class MainRouterPage extends StatefulWidget implements AutoRouteWrapper {
  const MainRouterPage({
    super.key,
  });

  @override
  State<MainRouterPage> createState() => _MainRouterPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MainBloc(
            context.read<MainRepository>(),
          ),
        ),
        BlocProvider<LocationsBloc>(
          create: (context) => LocationsBloc(
            context.read<LocationsRepository>(),
          ),
        ),
      ],
      child: this,
    );
  }
}

class _MainRouterPageState extends State<MainRouterPage> {
  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
