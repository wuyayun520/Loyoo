import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../services/chatglm_service.dart';
import 'dart:developer' as dev;

final chatGLMServiceProvider = Provider((ref) => ChatGLMService(ref));

class WritingAssistantPage extends ConsumerStatefulWidget {
  const WritingAssistantPage({super.key});

  @override
  ConsumerState<WritingAssistantPage> createState() => _WritingAssistantPageState();
}

class _WritingAssistantPageState extends ConsumerState<WritingAssistantPage> {
  final TextEditingController _promptController = TextEditingController();
  final TextEditingController _resultController = TextEditingController();
  bool _isGenerating = false;

  Future<void> _generateContent() async {
    if (_promptController.text.trim().isEmpty) return;

    FocusScope.of(context).unfocus();

    setState(() {
      _isGenerating = true;
      _resultController.clear();
    });

    try {
      final chatGLMService = ref.read(chatGLMServiceProvider);
      dev.log('Starting API call', name: 'WritingAssistant');
      
      final result = await chatGLMService.generateContent(_promptController.text);
      dev.log('API returned result: $result', name: 'WritingAssistant');

      setState(() {
        _resultController.text = result;
      });
    } catch (e, stackTrace) {
      dev.log(
        'Content generation error',
        name: 'WritingAssistant',
        error: e,
        stackTrace: stackTrace,
      );
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Generation failed: ${e.toString()}'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 5),
          ),
        );
      }
    } finally {
      setState(() {
        _isGenerating = false;
      });
    }
  }

  @override
  void dispose() {
    _promptController.dispose();
    _resultController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('AI Writing Assistant'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _promptController,
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: 'Enter writing prompt...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      _promptController.clear();
                      FocusScope.of(context).unfocus();
                    },
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _isGenerating ? null : _generateContent,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: _isGenerating
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      )
                    : const Text(
                        'Start Generation',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
              ),
              if (_resultController.text.isNotEmpty) ...[
                const SizedBox(height: 24),
                const Text(
                  'Generated Result',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade50,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.purple.withOpacity(0.3)),
                    ),
                    child: Stack(
                      children: [
                        TextField(
                          controller: _resultController,
                          maxLines: null,
                          readOnly: true,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.zero,
                          ),
                          style: const TextStyle(
                            fontSize: 14,
                            height: 1.5,
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: IconButton(
                            icon: const Icon(Icons.copy),
                            onPressed: () {
                              Clipboard.setData(
                                ClipboardData(text: _resultController.text),
                              ).then((_) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Copied to clipboard'),
                                    duration: Duration(seconds: 2),
                                  ),
                                );
                              });
                            },
                            tooltip: 'Copy content',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
} 