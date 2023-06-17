import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/feature/locations/bloc/bloc.dart';
import 'package:licenta/resource/resource.dart';

class BookLocationSheet extends StatefulWidget {
  const BookLocationSheet({
    super.key,
    required this.location,
  });

  final Location location;

  @override
  State<BookLocationSheet> createState() => _BookLocationSheetState();
}

class _BookLocationSheetState extends State<BookLocationSheet> {
  List<DateTime> bookedDates = [];

  @override
  Widget build(BuildContext context) {
    return CommonBottomSheet(
      image: Asset.info.widget(),
      title: 'Book Location',
      bodyWidget: _buildBody(),
      mainButtonText: 'Pay and book',
      onMainButtonPressed: () {
        context.read<LocationsBloc>().add(
              LocationsEvent.bookDatesSaved(
                bookedDates: bookedDates,
              ),
            );
      },
      secondaryButtonText: 'Cancel',
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        _buildSubtitle(),
        _buildDateField(context),
        _buildDateField(context, isStartDate: false),
      ],
    );
  }

  Widget _buildSubtitle() {
    return Text(
      'Select the dates you want to book this '
      'location for and create the book.',
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: EasyBookingColors.secondaryText.value,
          ),
    );
  }

  Widget _buildDateField(BuildContext context, {bool isStartDate = true}) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: OutlinedTextField(
        focusNode: FocusNode().alwaysDisabledFocusNode,
        onTap: () async {
          final prefilledValues = bookedDates;

          final dates = await showCalendarDatePicker2Dialog(
            context: context,
            value: prefilledValues,
            config: CalendarDatePicker2WithActionButtonsConfig(
              calendarType: CalendarDatePicker2Type.range,
              selectableDayPredicate: (date) {
                return !widget.location.allBookedDates.contains(date) &&
                    date.isAfter(
                      DateTime.now().subtract(const Duration(days: 1)),
                    );
              },
            ),
            dialogSize: const Size(325, 400),
            borderRadius: BorderRadius.circular(15),
          );

          setState(() {
            bookedDates = dates?.whereNotNull().toList() ?? [];
          });
        },
        label: isStartDate ? 'Start date' : 'End date',
        controller: TextEditingController(
          text: isStartDate
              ? bookedDates.firstOrNull?.monthDayComaYear ?? ''
              : bookedDates.lastOrNull?.monthDayComaYear ?? '',
        ),
      ),
    );
  }
}
