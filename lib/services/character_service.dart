import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/character.dart';

class CharacterService {
  static Map<String, Character>? _characters;

  Future<void> initialize() async {
    if (_characters != null) return;

    final String jsonString = await rootBundle.loadString('assets/data/characters.json');
    final Map<String, dynamic> jsonData = json.decode(jsonString);
    final List<dynamic> charactersList = jsonData['characters'];

    _characters = {
      for (var char in charactersList)
        char['id']: Character(
          id: char['id'],
          name: char['name'],
          description: char['description'],
          avatar: char['avatar'],
          occupation: char['occupation'],
          age: char['age'],
          personality: char['personality'],
          hobby: char['hobby'],
        )
    };
  }

  Character? getCharacter(String id) {
    return _characters?[id];
  }

  List<Character> getAllCharacters() {
    return _characters?.values.toList() ?? [];
  }
} 