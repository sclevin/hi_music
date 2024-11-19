import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hi_music/features/home/presentation/widgets/bottom_nav_bar.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: 80,
        height: 80,
        child: FloatingActionButton(
          onPressed: () {},
          shape: const OvalBorder(),
          child: const Icon(Icons.add),
        ),
      ),
      body: SizedBox(
        height: 300,
        child: Row(
          children: [],
        ),
      ),
      bottomNavigationBar: BottomNavBar(onTap:(index){}),
    );
  }
}
