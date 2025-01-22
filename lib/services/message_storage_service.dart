import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/chat_message.dart';
import '../models/character.dart';

class MessageStorageService {
  static const String _messageKey = 'chat_messages';
  final SharedPreferences _prefs;

  MessageStorageService(this._prefs);

  Future<void> saveMessage(String characterId, ChatMessage message) async {
    print('保存消息 - 角色ID: $characterId, 消息: $message');
    final messages = await getMessages(characterId);
    messages.add(message);
    final messagesJson = messages.map((m) => {
      'role': m.role,
      'content': m.content,
      'timestamp': m.timestamp.toIso8601String(),
    }).toList();
    
    final allMessages = await getAllMessages();
    allMessages[characterId] = messagesJson;
    
    final jsonString = json.encode(allMessages);
    print('保存到 SharedPreferences 的数据: $jsonString');
    await _prefs.setString(_messageKey, jsonString);
  }

  Future<List<ChatMessage>> getMessages(String characterId) async {
    print('获取消息 - 角色ID: $characterId');
    final allMessages = await getAllMessages();
    final characterMessages = allMessages[characterId] ?? [];
    print('角色 $characterId 的原始消息: $characterMessages');
    
    final messages = characterMessages.map((m) => ChatMessage(
      role: m['role'],
      content: m['content'],
      timestamp: DateTime.parse(m['timestamp']),
    )).toList();
    print('角色 $characterId 的处理后消息: $messages');
    return messages;
  }

  Future<Map<String, List<dynamic>>> getAllMessages() async {
    final String? messagesJson = _prefs.getString(_messageKey);
    print('从 SharedPreferences 获取的原始数据: $messagesJson');
    if (messagesJson == null) return {};
    final Map<String, List<dynamic>> messages = Map<String, List<dynamic>>.from(json.decode(messagesJson));
    print('解析后的所有消息: $messages');
    return messages;
  }

  Future<ChatMessage?> getLastMessage(String characterId) async {
    print('获取最后一条消息 - 角色ID: $characterId');
    final messages = await getMessages(characterId);
    if (messages.isEmpty) return null;
    final lastMessage = messages.last;
    print('角色 $characterId 的最后一条消息: $lastMessage');
    return lastMessage;
  }

  Future<void> clearMessages(String characterId) async {
    print('清除消息 - 角色ID: $characterId');
    final allMessages = await getAllMessages();
    allMessages.remove(characterId);
    await _prefs.setString(_messageKey, json.encode(allMessages));
  }
} 