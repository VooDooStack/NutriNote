import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  final void Function(int)? onTap;
  final Widget child;
  final String title;
  const MainPage({super.key, this.onTap, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: child,
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.fixedCircle,
        backgroundColor: Theme.of(context).bottomAppBarColor,
        color: Theme.of(context).colorScheme.primary,
        activeColor: Theme.of(context).colorScheme.primary,
        initialActiveIndex: 0,
        onTap: onTap,
        elevation: 8,
        items: [
          TabItem(
            icon: Icon(Icons.dashboard, color: Theme.of(context).colorScheme.primary),
            activeIcon: Icon(Icons.dashboard, color: Theme.of(context).appBarTheme.foregroundColor),
          ),
          TabItem(
            icon: Icon(Icons.folder_open, color: Theme.of(context).colorScheme.primary),
            activeIcon: Icon(Icons.folder_open, color: Theme.of(context).appBarTheme.foregroundColor),
          ),
          TabItem(
            icon: Icon(Icons.add, color: Theme.of(context).colorScheme.background),
            activeIcon: Icon(Icons.add, color: Theme.of(context).floatingActionButtonTheme.foregroundColor),
          ),
          TabItem(
            icon: Icon(Icons.group, color: Theme.of(context).colorScheme.primary),
            activeIcon: Icon(Icons.group, color: Theme.of(context).appBarTheme.foregroundColor),
          ),
          TabItem(
            icon: Icon(Icons.menu, color: Theme.of(context).colorScheme.primary),
            activeIcon: Icon(Icons.menu, color: Theme.of(context).appBarTheme.foregroundColor),
          )
        ],
      ),
    );
  }
}
