import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:user_repository/user_repository.dart';

class AuthenticationCubit extends HydratedCubit<AuthenticationStatus> {
  AuthenticationCubit({
    required AuthenticationRepository authenticationRepository,
    required UserRepository userRepository,
  })  : _authenticationRepository = authenticationRepository,
        _userRepository = userRepository,
        super(AuthenticationStatus.initial) {
    _subscription = _authenticationRepository.status.listen(
      (status) {
        if (status.isUnauthenticated) _userRepository.clearUser();
        return emit(status);
      },
    );
  }

  late StreamSubscription<AuthenticationStatus> _subscription;
  final AuthenticationRepository _authenticationRepository;
  final UserRepository _userRepository;

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }

  @override
  AuthenticationStatus? fromJson(Map<String, dynamic> json) {
    final statusString = json['status'];
    return AuthenticationStatus.values.firstWhere(
      (status) => status.toString().split('.').last == statusString,
      orElse: () => AuthenticationStatus.initial,
    );
  }

  @override
  Map<String, dynamic>? toJson(AuthenticationStatus state) {
    return {'status': state.toString().split('.').last};
  }
}
