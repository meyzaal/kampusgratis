part of 'single_choices_cubit.dart';

@freezed
class SingleChoicesState with _$SingleChoicesState {
  const factory SingleChoicesState({
    required String inputValue,
    required List<String> values,
  }) = _SingleChoicesState;
}
