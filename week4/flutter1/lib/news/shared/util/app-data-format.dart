
import 'package:intl/intl.dart';

String myDateFormat(DateTime date){
  return new DateFormat().add_yMMMEd().format(date);
}