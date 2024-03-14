import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/gen/gen.dart';
import 'package:kampusgratis/onboarding/onboarding.dart';
import 'package:kampusgratis/shared/shared.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final theme = Theme.of(context);
            final logoWidget = Center(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Assets.images.logoKgOrange.image(width: 124),
              ),
            );
            final carouselWidget = BlocProvider(
              create: (context) => CarouselCubit(),
              child: const OnboardingCarousel(),
            );
            final buttonsWidget = Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                FilledButton(
                  onPressed: () => const RegisterRoute().push<void>(context),
                  child: const Text('Buat akun'),
                ),
                TextButton(
                  onPressed: () => const LoginRoute().push<void>(context),
                  child: RichText(
                    text: TextSpan(
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: theme.colorScheme.primary,
                      ),
                      children: [
                        TextSpan(
                          text: 'Sudah punya akun?',
                          style: GoogleFonts.poppins(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                        const TextSpan(text: ' Masuk'),
                      ],
                    ),
                  ),
                ),
              ],
            );
    
            return SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(16),
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [logoWidget, carouselWidget, buttonsWidget],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
