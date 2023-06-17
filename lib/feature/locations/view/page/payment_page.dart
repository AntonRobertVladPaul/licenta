import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/feature/locations/bloc/bloc.dart';
import 'package:licenta/feature/main/bloc/bloc.dart';
import 'package:licenta/resource/resource.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LargeTitlePage(
      title: 'Payment',
      hasScrollBody: true,
      leading: GestureDetector(
        onTap: () {
          context.popRoute();
        },
        child: Asset.closeButton.widget(),
      ),
      body: const SafeArea(
        top: false,
        minimum: EdgeInsets.only(bottom: 16),
        child: _PaymentBody(),
      ),
    );
  }
}

class _PaymentBody extends StatefulWidget {
  const _PaymentBody();

  @override
  State<_PaymentBody> createState() => _PaymentBodyState();
}

class _PaymentBodyState extends State<_PaymentBody> {
  final cardNumberController = TextEditingController();
  final expirationDateController = TextEditingController();
  final cvvController = TextEditingController();

  @override
  void initState() {
    super.initState();
    cardNumberController.addListener(_refreshCallback);
    expirationDateController.addListener(_refreshCallback);
    cvvController.addListener(_refreshCallback);
  }

  @override
  void dispose() {
    cardNumberController.dispose();
    expirationDateController.dispose();
    cvvController.dispose();
    super.dispose();
  }

  void _refreshCallback() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSubtitle(),
          _buildPaymentDetails(),
        ],
      ),
    );
  }

  Widget _buildSubtitle() {
    return Text(
      'Add your payment details to be able to book the location',
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: EasyBookingColors.secondaryText.value,
          ),
    );
  }

  Widget _buildPaymentDetails() {
    return Expanded(
      child: ExpandableDottedScroll(
        child: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildCardNumberField(),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Row(
                  children: [
                    _buildExpirationDateField(),
                    _buildCvvField(),
                  ],
                ),
              ),
              _buildLogo(),
              const Spacer(),
              _buildPayButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCardNumberField() {
    return OutlinedTextField(
      label: 'Card number',
      hint: '1234 5678 9012 3456',
      inputFormat: '#### #### #### ####',
      controller: cardNumberController,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.next,
    );
  }

  Widget _buildExpirationDateField() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: OutlinedTextField(
          label: 'Exp date',
          hint: 'MM/YY',
          controller: expirationDateController,
          inputFormat: '##/##',
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
        ),
      ),
    );
  }

  Widget _buildCvvField() {
    return Expanded(
      child: OutlinedTextField(
        label: 'CVV',
        hint: '123',
        inputFormat: '###',
        controller: cvvController,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.done,
      ),
    );
  }

  Widget _buildLogo() {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Center(
        child: Asset.easyBookingBig.sizedWidget(
          size: Size(
            MediaQuery.of(context).size.width * 0.4,
            MediaQuery.of(context).size.height * 0.25,
          ),
        ),
      ),
    );
  }

  Widget _buildPayButton() {
    return BlocBuilder<LocationsBloc, LocationsState>(
      builder: (context, state) {
        final price =
            (state.location?.price ?? 1) * (state.bookedDates.length - 1);

        final ownerAmount = context.read<MainBloc>().state.account?.amount ?? 0;
        final newAmount = ownerAmount + price;
        return EasyBookingButton(
          text: 'Pay $price RON',
          isLoading: state.status == LocationsStatus.loading,
          onPressed: () {
            context.read<LocationsBloc>().add(
                  LocationsEvent.locationBooked(
                    amount: newAmount,
                    cardNumber: cardNumberController.text,
                    cvv: cvvController.text,
                    expiryDate: expirationDateController.text,
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
