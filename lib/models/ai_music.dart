class AIMusic {
  final String id;
  final String prompt;
  final String url;
  final bool isPlaying;

  AIMusic({
    required this.id,
    required this.prompt,
    required this.url,
    this.isPlaying = false,
  });

  AIMusic copyWith({
    String? id,
    String? prompt,
    String? url,
    bool? isPlaying,
  }) {
    return AIMusic(
      id: id ?? this.id,
      prompt: prompt ?? this.prompt,
      url: url ?? this.url,
      isPlaying: isPlaying ?? this.isPlaying,
    );
  }
} 