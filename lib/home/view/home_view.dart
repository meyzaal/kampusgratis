import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/home/home.dart';
import 'package:kampusgratis/shared/shared.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    required this.needRedirect,
    super.key,
  });

  final bool needRedirect;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: BlocConsumer<HomeBloc, HomeState>(
        listenWhen: (previous, current) => previous.user != current.user,
        listener: (context, state) {
          final role = state.user?.role;
          if (role != null && role.isGuest && needRedirect) {
            const AdministrationRoute().push<bool>(context).then((updated) {
              if (updated != true) return;
              context.read<HomeBloc>().add(const HomeEvent.fetched());
            });
          }
        },
        builder: (context, state) {
          switch (state.status) {
            case HomeStatus.initial:
              return const SizedBox();
            case HomeStatus.loading:
              return const _Loading();
            case HomeStatus.failure:
              return _Failure(message: state.message);
            case HomeStatus.success:
              return RefreshIndicator.adaptive(
                onRefresh: () async =>
                    context.read<HomeBloc>().add(const HomeEvent.fetched()),
                child: CustomScrollView(
                  slivers: [
                    if (state.banners.isNotEmpty)
                      HomeBannerCarousel(banners: state.banners),
                    const HomeFeatures(),
                  ],
                ),
              );
          }
        },
      ),
    );
  }
}

class _Failure extends StatelessWidget {
  const _Failure({this.message});

  final String? message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: ErrorStateWidget(
          message: message ?? 'Terjadi kesalahan (message-null).',
          onRetry: () =>
              context.read<HomeBloc>().add(const HomeEvent.fetched()),
        ),
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(32),
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
