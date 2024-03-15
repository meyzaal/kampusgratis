import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampusgratis/my_study/my_study.dart';
import 'package:kampusgratis/shared/shared.dart';

class MyStudyView extends StatelessWidget {
  const MyStudyView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyStudyBloc, MyStudyState>(
      builder: (context, state) {
        return state.when(
          initial: SizedBox.new,
          loading: _Loading.new,
          failure: (message) => _Failure(message: message),
          success: (ongoing, completed) => TabBarView(
            children: MyStudyTab.values
                .map(
                  (value) => value.view(value.isOngoing ? ongoing : completed),
                )
                .toList(),
          ),
        );
      },
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
              context.read<MyStudyBloc>().add(const MyStudyEvent.fetched()),
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
