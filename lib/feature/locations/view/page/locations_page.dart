import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/core/utils/bottom_sheet_utils.dart';
import 'package:licenta/core/widget/refreshable_widget.dart';
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
  late ScrollController _scrollController;

  bool isButtonExtended = true;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onListScrolled);
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

  void _onListScrolled() {
    if (_scrollController.offset > 50) {
      setState(() {
        isButtonExtended = false;
      });
    } else {
      setState(() {
        isButtonExtended = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        final account = state.account;
        return BlocConsumer<LocationsBloc, LocationsState>(
          listener: (context, locationsState) {
            if (locationsState.status == LocationsStatus.locationCreated ||
                locationsState.status == LocationsStatus.locationDeleted) {
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
            if (locationsState.status == LocationsStatus.locationBooked) {
              showCommonBottomSheet(context, const LocationBookedSheet());
            }
          },
          builder: (context, locationsState) {
            return Stack(
              children: [
                Positioned.fill(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildLogo(),
                      _buildTitle(state.account!.accountType, context),
                      _buildLocationsGridWidget(state.account!.accountType),
                    ],
                  ),
                ),
                if (state.account!.accountType == AccountType.owner)
                  _buildAddLocationExtendableButton(),
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

  Widget _buildLocationsGridWidget(
    AccountType accountType,
  ) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: RefreshableWidget(
          onRefresh: () async {
            context.read<LocationsBloc>().add(
                  LocationsEvent.locationsFetched(
                    email: accountType == AccountType.owner
                        ? context.read<MainBloc>().state.account!.email
                        : null,
                  ),
                );
          },
          child: LocationsGridWidget(
            controller: _scrollController,
            accountType: accountType,
          ),
        ),
      ),
    );
  }

  Widget _buildAddLocationExtendableButton() => AddLocationButton(
        isExtended: isButtonExtended,
      );
}
