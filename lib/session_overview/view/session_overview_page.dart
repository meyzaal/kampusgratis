import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampusgratis/session_overview/session_overview.dart';
import 'package:my_study_repository/my_study_repository.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SessionOverviewPage extends StatelessWidget {
  const SessionOverviewPage({
    required this.subjectId,
    required this.sessionId,
    required this.moduleId,
    super.key,
    this.videoId,
  });

  final String subjectId;
  final String sessionId;
  final String moduleId;
  final String? videoId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SessionOverviewBloc(context.read<MyStudyRepository>())
            ..add(
              SessionOverviewEvent.fetched(
                subjectId: subjectId,
                sessionId: sessionId,
                moduleId: moduleId,
              ),
            ),
      child: videoId != null
          ? _ContentWithPlayerView(videoId: videoId!)
          : const SessionOverviewView(),
    );
  }
}

class _ContentWithPlayerView extends StatefulWidget {
  const _ContentWithPlayerView({required this.videoId});

  final String videoId;

  @override
  State<_ContentWithPlayerView> createState() => _ContentWithPlayerViewState();
}

class _ContentWithPlayerViewState extends State<_ContentWithPlayerView> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId,
    )..addListener(_onPlay);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      onExitFullScreen: () {
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      },
      player: YoutubePlayer(
        controller: _controller,
      ),
      builder: (context, player) {
        const ratio = 16 / 9;
        final width = MediaQuery.of(context).size.width;
        final height = width / ratio;

        return Scaffold(
          appBar: AppBar(
            title: const Text('Pendahuluan'),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(height),
              child: player,
            ),
          ),
          body: const SessionOverviewView(),
        );
      },
    );
  }

  void _onPlay() {
    final position = _controller.value.position;
    if (position.inSeconds >= 30) {}
  }

  @override
  void deactivate() {
    // Pauses video while navigating to next page.
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
