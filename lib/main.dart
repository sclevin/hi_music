import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app/app.dart';
import 'injection/injection.dart';

void main() {
  setup(); // 初始化依赖注入
  runApp(ProviderScope(child: App()));
}

