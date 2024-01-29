import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_email_verification_state.dart';
part 'request_email_verification_cubit.freezed.dart';

class RequestEmailVerificationCubit
    extends Cubit<RequestEmailVerificationState> {
  RequestEmailVerificationCubit(
    AuthenticationRepository authenticationRepository,
  )   : _authenticationRepository = authenticationRepository,
        super(const RequestEmailVerificationState.initial());

  final AuthenticationRepository _authenticationRepository;
}
