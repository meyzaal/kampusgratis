import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampusgratis/my_study/my_study.dart';
import 'package:kampusgratis/shared/shared.dart';
import 'package:my_study_repository/my_study_repository.dart';

final _bucket = PageStorageBucket();

enum MyStudyTab { berjalan, selesai }

class MyStudyPage extends StatelessWidget {
  const MyStudyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: MyStudyTab.values.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Studi-Ku'),
          bottom: CustomTabBar.secondary(
            tabs: MyStudyTab.values
                .map((value) => Tab(text: value.name.capitalize()))
                .toList(),
          ),
        ),
        body: BlocProvider(
          create: (context) => MyStudyBloc(context.read<MyStudyRepository>())
            ..add(const MyStudyEvent.fetched(forceRefresh: false)),
          child: PageStorage(bucket: _bucket, child: const MyStudyView()),
        ),
      ),
    );
  }
}

extension MyStudyTabX on MyStudyTab {
  bool get isOngoing => this == MyStudyTab.berjalan;
  bool get isCompleted => this == MyStudyTab.selesai;
  Widget view(List<MyStudy> datas) {
    return datas.isNotEmpty
        ? MyStudyList(datas: datas)
        : switch (this) {
            MyStudyTab.berjalan => const MyStudyEmpty.ongoing(),
            MyStudyTab.selesai => const MyStudyEmpty.completed(),
          };
  }
}
