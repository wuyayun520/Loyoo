import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../chat/chat_detail_page.dart';
import '../../models/character.dart';
import '../../services/message_storage_service.dart';
import '../../services/character_service.dart';

class MessagePage extends ConsumerStatefulWidget {
  const MessagePage({super.key});

  @override
  ConsumerState<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends ConsumerState<MessagePage> {
  late MessageStorageService _messageService;
  late CharacterService _characterService;
  List<Map<String, dynamic>> _messages = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _characterService = CharacterService();
    _initServices();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  Future<void> _initServices() async {
    await _characterService.initialize();
    final prefs = await SharedPreferences.getInstance();
    _messageService = MessageStorageService(prefs);
    if (mounted) {
      _loadMessages();
    }
  }

  Future<void> _loadMessages() async {
    if (!mounted) return;
    
    setState(() {
      _isLoading = true;
    });

    // 创建一个超时计时器
    Future.delayed(const Duration(seconds: 10)).then((_) {
      if (mounted && _isLoading) {
        setState(() {
          _isLoading = false;
          _messages = [];
        });
      }
    });

    try {
      print('Loading messages...');
      final allMessages = await _messageService.getAllMessages();
      print('Got all messages: $allMessages');
      
      final List<Map<String, dynamic>> processedMessages = [];

      // Process messages for each character
      for (var characterId in allMessages.keys) {
        print('Processing messages for character $characterId');
        final messages = await _messageService.getMessages(characterId);
        print('Message list for character $characterId: $messages');
        
        if (messages.isNotEmpty) {
          final lastMessage = messages.last;
          print('Last message for character $characterId: $lastMessage');
          
          // Check if it's a numeric ID (character list) or name (home chat)
          final isCharacterChat = !characterId.startsWith('home_');
          print('Is character chat: $isCharacterChat');
          
          if (isCharacterChat) {
            // If chat is from character list (ID is numeric)
            final character = _characterService.getCharacter(characterId);
            print('Got character info: $character');
            
            if (character != null) {
              processedMessages.add({
                'characterId': characterId,
                'characterName': character.name,
                'characterAvatar': character.avatar,
                'characterDescription': character.description,
                'characterOccupation': character.occupation,
                'lastMessage': lastMessage.content,
                'lastMessageTime': lastMessage.timestamp.toIso8601String(),
              });
            }
          } else {
            // If chat is from home page (ID starts with home_)
            String characterName;
            String description;
            
            // Get name and description based on ID
            switch (characterId) {
              case 'home_assistant':
                characterName = 'AI Assistant';
                description = 'Your AI assistant for general questions and tasks';
                break;
              case 'home_tutor':
                characterName = 'Learning Tutor';
                description = 'Help with studying and learning new skills';
                break;
              case 'home_creative':
                characterName = 'Creative Assistant';
                description = 'Help with creative writing and artistic ideas';
                break;
              case 'home_travel':
                characterName = 'Travel Assistant';
                description = 'Travel tips and destination information';
                break;
              case 'home_entertainment':
                characterName = 'Entertainment Guide';
                description = 'Movie, music, and entertainment recommendations';
                break;
              case 'home_tech':
                characterName = 'Tech Helper';
                description = 'Technology and software assistance';
                break;
              case 'home_hobby':
                characterName = 'Hobby Explorer';
                description = 'Discover and learn about new hobbies';
                break;
              default:
                characterName = 'AI Assistant';
                description = 'Your AI assistant for general questions and tasks';
            }
            
            processedMessages.add({
              'characterId': characterId,
              'characterName': characterName,
              'characterAvatar': 'assets/images/7e63dea19fe551be1060a5bf5794f3b0a941a0cd3a42c80946afeedc0efd75e7.png',
              'characterDescription': description,
              'characterOccupation': characterName,
              'lastMessage': lastMessage.content,
              'lastMessageTime': lastMessage.timestamp.toIso8601String(),
            });
          }
        }
      }

      print('Processed message list: $processedMessages');

      // Sort messages by last message time
      processedMessages.sort((a, b) {
        final aTime = DateTime.parse(a['lastMessageTime']);
        final bTime = DateTime.parse(b['lastMessageTime']);
        return bTime.compareTo(aTime);
      });

      if (!mounted) return;

      setState(() {
        _messages = processedMessages;
        _isLoading = false;
      });
    } catch (e, stackTrace) {
      print('Error loading messages: $e');
      print('Error stack trace: $stackTrace');
      if (!mounted) return;
      
      setState(() {
        _messages = [];
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
        elevation: 0,
      ),
      body: RefreshIndicator(
        onRefresh: _loadMessages,
        child: _buildMessageList(),
      ),
    );
  }

  Widget _buildMessageList() {
    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (_messages.isEmpty) {
      return _buildEmptyState();
    }

    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      itemCount: _messages.length,
      itemBuilder: (context, index) {
        final message = _messages[index];
        final character = Character(
          id: message['characterId'],
          name: message['characterName'],
          avatar: message['characterAvatar'],
          description: message['characterDescription'],
          occupation: message['characterOccupation'],
          age: 18,
          personality: '开朗活泼，善解人意',
          hobby: '阅读，帮助他人解决问题',
        );
        final lastMessage = message['lastMessage'];
        final lastMessageTime = DateTime.parse(message['lastMessageTime']);

        return Card(
          elevation: 0,
          margin: const EdgeInsets.only(bottom: 8),
          child: ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatDetailPage(character: character),
                ),
              ).then((_) => _loadMessages());
            },
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            leading: CircleAvatar(
              backgroundImage: AssetImage(character.avatar),
              radius: 24,
            ),
            title: Row(
              children: [
                Expanded(
                  child: Text(
                    character.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Text(
                  _formatTime(lastMessageTime),
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                lastMessage,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 14,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildEmptyState() {
    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.3),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.message_outlined,
                size: 64,
                color: Colors.grey[400],
              ),
              const SizedBox(height: 16),
              Text(
                'No messages yet',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Start a conversation with the AI assistant, messages will appear here',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  String _formatTime(DateTime time) {
    final now = DateTime.now();
    final difference = now.difference(time);

    if (difference.inDays > 0) {
      if (difference.inDays > 7) {
        return '${time.month}-${time.day}';
      }
      return '${difference.inDays} days ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} hours ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} minutes ago';
    } else {
      return 'Just now';
    }
  }
} 