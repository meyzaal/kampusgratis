import 'package:flutter/material.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:my_study_repository/my_study_repository.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SessionOverviewContent extends StatelessWidget {
  const SessionOverviewContent(this.data, {super.key});

  final OverviewDetails data;

  @override
  Widget build(BuildContext context) {
    final listViewChildren = [
      _Title(data.title),
      _Description(data.description),
      _Documents(data.documents),
    ];

    return Scrollbar(
      child: ListView.separated(
        itemBuilder: (context, index) => listViewChildren[index],
        separatorBuilder: (context, index) => const Divider(height: 0),
        itemCount: listViewChildren.length,
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
          height: 30 / 20,
        ),
      ),
    );
  }
}

class _Description extends StatelessWidget {
  const _Description(this.description);

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const _TitleSection('Deskripsi'),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(
              fontSize: 14,
              height: 21 / 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

class _Documents extends StatelessWidget {
  const _Documents(this.documents);

  final List<Document> documents;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 16, top: 16, right: 16),
          child: _TitleSection('Dokumen'),
        ),
        ...documents.map(
          (doc) {
            final url = doc.documentFile;
            return ListTile(
              leading: const PhosphorIcon(PhosphorIconsFill.file),
              title: Text(doc.title),
              onTap: url.isEmpty
                  ? null
                  : () {
                      if (url.endsWith('.pdf')) {
                        PdfViewerRoute.network(
                          url,
                          title: 'Pendahuluan',
                        ).push<void>(context);
                      } else {
                        launchUrl(Uri.parse(url)).then((canLaunch) {
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
                      }
                    },
            );
          },
        ),
      ],
    );
  }
}

class _TitleSection extends StatelessWidget {
  const _TitleSection(this.value);

  final String value;

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: const TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 16,
        height: 24 / 16,
      ),
    );
  }
}
