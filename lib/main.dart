import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:planets_flutter/core/startup/start_up_screen.dart';
import 'package:planets_flutter/main_widget.dart';

void main() {
  runApp(
    ProviderScope(
      child: StartUpScreen(
        builder: (context) => const MainWidget(),
      ),
    ),
  );
}
