import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_state_app/core/widgets/main_wrapper.dart';
import 'package:real_state_app/features/fearture_one/presentation_layer/blocs/simpsons_bloc.dart';

import 'package:real_state_app/splash_screen.dart';

import 'locator.dart';

void main() async {
  // init locator
  await setup();
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SimpsonsBloc>(
      create: (_) => locator<SimpsonsBloc>(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
