import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../services/chatglm_service.dart';
import 'dart:developer' as dev;

final chatGLMServiceProvider = Provider((ref) => ChatGLMService(ref));

class TranslationPage extends ConsumerStatefulWidget {
  const TranslationPage({super.key});

  @override
  ConsumerState<TranslationPage> createState() => _TranslationPageState();
}

class _TranslationPageState extends ConsumerState<TranslationPage> {
  final _sourceController = TextEditingController();
  final _targetController = TextEditingController();
  bool _isTranslating = false;
  String _detectedLanguage = 'Auto Detect';

  @override
  void dispose() {
    _sourceController.dispose();
    _targetController.dispose();
    super.dispose();
  }

  Future<void> _translate() async {
    if (_sourceController.text.trim().isEmpty) return;

    // 隐藏键盘
    FocusScope.of(context).unfocus();

    setState(() {
      _isTranslating = true;
    });

    try {
      final chatGLMService = ref.read(chatGLMServiceProvider);
      dev.log('Starting translation API call', name: 'Translation');
      
      // 构建翻译提示词
      final prompt = '''Please translate the following text to Chinese, only return the translation result:

${_sourceController.text}''';
      
      final result = await chatGLMService.generateContent(prompt);
      dev.log('Translation result: $result', name: 'Translation');

      setState(() {
        _targetController.text = result;
        // 根据输入内容判断源语言
        _detectedLanguage = _detectLanguage(_sourceController.text);
      });
    } catch (e, stackTrace) {
      dev.log(
        'Translation error',
        name: 'Translation',
        error: e,
        stackTrace: stackTrace,
      );
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Translation failed: ${e.toString()}'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 5),
          ),
        );
      }
    } finally {
      setState(() {
        _isTranslating = false;
      });
    }
  }

  String _detectLanguage(String text) {
    // 简单的语言检测逻辑
    final hasChineseChars = RegExp(r'[\u4e00-\u9fa5]').hasMatch(text);
    final hasJapaneseChars = RegExp(r'[\u3040-\u309F\u30A0-\u30FF]').hasMatch(text);
    
    if (hasChineseChars) return 'Chinese';
    if (hasJapaneseChars) return 'Japanese';
    return 'English'; // Default to English
  }

  void _clearText() {
    setState(() {
      _sourceController.clear();
      _targetController.clear();
      _detectedLanguage = 'Auto Detect';
    });
    // 清空时隐藏键盘
    FocusScope.of(context).unfocus();
  }

  void _swapText() {
    if (_targetController.text.isEmpty) return;
    
    setState(() {
      final temp = _sourceController.text;
      _sourceController.text = _targetController.text;
      _targetController.text = temp;
      // 更新检测到的语言
      _detectedLanguage = _detectLanguage(_sourceController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('AI Translator'),
          actions: [
            IconButton(
              icon: const Icon(Icons.history),
              onPressed: () {
                // TODO: 显示翻译历史
              },
            ),
          ],
        ),
        body: Column(
          children: [
            // 源语言输入区域
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade200,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _detectedLanguage,
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 14,
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.copy),
                            onPressed: _sourceController.text.isEmpty ? null : () {
                              Clipboard.setData(
                                ClipboardData(text: _sourceController.text),
                              ).then((_) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Copied to clipboard'),
                                    duration: Duration(seconds: 2),
                                  ),
                                );
                              });
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: _sourceController.text.isEmpty ? null : _clearText,
                          ),
                        ],
                      ),
                    ],
                  ),
                  TextField(
                    controller: _sourceController,
                    maxLines: 5,
                    minLines: 3,
                    decoration: const InputDecoration(
                      hintText: 'Enter text to translate',
                      border: InputBorder.none,
                    ),
                    onChanged: (text) {
                      setState(() {
                        _detectedLanguage = _detectLanguage(text);
                      });
                    },
                  ),
                ],
              ),
            ),
            
            // 翻译按钮
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.swap_vert),
                    onPressed: _targetController.text.isEmpty ? null : _swapText,
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: _sourceController.text.isEmpty || _isTranslating
                        ? null
                        : _translate,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                      foregroundColor: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: _isTranslating
                          ? const SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.white,
                              ),
                            )
                          : const Text('Translate'),
                    ),
                  ),
                ],
              ),
            ),
            
            // 翻译结果区域
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Chinese',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        if (_targetController.text.isNotEmpty)
                          IconButton(
                            icon: const Icon(Icons.copy),
                            onPressed: () {
                              Clipboard.setData(
                                ClipboardData(text: _targetController.text),
                              ).then((_) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Copied to clipboard'),
                                    duration: Duration(seconds: 2),
                                  ),
                                );
                              });
                            },
                          ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Expanded(
                      child: TextField(
                        controller: _targetController,
                        maxLines: null,
                        readOnly: true,
                        decoration: const InputDecoration(
                          hintText: 'Translation result',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
} 