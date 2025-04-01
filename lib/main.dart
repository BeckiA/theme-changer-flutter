import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_changer/providers/theme_provider.dart';
import 'package:theme_changer/theme/theme_store.dart';
import 'package:theme_changer/views/screens/home_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      title: 'Lyrics App',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeProvider.themeMode,
      home: const HomePage(),
    );
  }
}
