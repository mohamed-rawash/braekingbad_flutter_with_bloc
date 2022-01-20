import 'package:bloc/bloc.dart';
import 'package:breaking_flutter/businees_logic/bloc/bloc_observer.dart';
import 'package:flutter/material.dart';

import 'app_router.dart';

void main() {
  BlocOverrides.runZoned(
    (){},
    blocObserver: SimpleBlocObserver(),
  );
  runApp(const BreakingBadApp());
}

class BreakingBadApp extends StatelessWidget {
   const BreakingBadApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter().generateRoute,
    );
  }
}
