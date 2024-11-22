// 1. 创建主题提供者
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeData>((ref) {
  return ThemeNotifier();
});

// 2. 定义主题状态
class ThemeNotifier extends StateNotifier<ThemeData> {
  ThemeNotifier() : super(darkTheme);

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    primaryColorLight: Colors.white,
    textTheme: TextTheme(
      bodySmall: TextStyle(color: Colors.black54),
      bodyMedium: TextStyle(color: Colors.black54),
      bodyLarge: TextStyle(color: Colors.black),
    ),
    // 其他自定义属性
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.black54,
    scaffoldBackgroundColor: Colors.grey,
    disabledColor: Colors.white,
    highlightColor: Colors.green,
    textTheme: TextTheme(
      labelMedium: TextStyle(color: Colors.white),
    ),
    // 其他自定义属性
  );

  void toggleTheme() {
    state = state == lightTheme ? darkTheme : lightTheme;
  }
}

// 3. 在应用中使用提供者