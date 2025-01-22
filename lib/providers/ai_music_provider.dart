import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/ai_music.dart';
import '../services/ai_music_service.dart';

// 当前播放音乐的状态管理
final currentMusicProvider = StateProvider<AIMusic?>((ref) => null);

// 播放状态管理
final isPlayingProvider = StateProvider<bool>((ref) => false);

// AI音乐服务的Provider
final aiMusicServiceProvider = Provider<AIMusicService>((ref) {
  final service = AIMusicService();
  ref.onDispose(() {
    service.dispose();
  });
  return service;
});

// 音乐生成的异步Provider
final musicGeneratorProvider = FutureProvider.family<AIMusic, String>((ref, prompt) async {
  final service = ref.read(aiMusicServiceProvider);
  return service.generateMusic(prompt);
});

// 播放进度的Stream Provider
final playbackPositionProvider = StreamProvider<Duration>((ref) {
  final service = ref.read(aiMusicServiceProvider);
  return service.positionStream;
});

// 音乐总时长的Stream Provider
final musicDurationProvider = StreamProvider<Duration?>((ref) {
  final service = ref.read(aiMusicServiceProvider);
  return service.durationStream;
});

// 播放状态的Stream Provider
final playerStateProvider = StreamProvider((ref) {
  final service = ref.read(aiMusicServiceProvider);
  return service.playerStateStream;
});

// 当前播放时间的Provider
final currentTimeProvider = StateProvider<Duration>((ref) => Duration.zero);

// 音乐播放控制的Provider
final playbackControlProvider = Provider((ref) {
  final service = ref.read(aiMusicServiceProvider);
  return PlaybackControl(
    play: (music) => service.playMusic(music),
    pause: () => service.pauseMusic(),
    resume: () => service.resumeMusic(),
    stop: () => service.stopMusic(),
    seekTo: (position) => service.seekTo(position),
  );
});

// 播放控制类
class PlaybackControl {
  final Future<void> Function(AIMusic) play;
  final Future<void> Function() pause;
  final Future<void> Function() resume;
  final Future<void> Function() stop;
  final Future<void> Function(Duration) seekTo;

  PlaybackControl({
    required this.play,
    required this.pause,
    required this.resume,
    required this.stop,
    required this.seekTo,
  });
} 