import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampusgratis/session_modules/session_modules.dart';
import 'package:my_study_repository/my_study_repository.dart';

class SessionModulesPage extends StatelessWidget {
  const SessionModulesPage({
    required this.subjectId,
    required this.sessionId,
    super.key,
  });

  final String subjectId;
  final String sessionId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SessionModulesBloc(context.read<MyStudyRepository>())
        ..add(
          SessionModulesEvent.fetched(
            subjectId: subjectId,
            sessionId: sessionId,
          ),
        ),
      child: const SessionModulesView(),
    );
  }
}
