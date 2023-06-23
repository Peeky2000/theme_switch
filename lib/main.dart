import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:themeswitch/myhomepage.dart';
import 'package:themeswitch/providers/theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(
      builder: (context, value, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
              brightness: Brightness.light,
              textTheme: const TextTheme(
                  displaySmall: TextStyle(
                color: Colors.red,
              ))), // Provide light theme
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            textTheme: const TextTheme(
              displaySmall: TextStyle(
                color: Colors.green,
              ),
            ),
          ),
          themeMode: value.mode,
          home: const MyHomePage(),
        );
      },
    );
  }
}
