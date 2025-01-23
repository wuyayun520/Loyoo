import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'translation_page.dart';
import 'writing_assistant_page.dart';
import 'image_generation_page.dart';
import 'ai_music_page.dart';

class ToolsPage extends ConsumerWidget {
  const ToolsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tools = [
      {
        'name': 'AI Writing Assistant',
        'icon': Icons.edit_note,
        'color': Colors.blue.shade50,
        'iconColor': Colors.blue,
      },
      {
        'name': 'AI Translator',
        'icon': Icons.translate,
        'color': Colors.green.shade50,
        'iconColor': Colors.green,
      },
      {
        'name': 'AI Image Generator',
        'icon': Icons.image_search,
        'color': Colors.purple.shade50,
        'iconColor': Colors.purple,
      },
      {
        'name': 'AI Music',
        'icon': Icons.music_note,
        'color': Colors.pink.shade50,
        'iconColor': Colors.pink,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('AI Toolbox'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.85,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: tools.length,
        itemBuilder: (context, index) {
          final tool = tools[index];
          return Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () {
                if (tool['name'] == 'AI Music') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AIMusicPage(),
                    ),
                  );
                } else {
                  switch (tool['name']) {
                    case 'AI Writing Assistant':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WritingAssistantPage(),
                        ),
                      );
                      break;
                    case 'AI Translator':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TranslationPage(),
                        ),
                      );
                      break;
                    case 'AI Image Generator':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ImageGenerationPage(),
                        ),
                      );
                      break;
                  }
                }
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: tool['color'] as Color,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        tool['icon'] as IconData,
                        size: 28,
                        color: tool['iconColor'] as Color,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      tool['name'] as String,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
} 