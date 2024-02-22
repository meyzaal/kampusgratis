import 'dart:io';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kg_client/kg_client.dart';
import 'package:user_repository/user_repository.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

enum ProfileStatus { initial, loading, failure, success }

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc({
    required UserRepository userRepository,
    required AuthenticationRepository authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        _userRepository = userRepository,
        _imagePicker = ImagePicker(),
        _imageCropper = ImageCropper(),
        super(const ProfileState()) {
    on<ProfileFetchRequested>(_onProfileFetchRequested);
    on<ProfileReloadUserRequested>(_onProfileReloadUserRequested);
    on<ProfileLogOutRequested>(_onProfileLogOutRequested);
    on<ProfileAvatarChanged>(_onProfileAvatarChanged);
    // on<ProfileAvatarDeleted>(_onProfileAvatarDeleted);
  }

  final AuthenticationRepository _authenticationRepository;
  final UserRepository _userRepository;
  final ImagePicker _imagePicker;
  final ImageCropper _imageCropper;

  Future<void> _onProfileFetchRequested(
    ProfileFetchRequested event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(fetchStatus: ProfileStatus.loading));
    try {
      final user = await _userRepository.getUser();
      emit(
        state.copyWith(
          fetchStatus: ProfileStatus.success,
          user: user,
        ),
      );
    } on NetworkException catch (e) {
      emit(
        state.copyWith(
          fetchStatus: ProfileStatus.failure,
          message: e.message,
        ),
      );
    }
  }

  void _onProfileReloadUserRequested(
    ProfileReloadUserRequested event,
    Emitter<ProfileState> emit,
  ) =>
      emit(state.copyWith(user: _userRepository.currentUser));

  Future<void> _onProfileLogOutRequested(
    ProfileLogOutRequested event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(logOutStatus: ProfileStatus.loading));
    try {
      await _authenticationRepository.signOut();
      emit(state.copyWith(logOutStatus: ProfileStatus.success));
    } catch (_) {
      emit(
        state.copyWith(
          logOutStatus: ProfileStatus.failure,
          message: 'Terjadi kesalahan.',
        ),
      );
    }
  }

  Future<void> _onProfileAvatarChanged(
    ProfileAvatarChanged event,
    Emitter<ProfileState> emit,
  ) async {
    try {
      final pickedImage = await _imagePicker.pickImage(source: event.source);
      if (pickedImage == null) return;
      final croppedImage = await _imageCropper.cropImage(
        sourcePath: pickedImage.path,
        cropStyle: CropStyle.circle,
        aspectRatioPresets: [CropAspectRatioPreset.square],
        uiSettings: [
          AndroidUiSettings(
            backgroundColor: Colors.black,
            lockAspectRatio: true,
            hideBottomControls: true,
            toolbarWidgetColor: Colors.white,
            toolbarColor: Colors.black,
          ),
          IOSUiSettings(),
        ],
      );
      if (croppedImage == null) return;
      final image = File(croppedImage.path);
      emit(state.copyWith(updateAvatarStatus: ProfileStatus.loading));
      final user = await _userRepository.uploadUserAvatar(image);
      emit(
        state.copyWith(updateAvatarStatus: ProfileStatus.success, user: user),
      );
    } on NetworkException catch (e) {
      emit(
        state.copyWith(
          updateAvatarStatus: ProfileStatus.failure,
          message: e.message,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          updateAvatarStatus: ProfileStatus.failure,
          message: 'Terjadi kesalahan: $e.',
        ),
      );
    }
  }

  // Future<void> _onProfileAvatarDeleted(
  //   ProfileAvatarDeleted event,
  //   Emitter<ProfileState> emit,
  // ) async {
  //   emit(state.copyWith(updateAvatarStatus: ProfileStatus.loading));
  //   try {
  //     final user = await _userRepository.deleteUserAvatar();
  //     emit(
  //       state.copyWith(updateAvatarStatus: ProfileStatus.success, user: user),
  //     );
  //   } on NetworkException catch (e) {
  //     emit(
  //       state.copyWith(
  //         updateAvatarStatus: ProfileStatus.failure,
  //         message: e.message,
  //       ),
  //     );
  //   }
  // }
}

extension ProfileStatusX on ProfileStatus {
  bool get isInitial => this == ProfileStatus.initial;
  bool get isLoading => this == ProfileStatus.loading;
  bool get isFailure => this == ProfileStatus.failure;
  bool get isSuccess => this == ProfileStatus.success;
}
