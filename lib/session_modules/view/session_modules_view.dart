import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampusgratis/session_modules/session_modules.dart';
import 'package:kampusgratis/shared/shared.dart';
import 'package:my_study_repository/my_study_repository.dart';

class SessionModulesView extends StatelessWidget {
  const SessionModulesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SessionModulesBloc, SessionModulesState>(
      builder: (context, state) {
        String? sessionNo;
        if (state is SessionModulesSuccessState) {
          sessionNo = ' ${state.data.detail.sessionNo}';
        }
        final title = sessionNo != null
            ? 'Modul Pertemuan' '$sessionNo'
            : 'Modul Pertemuan';
        return Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: state.when(
            initial: SizedBox.new,
            loading: _Loading.new,
            failure: _Failure.new,
            success: _Success.new,
          ),
        );
      },
    );
  }
}

class _Success extends StatelessWidget {
  const _Success(this.data);

  final SessionModules data;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator.adaptive(
      child: Scrollbar(
        child: ListView.separated(
          padding: const EdgeInsets.all(16),
          itemBuilder: itemBuilder,
          separatorBuilder: separatorBuilder,
          itemCount: data.modules.length,
        ),
      ),
      onRefresh: () async => context.read<SessionModulesBloc>().add(
            SessionModulesEvent.fetched(
              subjectId: data.detail.subjectId,
              sessionId: data.detail.sessionId,
            ),
          ),
    );
  }

  Widget itemBuilder(BuildContext context, int index) {
    final module = data.modules[index];
    return SessionModuleCard(
      title: module.title,
      isAllVideoSeen: module.isAllVideoSeen,
      submitted: module.submitted,
      totalVideos: module.totalVideos,
      totalDocuments: module.totalDocuments,
      totalArticles: module.totalArticles,
      totalJournals: module.totalJournals,
    );
  }

  Widget separatorBuilder(BuildContext context, int index) =>
      const SizedBox(height: 8);
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
