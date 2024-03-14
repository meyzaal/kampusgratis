import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampusgratis/bootcamp/bootcamp.dart';

class BootcampList extends StatefulWidget {
  const BootcampList({
    super.key,
  });

  @override
  State<BootcampList> createState() => _BootcampListState();
}

class _BootcampListState extends State<BootcampList> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()..addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BootcampBloc, BootcampState>(
      builder: (context, state) {
        if (state.datas.isEmpty) {
          return const Center(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text('Tidak ada data'),
            ),
          );
        }

        return RefreshIndicator.adaptive(
          onRefresh: () async => context
              .read<BootcampBloc>()
              .add(const BootcampEvent.fetched(isLoadMore: false)),
          child: ListView.separated(
            padding: const EdgeInsets.all(16),
            controller: _scrollController,
            separatorBuilder: (context, index) => const SizedBox(height: 8),
            itemBuilder: (context, index) {
              if (index >= state.datas.length) return const _BottomLoader();
              return BootcampCard(bootcamp: state.datas[index], index: index);
            },
            itemCount: state.hasReachMax
                ? state.datas.length
                : state.datas.length + 1,
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context
          .read<BootcampBloc>()
          .add(const BootcampEvent.fetched(isLoadMore: true));
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.95);
  }
}

class _BottomLoader extends StatelessWidget {
  const _BottomLoader();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(8),
        width: 24,
        height: 24,
        child: const CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
