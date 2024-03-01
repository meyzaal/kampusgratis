import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampusgratis/home/home.dart';
import 'package:kampusgratis/shared/shared.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        const duration = Duration(milliseconds: 500);
        Widget trailingWidget = const SizedBox();
        var appBarTitle = 'Selamat datang';

        final user = state.user;
        if (user != null) {
          appBarTitle = 'Halo, ${user.fullName}';
          trailingWidget = CustomAvatar(avatarUrl: user.avatar);
        }

        return AppBar(
          title: Text(appBarTitle),
          centerTitle: false,
          actions: [
            AnimatedSwitcher(
              duration: duration,
              transitionBuilder: (child, animation) => ScaleTransition(
                scale: animation,
                child: child,
              ),
              child: SizedBox(
                key: ValueKey<Widget>(trailingWidget),
                child: trailingWidget,
              ),
            ),
            const SizedBox(width: 16),
          ],
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
