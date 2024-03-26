import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampusgratis/session_overview/session_overview.dart';
import 'package:kampusgratis/shared/shared.dart';

class SessionOverviewView extends StatelessWidget {
  const SessionOverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SessionOverviewBloc, SessionOverviewState>(
      builder: (context, state) => state.when(
        initial: SizedBox.new,
        loading: _Loading.new,
        failure: _Failure.new,
        success: SessionOverviewContent.new,
      ),
    );
  }
}

class _Failure extends StatelessWidget {
  const _Failure(this.message);

  final String? message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: ErrorStateWidget(
          message: message ?? 'Terjadi kesalahan (message-null).',
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
