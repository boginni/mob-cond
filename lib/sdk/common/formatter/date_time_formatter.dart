import 'package:intl/intl.dart';

const Map<String, String> days = {
  'Monday': 'SEGUNDA',
  'Tuesday': 'TERCA',
  'Wednesday': 'QUARTA',
  'Thursday': 'QUINTA',
  'Friday': 'SEXTA',
  'Saturday': 'SABADO',
  'Sunday': 'DOMINGO',
};

class DateFormatter {
  static final semana = DateFormat('EEEE');

  static final mes = DateFormat('MM-yyyy');

  static final databaseDate = DateFormat('yyyy-MM-dd');
  static final databaseDataEstranho = DateFormat('dd-MM-yy');

  static final databaseDateTime = DateFormat('yyyy-MM-dd HH:mm:ss');
  static final databaseTime = DateFormat('HH:mm:ss');

  static final normalData = DateFormat('dd/MM/yyyy');
  static final normalDataResumido = DateFormat('dd/MM/yy');
  static final normalHoraMinuto = DateFormat('HH:mm');
  static final noramlDataHora = DateFormat('dd/MM/yyyy HH:mm');

  static final normalHoraMinuto2 = DateFormat('Hm');
}
