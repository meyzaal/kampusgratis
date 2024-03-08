import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_choices_state.dart';
part 'single_choices_cubit.freezed.dart';

class SingleChoicesCubit extends Cubit<SingleChoicesState> {
  SingleChoicesCubit({
    required String? initialValue,
    required List<String> values,
  })  : _values = values,
        super(
          SingleChoicesState(
            inputValue: initialValue ?? '',
            values: values,
          ),
        );

  final List<String> _values;

  void inputChanged(String value) {
    emit(
      state.copyWith(
        inputValue: value,
        values: value.isEmpty
            ? _values
            : state.values
                .where(
                  (option) =>
                      option.toLowerCase().contains(value.toLowerCase()),
                )
                .toList(),
      ),
    );
  }
}
