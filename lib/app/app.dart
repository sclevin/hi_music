import 'package:flutter/material.dart';
import 'package:hi_music/app/routers.dart';
import 'package:hi_music/app/theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class App extends ConsumerWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    return MaterialApp.router(
      theme: theme,
      routerConfig: _appRouter.config(),
    );
  }
}
