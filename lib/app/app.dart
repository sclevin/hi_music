import 'package:flutter/material.dart';
import 'package:hi_music/app/theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    return MaterialApp(
      theme: theme,
      home: Scaffold(
        appBar: AppBar(
          title: Text('动态主题示例'),
          actions: [
            IconButton(
              icon: Icon(Icons.brightness_6),
              onPressed: () {
                ref.read(themeProvider.notifier).toggleTheme();
              },
            ),
          ],
        ),
        body: Center(child: Text('Hello, World!')),
      ),
    );
  }
}
