import 'package:breaking_flutter/presentation/screens/character_details_screen.dart';
import 'package:breaking_flutter/presentation/screens/characters_screen.dart';
import 'package:breaking_flutter/uitls/constance/strings.dart';
import 'package:flutter/material.dart';

class AppRouter{
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(builder: (_) => const CharactersScreen());
      case characterDetailsScreen:
        return MaterialPageRoute(builder: (_) => const CharacterDetailsScreen());
    }
  }
}