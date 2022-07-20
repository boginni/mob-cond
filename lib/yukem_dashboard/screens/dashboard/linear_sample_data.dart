import 'package:intl/intl.dart';

class LinearSampleData {
  static getNumberSeries() {
    return <double>[400, 410, 405, 410, 350, 370, 500, 390, 450, 440, 350, 370, 405, 400, 410, 405, 410, 350, 370, 500, 390, 450, 440, 350, 370, 405, 410, 350, 370, 500, 390, 450, 440, 350, 370, 410, 405, 410, 350, 370, 500, 390, 450, 440, 350, 370];
  }

  static String getMonth(int currentMonthIndex) {
    return DateFormat('MMM').format(DateTime(0, currentMonthIndex)).toString();
  }
}
