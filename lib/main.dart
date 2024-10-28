import 'package:flutter/material.dart';
import 'package:flutter_youtube/core/notifiers.dart';
import 'package:flutter_youtube/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: isDarModeNotifier,
        builder: (context, isDark, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              brightness: isDark ? Brightness.dark : Brightness.light,
              useMaterial3: true,
            ),
            home: WidgetTree(),
          );
        });
  }
}
