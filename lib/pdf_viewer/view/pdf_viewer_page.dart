import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:go_router/go_router.dart';
import 'package:kampusgratis/shared/components/error.dart';

class PdfViewerPage extends StatelessWidget {
  const PdfViewerPage({required this.body, required this.title, super.key});

  PdfViewerPage.network({required String url, required this.title, super.key})
      : body = _NetworkPdfViewer(url: url);
  PdfViewerPage.asset({required String path, required this.title, super.key})
      : body = _AssetPdfViewer(path: path);

  final String title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: body,
    );
  }
}

class _AssetPdfViewer extends StatelessWidget {
  const _AssetPdfViewer({required this.path});

  final String path;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: _PdfConfig.of(context).fromAsset(
        path,
        loadingWidget: _ProgressIndicator.new,
        errorWidget: (error) => const Center(
            child: ErrorStateWidget(message: 'Gagal memuat file pdf.'),),
      ),
    );
  }
}

class _NetworkPdfViewer extends StatelessWidget {
  const _NetworkPdfViewer({required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: _PdfConfig.of(context).fromUrl(
        url,
        placeholder: (progress) => _ProgressIndicator(progress: progress),
        errorWidget: (error) => const Center(
            child: ErrorStateWidget(message: 'Gagal memuat file pdf.'),),
      ),
    );
  }
}

class _PdfConfig {
  const _PdfConfig();

  static PDF of(BuildContext context) => PDF(
        onPageError: (page, error) {},
        onError: (error) {
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(
              SnackBar(content: Text('Terjadi kesalahan: $error.')),
            );
          context.pop();
        },
        onViewCreated: (controller) {},
        nightMode: MediaQuery.of(context).platformBrightness == Brightness.dark,
      );
}

class _ProgressIndicator extends StatelessWidget {
  const _ProgressIndicator({super.key, this.progress});

  final double? progress;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(32),
            child: CircularProgressIndicator.adaptive(value: progress),
          ),
          const Text('Memuat...'),
        ],
      ),
    );
  }
}
