import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  final Function(int) onTap;

  BottomNavBar({required this.onTap});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0; // 组件内部管理的选中索引

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      shape: const CircularNotchedRectangle(),
      notchMargin: 12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                selectedIndex = 0; // 更新选中索引
              });
              widget.onTap(selectedIndex);
            },
            icon: const Icon(Icons.search_outlined),
            color: selectedIndex == 0 ? Colors.blue : Colors.black,
          ),

          const SizedBox(),

          IconButton(
            onPressed: () {
              setState(() {
                selectedIndex = 1; // 更新选中索引
              });
              widget.onTap(selectedIndex);
            },
            icon: const Icon(Icons.person_outline),
            color: selectedIndex == 1 ? Colors.blue : Colors.black,
          )
        ],
      ),
    );
  }
}