import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/character.dart';
import 'chat_detail_page.dart';

class ChatPage extends ConsumerStatefulWidget {
  const ChatPage({super.key});

  @override
  ConsumerState<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends ConsumerState<ChatPage> {
  final List<Map<String, String>> _chatList = [
    {
      'id': 'home_assistant',
      'name': 'AI Assistant',
      'description': 'Your AI assistant, can answer any question',
      'time': 'Just now',
      'avatar': '🤖',
    },
    {
      'id': 'home_tutor',
      'name': 'Learning Tutor',
      'description': 'Course guidance, knowledge Q&A, study planning',
      'time': '30 mins ago',
      'avatar': '📚',
    },
    {
      'id': 'home_career',
      'name': 'Career Advisor',
      'description': 'Career planning, resume optimization, interview tips',
      'time': '1 hour ago',
      'avatar': '💼',
    },
    {
      'id': 'home_life',
      'name': 'Life Assistant',
      'description': 'Daily advice, emotional counseling, life planning',
      'time': '2 hours ago',
      'avatar': '🌟',
    },
    {
      'id': 'home_creative',
      'name': 'Creative Inspiration',
      'description': 'Brainstorming, creative design, artistic creation',
      'time': '3 hours ago',
      'avatar': '🎨',
    },
    {
      'id': 'home_health',
      'name': 'Health Advisor',
      'description': 'Health consultation, dietary advice, exercise guidance',
      'time': '4 hours ago',
      'avatar': '🏥',
    },
    {
      'id': 'home_travel',
      'name': 'Travel Planner',
      'description': 'Travel guides, itinerary planning, attraction recommendations',
      'time': '5 hours ago',
      'avatar': '✈️',
    },
  ];

  Character _createCharacter(Map<String, String> chat) {
    return Character(
      id: chat['id']!,
      name: chat['name']!,
      avatar: 'assets/images/7e63dea19fe551be1060a5bf5794f3b0a941a0cd3a42c80946afeedc0efd75e7.png',
      description: chat['description']!,
      age: 18,
      personality: 'Cheerful and empathetic',
      hobby: 'Reading, helping others solve problems',
      occupation: chat['name']!,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 8),
                itemCount: _chatList.length,
                itemBuilder: (context, index) {
                  final chat = _chatList[index];
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.03),
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      leading: Container(
                        width: 44,
                        height: 44,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          chat['avatar']!,
                          style: const TextStyle(fontSize: 24),
                        ),
                      ),
                      title: Text(
                        chat['name']!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          chat['description']!,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            chat['time']!,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[500],
                            ),
                          ),
                          const SizedBox(height: 4),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 14,
                            color: Colors.grey[400],
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatDetailPage(
                              character: _createCharacter(chat),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
} 