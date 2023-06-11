import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/feature/locations/bloc/bloc.dart';
import 'package:licenta/feature/main/bloc/main_bloc.dart';
import 'package:licenta/resource/resource.dart';

class LocationInfoForm extends StatefulWidget {
  const LocationInfoForm({
    super.key,
    this.location,
  });

  final Location? location;

  @override
  State<LocationInfoForm> createState() => _LocationInfoFormState();
}

class _LocationInfoFormState extends State<LocationInfoForm> {
  final _locationNameController = TextEditingController();
  final _locationCapacityController = TextEditingController();
  final _locationAddressLine1Controller = TextEditingController();
  final _locationAddressLine2Controller = TextEditingController();
  final _priceController = TextEditingController();

  final _locationCapacityFocusNode = FocusNode();
  final _locationAddressLine1FocusNode = FocusNode();
  final _locationAddressLine2FocusNode = FocusNode();
  final _priceFocusNode = FocusNode();

  String? priceErrorMessage;

  String? capacityErrorMessage;
  List<File> _locationPhotos = [];

  @override
  void initState() {
    _locationNameController.addListener(refreshCallback);
    _locationCapacityController.addListener(refreshCallback);
    _locationAddressLine1Controller.addListener(refreshCallback);
    _locationAddressLine2Controller.addListener(refreshCallback);
    _priceController.addListener(refreshCallback);
    super.initState();
  }

  void refreshCallback() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildLocationName(),
          _buildBuildCapacityAndPrice(),
          _buildAddressFirstLine(),
          _buildAddressSecondLine(),
          if (_locationPhotos.isNotEmpty)
            _buildPhotos()
          else
            _buildAddPhotosWidget(context),
          _buildSpacer(),
          _buildSaveButton()
        ],
      ),
    );
  }

  Widget _buildLocationName() {
    return OutlinedTextField(
      label: 'Location name',
      controller: _locationNameController,
      onEditingComplete: _locationCapacityFocusNode.requestFocus,
      textInputAction: TextInputAction.next,
    );
  }

  Widget _buildBuildCapacityAndPrice() {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: OutlinedTextField(
                label: 'Capacity',
                controller: _locationCapacityController,
                focusNode: _locationCapacityFocusNode,
                textInputAction: TextInputAction.next,
                onEditingComplete: _priceFocusNode.requestFocus,
                keyboardType: TextInputType.number,
                errorMessage: capacityErrorMessage,
                suffixIcon: Asset.user.widget(),
                onChanged: (text) {
                  setState(() {
                    if (text.isNotEmpty && int.tryParse(text) == null) {
                      capacityErrorMessage = 'Enter a number';
                    } else {
                      capacityErrorMessage = null;
                    }
                  });
                },
              ),
            ),
          ),
          Expanded(
            child: OutlinedTextField(
              label: 'Price (RON)/night',
              controller: _priceController,
              focusNode: _priceFocusNode,
              textInputAction: TextInputAction.next,
              onEditingComplete: _locationAddressLine1FocusNode.requestFocus,
              errorMessage: priceErrorMessage,
              keyboardType: TextInputType.number,
              onChanged: (text) {
                setState(() {
                  if (text.isNotEmpty && int.tryParse(text) == null) {
                    priceErrorMessage = 'Enter a number';
                  } else {
                    priceErrorMessage = null;
                  }
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddressFirstLine() {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: OutlinedTextField(
        label: 'Location address line 1',
        controller: _locationAddressLine1Controller,
        focusNode: _locationAddressLine1FocusNode,
        onEditingComplete: _locationAddressLine2FocusNode.requestFocus,
        textInputAction: TextInputAction.next,
      ),
    );
  }

  Widget _buildAddressSecondLine() {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: OutlinedTextField(
        label: 'Location address line 2 (optional)',
        controller: _locationAddressLine2Controller,
        focusNode: _locationAddressLine2FocusNode,
        textInputAction: TextInputAction.done,
      ),
    );
  }

  Widget _buildPhotos() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Text(
            'Your location photos:',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: SizedBox(
            height: 100,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: _locationPhotos
                  .map(
                    (photo) => Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Image.file(
                        height: 100,
                        width: 100,
                        photo,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildAddPhotosWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () async {
                final picker = ImagePicker();
                final images = await picker.pickMultiImage(imageQuality: 100);
                if (images.isNotEmpty) {
                  setState(() {
                    _locationPhotos =
                        images.map((image) => File(image.path)).toList();
                  });
                }
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Container(
                  color: EasyBookingColors.inactiveShoutOut.value,
                  height: 100,
                  width: 100,
                  child: Center(
                    child: Text(
                      'Add photos +',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Add photos you consider relevant '
              'to present your location '
              'Make sure your photos are clear and promote your location',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSpacer() => const Spacer();

  Widget _buildSaveButton() {
    final isEnabled = _locationNameController.text.isNotEmpty &&
        _locationCapacityController.text.isNotEmpty &&
        _locationAddressLine1Controller.text.isNotEmpty &&
        _priceController.text.isNotEmpty &&
        _locationPhotos.isNotEmpty;

    return BlocBuilder<LocationsBloc, LocationsState>(
      builder: (context, state) {
        return EasyBookingButton(
          text: 'Save location & close',
          isEnabled: isEnabled,
          isLoading: state.status == LocationsStatus.loading,
          onPressed: () {
            final account = context.read<MainBloc>().state.account!;

            context.read<LocationsBloc>().add(
                  LocationsEvent.locationCreated(
                    name: _locationNameController.text,
                    price: int.parse(_priceController.text),
                    capacity: int.parse(_locationCapacityController.text),
                    addressLine1: _locationAddressLine1Controller.text,
                    addressLine2:
                        _locationAddressLine2Controller.text.isNotEmpty
                            ? _locationAddressLine2Controller.text
                            : null,
                    images: _locationPhotos,
                    owner: account,
                  ),
                );
          },
          type: ButtonType.elevated,
          buttonStyleType: ButtonStyleType.dark,
        );
      },
    );
  }
}
