import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/ai_music.dart';
import '../../providers/ai_music_provider.dart';

class AIMusicPage extends ConsumerStatefulWidget {
  const AIMusicPage({super.key});

  @override
  ConsumerState<AIMusicPage> createState() => _AIMusicPageState();
}

class _AIMusicPageState extends ConsumerState<AIMusicPage> {
  final _promptController = TextEditingController();
  AIMusic? _currentMusic;
  late final playbackControl;

  @override
  void initState() {
    super.initState();
    playbackControl = ref.read(playbackControlProvider);
    // 显示版权声明弹窗
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showDisclaimerDialog();
    });
  }

  void _showDisclaimerDialog() {
    showDialog(
      context: context,
      barrierDismissible: false, // 用户必须点击按钮才能关闭
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Copyright Notice',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          content: const SingleChildScrollView(
            child: Text(
              'All audio content played in this application is original music generated through artificial intelligence and has not been obtained from any third-party audio or video streaming, directory, or discovery services.\n\n'
              'Our AI models are trained on public data, and the generated content is completely original, without involving any third-party copyright or licensing issues.\n\n'
              'We have implemented strict copyright protection measures to ensure that the content in this application does not infringe upon any third party\'s intellectual property rights.',
              style: TextStyle(
                fontSize: 15,
                height: 1.5,
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          actions: [
            TextButton(
              child: const Text(
                'I Understand',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _promptController.dispose();
    playbackControl.stop();
    super.dispose();
  }

  void _generateMusic() async {
    if (_promptController.text.isEmpty) return;

    final music = await ref.read(musicGeneratorProvider(_promptController.text).future);
    setState(() {
      _currentMusic = music;
    });
    ref.read(currentMusicProvider.notifier).state = music;
  }

  @override
  Widget build(BuildContext context) {
    final isPlaying = ref.watch(isPlayingProvider);
    final currentMusic = ref.watch(currentMusicProvider);
    final playbackPosition = ref.watch(playbackPositionProvider);
    final duration = ref.watch(musicDurationProvider);

    return WillPopScope(
      onWillPop: () async {
        playbackControl.stop();
        ref.read(currentMusicProvider.notifier).state = null;
        ref.read(isPlayingProvider.notifier).state = false;
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('AI Music'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () async {
              playbackControl.stop();
              ref.read(currentMusicProvider.notifier).state = null;
              ref.read(isPlayingProvider.notifier).state = false;
              if (mounted) {
                Navigator.of(context).pop();
              }
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // 输入提示词
              TextField(
                controller: _promptController,
                decoration: InputDecoration(
                  hintText: 'Enter music prompt...',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: _generateMusic,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // 音乐播放卡片
              if (_currentMusic != null)
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        // 音乐信息
                        Text(
                          _currentMusic!.prompt,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),

                        // 进度条
                        playbackPosition.when(
                          data: (position) {
                            return duration.when(
                              data: (totalDuration) {
                                if (totalDuration == null) return const SizedBox();
                                return Column(
                                  children: [
                                    Slider(
                                      value: position.inSeconds.toDouble(),
                                      max: totalDuration.inSeconds.toDouble(),
                                      onChanged: (value) {
                                        playbackControl.seekTo(
                                              Duration(seconds: value.toInt()),
                                            );
                                      },
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 16),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(_formatDuration(position)),
                                          Text(_formatDuration(totalDuration)),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              },
                              loading: () => const SizedBox(),
                              error: (_, __) => const SizedBox(),
                            );
                          },
                          loading: () => const SizedBox(),
                          error: (_, __) => const SizedBox(),
                        ),

                        // 播放控制
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Icon(
                                isPlaying ? Icons.pause_circle : Icons.play_circle,
                                size: 48,
                              ),
                              onPressed: () {
                                if (isPlaying) {
                                  playbackControl.pause();
                                  ref.read(isPlayingProvider.notifier).state = false;
                                } else {
                                  if (currentMusic != null) {
                                    playbackControl.play(currentMusic);
                                    ref.read(isPlayingProvider.notifier).state = true;
                                  }
                                }
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$minutes:$seconds';
  }
} 