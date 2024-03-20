import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/shared/shared.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class MainPage extends StatelessWidget with NavigationMiddleware {
  const MainPage({required this.child, super.key});

  final Widget child;

  int _getCurrentIndex(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();
    if (location == '/my-study') return 1;
    if (location == '/assignment') return 2;
    if (location == '/my-calendar') return 3;
    if (location == '/profile') return 4;
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    final currentIndex = _getCurrentIndex(context);
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: PhosphorIcon(PhosphorIconsRegular.house),
            activeIcon: PhosphorIcon(PhosphorIconsFill.house),
            label: 'Beranda',
            tooltip: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: PhosphorIcon(PhosphorIconsRegular.graduationCap),
            activeIcon: PhosphorIcon(PhosphorIconsFill.graduationCap),
            label: 'Studi-Ku',
            tooltip: 'Studi-Ku',
          ),
          BottomNavigationBarItem(
            icon: PhosphorIcon(PhosphorIconsRegular.clipboardText),
            activeIcon: PhosphorIcon(PhosphorIconsFill.clipboardText),
            label: 'Penugasan',
            tooltip: 'Penugasan',
          ),
          BottomNavigationBarItem(
            icon: PhosphorIcon(PhosphorIconsRegular.calendar),
            activeIcon: PhosphorIcon(PhosphorIconsFill.calendar),
            label: 'Kalender',
            tooltip: 'Kalender',
          ),
          BottomNavigationBarItem(
            icon: PhosphorIcon(PhosphorIconsRegular.userCircle),
            activeIcon: PhosphorIcon(PhosphorIconsFill.userCircle),
            label: 'Profil',
            tooltip: 'Profil',
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          switch (index) {
            case 0:
              const HomeRoute().go(context);
            case 1:
              checkRole(context, onNavigate: const MyStudyRoute().go);
            case 2:
              const AssignmentRoute().go(context);
            case 3:
              const MyCalendarRoute().go(context);
            case 4:
              const ProfileRoute().go(context);
          }
        },
      ),
    );
  }
}
