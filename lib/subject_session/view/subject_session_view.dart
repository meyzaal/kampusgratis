import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kampusgratis/shared/shared.dart';
import 'package:kampusgratis/subject_session/subject_session.dart';
import 'package:my_study_repository/my_study_repository.dart';

class SubjectSessionView extends StatelessWidget {
  const SubjectSessionView({
    required this.subjectId,
    required this.subjectName,
    super.key,
  });

  final String subjectId;
  final String subjectName;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubjectSessionBloc, SubjectSessionState>(
      builder: (context, state) {
        return PopScope(
          canPop: false,
          onPopInvoked: (didPop) {
            context.pop(state.updated);
          },
          child: Scaffold(
            body: RefreshIndicator.adaptive(
              onRefresh: () async => context
                  .read<SubjectSessionBloc>()
                  .add(SubjectSessionEvent.fetched(subjectId)),
              child: CustomScrollView(
                slivers: [
                  SliverAppBar.large(title: Text(subjectName)),
                  switch (state.status) {
                    SubjectSessionStatus.initial => const SliverToBoxAdapter(),
                    SubjectSessionStatus.loading => const _Loading(),
                    SubjectSessionStatus.failure => const _Failure(),
                    SubjectSessionStatus.success => _Success(state.data),
                  },
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _Success extends StatelessWidget {
  const _Success(this.data);

  final SubjectSession? data;

  @override
  Widget build(BuildContext context) {
    if (data == null) return const SizedBox();
    final overview = data?.overview;

    final subjectId = overview?.subjectId; // overview widget
    final sessionId = overview?.sessionId; // overview widget
    final moduleId = overview?.moduleId; // overview widget

    final items = [
      if (overview != null)
        if (overview.isNotEmpty)
          SubjectSessionOverview(
            subjectId: subjectId!,
            sessionId: sessionId!,
            moduleId: moduleId!,
            durationSeconds: overview.durationSeconds,
            link: overview.link,
          ),
      ...data!.sessions.map(
        (session) => SubjectSessionTile(
          isLocked: session.isLocked,
          number: session.sessionNo,
          title: session.title,
          progresses: session.progress,
        ),
      ),
    ];

    return SliverList.builder(
      itemBuilder: (context, index) => items[index],
      itemCount: items.length,
    );
  }
}

class _Failure extends StatelessWidget {
  const _Failure();

  @override
  Widget build(BuildContext context) {
    final state = context.select((SubjectSessionBloc bloc) => bloc.state);
    final message = state.message ?? 'Terjadi kesalahan (message-null).';
    final subjectId = state.subjectId;

    return SliverFillRemaining(
      hasScrollBody: false,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: ErrorStateWidget(
            message: message,
            onRetry: subjectId != null
                ? () => context
                    .read<SubjectSessionBloc>()
                    .add(SubjectSessionEvent.fetched(subjectId))
                : null,
          ),
        ),
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(
      hasScrollBody: false,
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(32),
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
    );
  }
}
