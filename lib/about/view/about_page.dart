import 'package:flutter/material.dart';
import 'package:kampusgratis/shared/shared.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  String _version = '-';

  @override
  void initState() {
    PackageInfo.fromPlatform().then(
      (info) => setState(() {
        _version = info.version;
      }),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang'),
      ),
      body: IconTheme(
        data: IconThemeData(
          size: 20,
          color: theme.colorScheme.onSurfaceVariant,
        ),
        child: Column(
          children: ListTile.divideTiles(
            context: context,
            tiles: [
              ListTile(
                title: const Text('Versi Aplikasi'),
                trailing: Text('v$_version'),
              ),
              ListTile(
                title: const Text('Syarat dan Ketentuan'),
                trailing: const PhosphorIcon(PhosphorIconsRegular.caretRight),
                onTap: () {
                  final url = Constants.termsAndConditionsUrl;
                  launchUrl(url).then((canLaunch) {
                    if (!canLaunch) {
                      ScaffoldMessenger.of(context)
                        ..clearSnackBars()
                        ..showSnackBar(
                          const SnackBar(
                            content: Text('Tidak dapat membuka tautan.'),
                            showCloseIcon: true,
                          ),
                        );
                    }
                  });
                },
              ),
              ListTile(
                title: const Text('Kebijakan Privasi'),
                trailing: const PhosphorIcon(PhosphorIconsRegular.caretRight),
                onTap: () {
                  final url = Constants.privacyPolicyUrl;
                  launchUrl(url).then((canLaunch) {
                    if (!canLaunch) {
                      ScaffoldMessenger.of(context)
                        ..clearSnackBars()
                        ..showSnackBar(
                          const SnackBar(
                            content: Text('Tidak dapat membuka tautan.'),
                            showCloseIcon: true,
                          ),
                        );
                    }
                  });
                },
              ),
            ],
          ).toList(),
        ),
      ),
    );
  }
}
