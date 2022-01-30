import 'package:breaking_flutter/businees_logic/bloc/cubit/characters.dart';
import 'package:breaking_flutter/presentation/screens/character_details_screen.dart';
import 'package:breaking_flutter/presentation/screens/characters_screen.dart';
import 'package:breaking_flutter/uitls/constance/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter{
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => CharactersCubit(),
            child: const CharactersScreen(),
          ),
        );
      case characterDetailsScreen:
        return MaterialPageRoute(builder: (_) => const CharacterDetailsScreen());
    }
  }
}