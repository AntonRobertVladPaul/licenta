import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:licenta/app/app.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/feature/locations/bloc/bloc.dart';
import 'package:licenta/feature/locations/locations.dart';
import 'package:licenta/feature/main/bloc/bloc.dart';
import 'package:licenta/resource/resource.dart';

class LocationsPage extends StatelessWidget {
  const LocationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(bottom: 16),
        child: _LocationsBody(),
      ),
    );
  }
}

class _LocationsBody extends StatefulWidget {
  const _LocationsBody();

  @override
  State<_LocationsBody> createState() => _LocationsBodyState();
}

class _LocationsBodyState extends State<_LocationsBody> {
  @override
  void initState() {
    super.initState();
    final account = context.read<MainBloc>().state.account;
    if (account != null) {
      context.read<LocationsBloc>().add(
            LocationsEvent.locationsFetched(
              email: account.accountType == AccountType.owner
                  ? account.email
                  : null,
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        final account = state.account;
        return BlocConsumer<LocationsBloc, LocationsState>(
          listener: (context, locationsState) {
            if (locationsState.status == LocationsStatus.locationCreated) {
              context.popRoute().whenComplete(
                    () => context.read<LocationsBloc>().add(
                          LocationsEvent.locationsFetched(
                            email: account?.accountType == AccountType.owner
                                ? account?.email
                                : null,
                          ),
                        ),
                  );
            }
          },
          builder: (context, locationsState) {
            return Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildLogo(),
                    _buildTitle(state.account!.accountType, context),
                    _buildBody(
                      state.account!.accountType,
                      context,
                      locationsState,
                    ),
                  ],
                ),
              ],
            );
          },
        );
      },
    );
  }

  Widget _buildTitle(AccountType accountType, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 8),
      child: Text(
        accountType == AccountType.client
            ? 'Available locations'
            : 'My locations',
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }

  Widget _buildLogo() {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Asset.easyBookingBig.sizedWidget(
        size: const Size(50, 80),
      ),
    );
  }

  Widget _buildBody(
    AccountType accountType,
    BuildContext context,
    LocationsState state,
  ) {
    return Expanded(
      child: LoadableWidget(
        isLoading: state.status == LocationsStatus.loading,
        child: ExpandableDottedScroll(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildLocationsGridWidget(accountType, state),
              _buildSpacer(),
              if (state.locations.isEmpty && accountType == AccountType.owner)
                _buildAddLocationButton(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSpacer() => const Spacer();

  Widget _buildLocationsGridWidget(
    AccountType accountType,
    LocationsState state,
  ) {
    return LocationsGridWidget(
      accountType: accountType,
      locations: state.locations,
    );
  }

  Widget _buildAddLocationButton(BuildContext context) {
    return EasyBookingButton(
      text: 'Add a location',
      onPressed: () {
        context.pushRoute(const AddLocationRoute());
      },
      type: ButtonType.outlined,
    );
  }
}
