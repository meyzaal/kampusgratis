import 'package:bloc/bloc.dart';

class DatePickerCubit extends Cubit<DateTime?> {
  DatePickerCubit() : super(null);

  void dateChanged(DateTime? date) => emit(date);
}
