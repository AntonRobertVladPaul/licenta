import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  bool isSameDayAs(DateTime date) {
    return year == date.year && month == date.month && day == date.day;
  }

  DateTime copyWith({
    int? year,
    int? month,
    int? day,
    int? hour,
    int? minute,
  }) =>
      DateTime(
        year ?? this.year,
        month ?? this.month,
        day ?? this.day,
        hour ?? this.hour,
        minute ?? this.minute,
      );

  bool isSameMonthAs(DateTime date) {
    return year == date.year && month == date.month;
  }

  String get monthDayComaYear => DateFormat('MMMM dd, yyyy').format(this);

  String get shortMonthDayComaYear => DateFormat('MMM dd, yyyy').format(this);

  String get shortMonthDay => DateFormat('MMM dd').format(this);

  String get shortMonth => DateFormat('MMM').format(this);

  String get monthDay => DateFormat('MMMM d').format(this);

  String get monthDayComaTime => DateFormat('MMMM dd, hh:mm a').format(this);

  String get monthComaYear => DateFormat('MMMM, yyyy').format(this);

  String get hourMinuteMeridian => DateFormat('hh:mm a').format(this);

  int get daysUntilToday => difference(DateTime.now()).inDays + 1;

  int get hoursUntilNow => difference(DateTime.now()).inHours;

  String get monthSlashYear => DateFormat('MM/yyyy').format(this);

  DateTime get atMidnight {
    return copyWith(hour: 23, minute: 59);
  }
}
