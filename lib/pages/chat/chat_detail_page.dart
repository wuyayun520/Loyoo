import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../models/chat_message.dart';
import '../../models/character.dart';
import '../../services/chatglm_service.dart';
import '../../services/balance_service.dart';
import '../../services/message_storage_service.dart';
import '../profile/recharge_page.dart';
import '../profile/subscription_page.dart';
import '../../providers/membership_provider.dart';

// 添加 Provider
final chatGLMServiceProvider = Provider((ref) => ChatGLMService(ref));

class ChatDetailPage extends ConsumerStatefulWidget {
  final Character character;

  const ChatDetailPage({
    super.key,
    required this.character,
  });

  @override
  ConsumerState<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends ConsumerState<ChatDetailPage> {
  late final ChatGLMService _chatService;
  late final BalanceService _balanceService;
  late final MessageStorageService _messageStorage;
  final _messages = <ChatMessage>[];
  final _textController = TextEditingController();
  final _scrollController = ScrollController();
  final _focusNode = FocusNode();

  bool _isLoading = false;
  static const int _costPerMessage = 5; // 每条消息消耗的金币数

  @override
  void initState() {
    super.initState();
    _chatService = ref.read(chatGLMServiceProvider);
    _initServices();
  }

  Future<void> _initServices() async {
    final prefs = await SharedPreferences.getInstance();
    _balanceService = BalanceService(prefs);
    _messageStorage = MessageStorageService(prefs);
    
    // 加载历史消息
    await _loadMessages();
  }

  Future<void> _loadMessages() async {
    final savedMessages = await _messageStorage.getMessages(widget.character.id);
    if (mounted) {
      setState(() {
        _messages.addAll(savedMessages);
      });
    }
    
    if (savedMessages.isEmpty) {
      // 如果没有历史消息，添加欢迎消息
      final welcomeMessage = ChatMessage(
        role: 'assistant',
        content: 'Hello! I am ${widget.character.name}, ${widget.character.occupation}.'
                'My personality is ${widget.character.personality}.'
                '${widget.character.description} Let\'s start chatting!',
        timestamp: DateTime.now(),
      );
      setState(() {
        _messages.add(welcomeMessage);
      });
      await _messageStorage.saveMessage(widget.character.id, welcomeMessage);
    }
  }

  @override
  void dispose() {
    _textController.dispose();
    _scrollController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(widget.character.avatar),
                radius: 16,
              ),
              const SizedBox(width: 8),
              Text(widget.character.name),
            ],
          ),
          elevation: 0,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                padding: const EdgeInsets.all(16),
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  final message = _messages[index];
                  return _MessageBubble(
                    message: message,
                    isUser: message.role == 'user',
                    avatar: message.role == 'user' 
                        ? null 
                        : widget.character.avatar,
                  );
                },
              ),
            ),
            if (_isLoading)
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircularProgressIndicator(),
              ),
            _buildInputArea(),
          ],
        ),
      ),
    );
  }

  Widget _buildInputArea() {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 5,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    color: Colors.grey.shade300,
                    width: 1,
                  ),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 12),
                    Expanded(
                      child: TextField(
                        controller: _textController,
                        focusNode: _focusNode,
                        decoration: const InputDecoration(
                          hintText: 'Enter message...',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 12,
                          ),
                        ),
                        maxLines: 4,
                        minLines: 1,
                        textInputAction: TextInputAction.send,
                        onSubmitted: (_) => _sendMessage(),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: _isLoading ? null : _sendMessage,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: _isLoading 
                                ? Colors.grey.shade300 
                                : Theme.of(context).primaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.send,
                            color: _isLoading ? Colors.grey : Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 4),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _sendMessage() async {
    final userMessage = _textController.text.trim();
    if (userMessage.isEmpty) return;

    // 检查会员状态
    final membershipState = ref.read(membershipProvider);
    if (!membershipState.isValid) {
      // 非会员需要检查金币余额
      final balance = await _balanceService.getBalance();
      if (balance < _costPerMessage) {
        if (mounted) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Insufficient Balance'),
              content: Text(
                'You need $_costPerMessage coins to send a message.\n'
                'Current balance: $balance coins\n\n'
                'Would you like to recharge or upgrade to premium membership?'
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RechargePage(),
                      ),
                    );
                  },
                  child: const Text('Recharge'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SubscriptionPage(),
                      ),
                    );
                  },
                  child: const Text('Upgrade to Premium'),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel'),
                ),
              ],
            ),
          );
        }
        return;
      }
    }

    final newUserMessage = ChatMessage(
      role: 'user',
      content: userMessage,
      timestamp: DateTime.now(),
    );

    setState(() {
      _messages.add(newUserMessage);
      _isLoading = true;
      _textController.clear();
    });

    await _messageStorage.saveMessage(widget.character.id, newUserMessage);
    _scrollToBottom();

    try {
      final response = await _chatService.chat(_messages
          .map((msg) => {'role': msg.role, 'content': msg.content})
          .toList());

      // 如果不是会员，扣除金币
      if (!ref.read(membershipProvider).isValid) {
        final deductSuccess = await _balanceService.deductBalance(_costPerMessage);
        if (!deductSuccess) {
          throw Exception('Failed to deduct balance');
        }
      }

      if (mounted) {
        final assistantMessage = ChatMessage(
          role: 'assistant',
          content: response,
          timestamp: DateTime.now(),
        );

        setState(() {
          _messages.add(assistantMessage);
          _isLoading = false;
        });

        await _messageStorage.saveMessage(widget.character.id, assistantMessage);
        _scrollToBottom();
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to send message: $e'),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    }
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }
}

class _MessageBubble extends StatelessWidget {
  final ChatMessage message;
  final bool isUser;
  final String? avatar;

  const _MessageBubble({
    required this.message,
    required this.isUser,
    this.avatar,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isUser) ...[
            CircleAvatar(
              backgroundImage: avatar != null ? AssetImage(avatar!) : null,
              child: avatar == null ? const Icon(Icons.person) : null,
              radius: 16,
            ),
            const SizedBox(width: 8),
          ],
          Flexible(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: isUser
                    ? Theme.of(context).primaryColor
                    : Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                message.content,
                style: TextStyle(
                  color: isUser ? Colors.white : Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          if (isUser) const SizedBox(width: 24),
        ],
      ),
    );
  }
} 