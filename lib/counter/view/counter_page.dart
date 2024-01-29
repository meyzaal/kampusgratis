import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampusgratis/counter/counter.dart';
import 'package:kampusgratis/l10n/l10n.dart';
import 'package:user_repository/user_repository.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({required this.pageName, super.key});

  final String pageName;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(
        authenticationRepository: context.read<AuthenticationRepository>(),
        userRepository: context.read<UserRepository>(),
      ),
      child: CounterView(pageName: pageName),
    );
  }
}

class CounterView extends StatelessWidget {
  const CounterView({required this.pageName, super.key});

  final String pageName;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(title: Text('${l10n.counterAppBarTitle}-$pageName')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Elevated Button'),
              ),
              FilledButton(
                onPressed: () {},
                child: const Text('Filled Button'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Outlined Button'),
              ),
              const CounterText(),
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().increment(),
            heroTag: 'increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().decrement(),
            heroTag: 'decrement',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().testingLogin(),
            heroTag: 'login',
            child: const Icon(Icons.upload),
          ),
        ],
      ),
    );
  }
}

class CounterText extends StatelessWidget {
  const CounterText({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final count = context.select((CounterCubit cubit) => cubit.state);
    return Text('$count', style: theme.textTheme.displayLarge);
  }
}
