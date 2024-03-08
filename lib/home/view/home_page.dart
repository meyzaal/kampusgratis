import 'package:banner_repository/banner_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampusgratis/home/home.dart';
import 'package:kampusgratis/shared/shared.dart';
import 'package:user_repository/user_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({required this.needRedirect, super.key});

  final bool needRedirect;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeBloc(
            userRepository: context.read<UserRepository>(),
            bannerRepository: context.read<BannerRepository>(),
          )..add(const HomeEvent.fetched()),
        ),
        BlocProvider(create: (context) => CarouselCubit()),
      ],
      child: HomeView(needRedirect: needRedirect),
    );
  }
}
