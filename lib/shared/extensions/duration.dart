const _timeRemainder = 60;

extension DurationX on Duration {
  String get ms {
    final minutes = _twoDigits(inMinutes.remainder(_timeRemainder));
    final seconds = _twoDigits(inSeconds.remainder(_timeRemainder));
    return '$minutes:$seconds';
  }
}

String _twoDigits(int n) => n.toString().padLeft(2, '0');
