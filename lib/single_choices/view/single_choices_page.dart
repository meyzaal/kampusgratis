import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kampusgratis/single_choices/single_choices.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SingleChoicesPage extends StatelessWidget {
  const SingleChoicesPage({
    required this.title,
    required this.values,
    super.key,
    this.initialValue,
  });

  final String title;
  final List<String> values;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => SingleChoicesCubit(
          initialValue: initialValue,
          values: values,
        ),
        child: _SingleChoicesView(
          title: title,
          values: values,
          initialValue: initialValue,
        ),
      ),
    );
  }
}

class _SingleChoicesView extends StatelessWidget {
  const _SingleChoicesView({
    required this.title,
    required this.values,
    required this.initialValue,
  });

  final String title;
  final List<String> values;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SingleChoicesCubit, SingleChoicesState>(
      builder: (context, state) {
        final titleWidget = Text(title);
        var appBarWidget = SliverAppBar.medium(title: titleWidget);
        if (title.length > 80) {
          appBarWidget = SliverAppBar.large(title: titleWidget);
        }

        Widget? searchWidget;
        if (values.length > 5) {
          searchWidget = SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverToBoxAdapter(
              child: TextFormField(
                textInputAction: TextInputAction.search,
                decoration: const InputDecoration(
                  hintText: 'Cari...',
                  prefixIcon:
                      PhosphorIcon(PhosphorIconsRegular.magnifyingGlass),
                ),
                onChanged: (value) =>
                    context.read<SingleChoicesCubit>().inputChanged(value),
              ),
            ),
          );
        }

        return Scrollbar(
          child: CustomScrollView(
            slivers: [
              appBarWidget,
              if (searchWidget != null) searchWidget,
              SliverList.list(
                children: ListTile.divideTiles(
                  context: context,
                  tiles: state.values.map(
                    (option) => RadioListTile<String>.adaptive(
                      title: Text(option),
                      value: option,
                      groupValue: initialValue,
                      onChanged: (value) => context.pop(value),
                    ),
                  ),
                ).toList(),
              ),
            ],
          ),
        );
      },
    );
  }
}
