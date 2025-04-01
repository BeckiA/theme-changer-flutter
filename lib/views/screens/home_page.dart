import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_changer/providers/theme_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lyrics App'),
        actions: [
          IconButton(
            icon: Icon(themeProvider.themeMode == ThemeMode.dark
                ? Icons.dark_mode
                : Icons.light_mode),
            onPressed: () {
              themeProvider.toggleTheme();
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Your Lyrics Here',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
