import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/chatglm_service.dart';
import 'dart:developer' as dev;

final chatGLMServiceProvider = Provider((ref) => ChatGLMService());

class WritingAssistantPage extends ConsumerStatefulWidget {
  const WritingAssistantPage({Key? key}) : super(key: key);

  @override
  ConsumerState<WritingAssistantPage> createState() => _WritingAssistantPageState();
}

class _WritingAssistantPageState extends ConsumerState<WritingAssistantPage> {
  final TextEditingController _promptController = TextEditingController();
  String _generatedContent = '';
  bool _isLoading = false;

  Future<void> _generateContent() async {
    if (_promptController.text.trim().isEmpty) return;

    setState(() {
      _isLoading = true;
      _generatedContent = ''; // 清空之前的内容
    });

    try {
      final chatGLMService = ref.read(chatGLMServiceProvider);
      dev.log('开始调用 API', name: 'WritingAssistant');
      
      final result = await chatGLMService.generateContent(_promptController.text);
      dev.log('API 返回结果: $result', name: 'WritingAssistant');

      setState(() {
        _generatedContent = result;
        _isLoading = false;
      });
    } catch (e, stackTrace) {
      dev.log(
        '生成内容错误',
        name: 'WritingAssistant',
        error: e,
        stackTrace: stackTrace,
      );
      
      setState(() {
        _isLoading = false;
      });
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('生成内容失败: ${e.toString()}'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 5),
          ),
        );
      }
    }
  }

  @override
  void dispose() {
    _promptController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI 写作助手'),
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
                hintText: '请输入写作提示...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => _promptController.clear(),
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _isLoading ? null : _generateContent,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: _isLoading
                  ? const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.white,
                      ),
                    )
                  : const Text(
                      '开始生成',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
            ),
            if (_generatedContent.isNotEmpty) ...[
              const SizedBox(height: 24),
              const Text(
                '生成结果',
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
                      SingleChildScrollView(
                        child: SelectableText(
                          _generatedContent,
                          style: const TextStyle(
                            fontSize: 14,
                            height: 1.5,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: IconButton(
                          icon: const Icon(Icons.copy),
                          onPressed: () {
                            Clipboard.setData(
                              ClipboardData(text: _generatedContent),
                            ).then((_) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('已复制到剪贴板'),
                                  duration: Duration(seconds: 2),
                                ),
                              );
                            });
                          },
                          tooltip: '复制内容',
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
    );
  }
} 