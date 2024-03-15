import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampusgratis/my_study/my_study.dart';
import 'package:my_study_repository/my_study_repository.dart';

class MyStudyList extends StatelessWidget {
  const MyStudyList({required this.datas, super.key});

  final List<MyStudy> datas;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator.adaptive(
      onRefresh: () async =>
          context.read<MyStudyBloc>().add(const MyStudyEvent.fetched()),
      child: ListView.separated(
        itemBuilder: (context, index) => MyStudyCard(data: datas[index]),
        separatorBuilder: (context, index) => const SizedBox(height: 8),
        padding: const EdgeInsets.all(16),
        itemCount: datas.length,
      ),
    );
  }
}
