import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../services/chatglm_service.dart';
import 'dart:developer' as dev;
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:dio/dio.dart';
import 'package:permission_handler/permission_handler.dart';

final chatGLMServiceProvider = Provider((ref) => ChatGLMService(ref));

class ImageGenerationPage extends ConsumerStatefulWidget {
  const ImageGenerationPage({super.key});

  @override
  ConsumerState<ImageGenerationPage> createState() => _ImageGenerationPageState();
}

class _ImageGenerationPageState extends ConsumerState<ImageGenerationPage> {
  final _promptController = TextEditingController();
  bool _isGenerating = false;
  String? _generatedImageUrl;
  String _selectedStyle = 'Realistic';

  final _imageStyles = [
    {'name': 'Realistic', 'icon': Icons.photo_camera, 'prompt': 'realistic style '},
    {'name': 'Anime', 'icon': Icons.animation, 'prompt': 'anime style '},
    {'name': 'Oil Painting', 'icon': Icons.palette, 'prompt': 'oil painting style '},
    {'name': 'Sketch', 'icon': Icons.draw, 'prompt': 'sketch style '},
    {'name': 'Pixel Art', 'icon': Icons.grid_on, 'prompt': 'pixel art style '},
    {'name': 'Watercolor', 'icon': Icons.water_drop, 'prompt': 'watercolor style '},
  ];

  @override
  void dispose() {
    _promptController.dispose();
    super.dispose();
  }

  Future<void> _generateImage() async {
    if (_promptController.text.trim().isEmpty) return;

    // 隐藏键盘
    FocusScope.of(context).unfocus();

    setState(() {
      _isGenerating = true;
      _generatedImageUrl = null;
    });

    try {
      final chatGLMService = ref.read(chatGLMServiceProvider);
      dev.log('Starting image generation API', name: 'ImageGeneration');

      // 获取选中的风格提示词
      final stylePrompt = _imageStyles
          .firstWhere((style) => style['name'] == _selectedStyle)['prompt'] as String;
      
      // 构建完整的提示词
      final prompt = '$stylePrompt${_promptController.text}';
      
      // 直接调用图片生成 API
      final imageUrl = await chatGLMService.generateImage(prompt);
      dev.log('Generated image URL: $imageUrl', name: 'ImageGeneration');

      setState(() {
        _generatedImageUrl = imageUrl;
      });
    } catch (e, stackTrace) {
      dev.log(
        'Image generation error',
        name: 'ImageGeneration',
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

  Future<void> _saveImage() async {
    if (_generatedImageUrl == null) return;

    try {
      // 请求存储权限
      final status = await Permission.storage.request();
      if (!status.isGranted) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Storage permission required to save image')),
          );
        }
        return;
      }

      // 显示加载指示器
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Saving image...')),
        );
      }

      // 下载图片
      final response = await Dio().get(
        _generatedImageUrl!,
        options: Options(responseType: ResponseType.bytes),
      );

      // 保存到相册
      final result = await ImageGallerySaver.saveImage(
        Uint8List.fromList(response.data),
        quality: 100,
        name: "AI_Generated_${DateTime.now().millisecondsSinceEpoch}",
      );

      if (mounted) {
        if (result['isSuccess']) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Image saved to gallery'),
              backgroundColor: Colors.green,
            ),
          );
        } else {
          throw Exception('Save failed');
        }
      }
    } catch (e) {
      dev.log('Error saving image', error: e);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to save image: ${e.toString()}'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('AI Image Generator'),
        ),
        body: Column(
          children: [
            // 风格选择
            Container(
              height: 100,
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: _imageStyles.length,
                itemBuilder: (context, index) {
                  final style = _imageStyles[index];
                  final isSelected = style['name'] == _selectedStyle;
                  
                  return Container(
                    width: 80,
                    margin: const EdgeInsets.only(right: 12),
                    child: InkWell(
                      onTap: _isGenerating ? null : () {
                        setState(() {
                          _selectedStyle = style['name'] as String;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey.shade200,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              style['icon'] as IconData,
                              color: isSelected ? Colors.white : Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            style['name'] as String,
                            style: TextStyle(
                              color: isSelected
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey.shade600,
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            // 提示词输入
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Image Description',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: _promptController,
                    maxLines: 3,
                    decoration: InputDecoration(
                      hintText: 'Enter detailed image description...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      suffixIcon: _promptController.text.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                setState(() {
                                  _promptController.clear();
                                });
                                FocusScope.of(context).unfocus();
                              },
                            )
                          : null,
                    ),
                    onChanged: (text) {
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),

            // 生成按钮
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _promptController.text.isEmpty || _isGenerating
                      ? null
                      : _generateImage,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: _isGenerating
                      ? const SizedBox(
                          width: 24,
                          height: 24,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.white,
                          ),
                        )
                      : const Text('Generate Image'),
                ),
              ),
            ),

            // 生成结果
            Expanded(
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: _isGenerating
                    ? const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircularProgressIndicator(),
                            SizedBox(height: 16),
                            Text('Generating image, please wait...'),
                          ],
                        ),
                      )
                    : _generatedImageUrl != null
                        ? Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  _generatedImageUrl!,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: double.infinity,
                                  loadingBuilder: (context, child, loadingProgress) {
                                    if (loadingProgress == null) return child;
                                    return Center(
                                      child: CircularProgressIndicator(
                                        value: loadingProgress.expectedTotalBytes != null
                                            ? loadingProgress.cumulativeBytesLoaded /
                                                loadingProgress.expectedTotalBytes!
                                            : null,
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Positioned(
                                right: 8,
                                bottom: 8,
                                child: Row(
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.refresh),
                                      onPressed: _generateImage,
                                      color: Colors.white,
                                      style: IconButton.styleFrom(
                                        backgroundColor: Colors.black54,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    IconButton(
                                      icon: const Icon(Icons.download),
                                      onPressed: _saveImage,
                                      color: Colors.white,
                                      style: IconButton.styleFrom(
                                        backgroundColor: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        : Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.image_search,
                                  size: 64,
                                  color: Colors.grey.shade400,
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  'Enter description to generate image',
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ],
                            ),
                          ),
              ),
            ),
          ],
        ),
      ),
    );
  }
} 