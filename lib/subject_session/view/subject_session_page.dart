import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampusgratis/subject_session/subject_session.dart';
import 'package:my_study_repository/my_study_repository.dart';

class SubjectSessionPage extends StatelessWidget {
  const SubjectSessionPage({
    required this.subjectId,
    this.subjectName,
    super.key,
  });

  final String subjectId;
  final String? subjectName;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SubjectSessionBloc(context.read<MyStudyRepository>())
        ..add(SubjectSessionEvent.fetched(subjectId)),
      child: SubjectSessionView(subjectId: subjectId),
    );
  }
}
