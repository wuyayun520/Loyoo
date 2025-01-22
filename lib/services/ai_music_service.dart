import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'dart:math';
import '../models/ai_music.dart';
import 'package:uuid/uuid.dart';

class AIMusicService {
  static final AIMusicService _instance = AIMusicService._internal();
  factory AIMusicService() => _instance;
  
  final _uuid = const Uuid();
  final _audioPlayer = AudioPlayer();
  bool _isPlaying = false;
  AIMusic? _currentMusic;
  
  final List<String> _musicFiles = [
    'assets/1.mp3',
    'assets/2.mp3',
    'assets/3.mp3',
    'assets/4.mp3',
    'assets/5.mp3',
  ];

  AIMusicService._internal() {
    // 监听播放状态变化
    _audioPlayer.playerStateStream.listen((state) {
      _isPlaying = state.playing;
    });
  }

  bool get isPlaying => _isPlaying;
  AIMusic? get currentMusic => _currentMusic;

  String _getRandomMusic() {
    final random = Random();
    return _musicFiles[random.nextInt(_musicFiles.length)];
  }

  Future<AIMusic> generateMusic(String prompt) async {
    try {
      // 如果有音乐在播放，先停止
      await stopMusic();
      
      final musicPath = _getRandomMusic();
      // 模拟生成延迟
      await Future.delayed(const Duration(seconds: 1));
      
      final music = AIMusic(
        id: _uuid.v4(),
        prompt: prompt,
        url: musicPath,
        isPlaying: false,
      );
      
      _currentMusic = music;
      return music;
    } catch (e) {
      print('Error generating music: $e');
      rethrow;
    }
  }

  Future<void> playMusic(AIMusic music) async {
    try {
      // 如果当前没有音乐在播放，或者要播放的音乐与当前音乐不同
      if (_currentMusic?.id != music.id || !_isPlaying) {
        final audioSource = AudioSource.asset(
          music.url,
          tag: MediaItem(
            id: music.id,
            title: 'AI 音乐',
            artist: music.prompt,
            artUri: null,
          ),
        );
        
        await _audioPlayer.setAudioSource(audioSource);
        await _audioPlayer.play();
        _currentMusic = music;
        _isPlaying = true;
      }
    } catch (e) {
      print('Error playing music: $e');
      rethrow;
    }
  }

  Future<void> pauseMusic() async {
    try {
      if (_isPlaying) {
        await _audioPlayer.pause();
        _isPlaying = false;
      }
    } catch (e) {
      print('Error pausing music: $e');
      rethrow;
    }
  }

  Future<void> resumeMusic() async {
    try {
      if (!_isPlaying && _currentMusic != null) {
        await _audioPlayer.play();
        _isPlaying = true;
      }
    } catch (e) {
      print('Error resuming music: $e');
      rethrow;
    }
  }

  Future<void> stopMusic() async {
    try {
      await _audioPlayer.stop();
      _isPlaying = false;
      _currentMusic = null;
    } catch (e) {
      print('Error stopping music: $e');
      rethrow;
    }
  }

  Future<void> seekTo(Duration position) async {
    try {
      await _audioPlayer.seek(position);
    } catch (e) {
      print('Error seeking: $e');
      rethrow;
    }
  }

  Stream<Duration> get positionStream => _audioPlayer.positionStream;
  Stream<Duration?> get durationStream => _audioPlayer.durationStream;
  Stream<PlayerState> get playerStateStream => _audioPlayer.playerStateStream;

  Future<void> dispose() async {
    await _audioPlayer.dispose();
  }
}

final aiMusicServiceProvider = Provider<AIMusicService>((ref) {
  final service = AIMusicService();
  ref.onDispose(() {
    service.dispose();
  });
  return service;
}); 