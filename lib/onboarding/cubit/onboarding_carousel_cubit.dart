import 'package:bloc/bloc.dart';

class OnboardingCarouselCubit extends Cubit<int> {
  OnboardingCarouselCubit() : super(0);

  void onPageChanged(int index) => emit(index);
}
