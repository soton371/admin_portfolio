import 'package:intl/intl.dart';

String formatMonthYear(DateTime? dateTime) {
  if(dateTime==null){
    return '';
  }
  final DateFormat formatter = DateFormat('MMM yyyy');
  return formatter.format(dateTime);
}
