// ignore_for_file: sdk_version_since

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:licenta/app/app.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/core/utils/utils.dart';
import 'package:licenta/feature/locations/bloc/bloc.dart';
import 'package:licenta/feature/locations/locations.dart';
import 'package:licenta/feature/main/bloc/bloc.dart';
import 'package:licenta/resource/resource.dart';

class LocationDetailsPage extends StatelessWidget {
  const LocationDetailsPage({
    super.key,
    required this.location,
  });

  final Location location;

  @override
  Widget build(BuildContext context) {
    return LargeTitlePage(
      title: location.name,
      showDefaultLeading: true,
      hasScrollBody: true,
      trailing: context.read<MainBloc>().state.account?.accountType ==
              AccountType.owner
          ? GestureDetector(
              onTap: () {
                showCommonBottomSheet(
                  context,
                  DeleteLocationSheet(locationId: location.id ?? ''),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Asset.bin.widget(),
              ),
            )
          : null,
      body: SafeArea(
        minimum: const EdgeInsets.only(bottom: 16),
        top: false,
        child: _LocationDetailsBody(location: location),
      ),
    );
  }
}

class _LocationDetailsBody extends StatefulWidget {
  const _LocationDetailsBody({
    required this.location,
  });

  final Location location;

  @override
  State<_LocationDetailsBody> createState() => _LocationDetailsBodyState();
}

class _LocationDetailsBodyState extends State<_LocationDetailsBody> {
  late String selectedImageUrl;

  @override
  void initState() {
    super.initState();
    context.read<LocationsBloc>().add(
          LocationsEvent.locationFetched(
            locationId: widget.location.id ?? '',
          ),
        );
    selectedImageUrl = widget.location.images?.firstOrNull ?? '';
  }

  @override
  Widget build(BuildContext context) {
    final account = context.read<MainBloc>().state.account;
    return BlocConsumer<LocationsBloc, LocationsState>(
      listener: (context, state) {
        if (state.status == LocationsStatus.imageDeleted) {
          setState(() {
            selectedImageUrl = state.location?.images?.firstOrNull ?? '';
          });
          _fetchLocation();
        }
        if (state.status == LocationsStatus.locationUpdated) {
          _fetchLocation();
          context.router.pop();
        }
        if (state.status == LocationsStatus.bookDatesSaved) {
          context.router.push(const PaymentRoute());
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 8, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: LoadableWidget(
                  isLoading: state.status == LocationsStatus.loading ||
                      state.location == null,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildSubtitle(context, account!.accountType),
                        _buildImagesTitle(context),
                        _buildLocationImages(state),
                        _buildLocationInfo(),
                      ],
                    ),
                  ),
                ),
              ),
              if (account.accountType == AccountType.owner)
                _buildEditButton()
              else
                _buildBookButton(),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSubtitle(
    BuildContext context,
    AccountType accountType,
  ) {
    final subtitleText = accountType == AccountType.owner
        ? 'Here are the details of your location. '
            'You can edit them or delete the location.'
        : 'Here are the details of the location. Choose the period '
            'you want this location to be yours';

    return Text(
      subtitleText,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }

  Widget _buildImagesTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Text(
        'Location images:',
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }

  Widget _buildLocationImages(LocationsState state) {
    final location = state.location;

    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: LocationImagesWidget(
        selectedImage: selectedImageUrl,
        images: location?.images ?? [],
        onImageTap: (image) {
          setState(() {
            selectedImageUrl = image;
          });
        },
        onSelectedImageDeleted: () {
          context.read<LocationsBloc>().add(
                LocationsEvent.imageDeleted(
                  locationId: location?.id ?? '',
                  imageUrl: selectedImageUrl,
                ),
              );
        },
      ),
    );
  }

  Widget _buildLocationInfo() {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildLocationInfoTitle(),
          _buildCapacity(),
          _buildPrice(),
          _buildAddress(),
          if (widget.location.description != null) _buildDescriptionItem(),
        ],
      ),
    );
  }

  Widget _buildLocationInfoTitle() {
    return Text(
      'Location info:',
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.w500,
          ),
    );
  }

  Widget _buildCapacity() {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Text(
        'Capacity: ${widget.location.capacity} people',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }

  Widget _buildPrice() {
    return Padding(
      padding: const EdgeInsets.only(top: 2),
      child: Text(
        'Price: ${widget.location.price} RON / night',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }

  Widget _buildAddress() {
    return Padding(
      padding: const EdgeInsets.only(top: 2),
      child: Text(
        'Address: ${widget.location.addressLine1} '
        '${widget.location.addressLine2 ?? ''}',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }

  Widget _buildDescriptionItem() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            'Description: ',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Text(
            '${widget.location.description}',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }

  Widget _buildEditButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: EasyBookingButton(
        text: 'Edit info',
        onPressed: () {
          context.router.push(AddLocationRoute(location: widget.location));
        },
        type: ButtonType.elevated,
        buttonStyleType: ButtonStyleType.dark,
      ),
    );
  }

  Widget _buildBookButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: EasyBookingButton(
        text: 'Book location',
        onPressed: () {
          showCommonBottomSheet(
            context,
            BookLocationSheet(location: widget.location),
          );
        },
        type: ButtonType.elevated,
        buttonStyleType: ButtonStyleType.dark,
      ),
    );
  }

  void _fetchLocation() {
    context.read<LocationsBloc>().add(
          LocationsEvent.locationFetched(
            locationId: widget.location.id ?? '',
          ),
        );
  }
}
