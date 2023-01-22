import 'package:flutter/material.dart';

class NNTabBar extends StatelessWidget {
  final List<Widget> tabs;
  final void Function(int)? onTap;
  final List<Widget> children;
  const NNTabBar({Key? key, required this.tabs, this.onTap, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Theme.of(context).colorScheme.surface, borderRadius: BorderRadius.circular(8)),
            child: TabBar(
              labelColor: Theme.of(context).colorScheme.onPrimary,
              unselectedLabelColor: Theme.of(context).colorScheme.onBackground,
              labelStyle: Theme.of(context).textTheme.bodyLarge,
              indicator: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Theme.of(context).colorScheme.primary),
              tabs: tabs,
              onTap: onTap,
            ),
          ),
          Expanded(child: TabBarView(children: children))
        ],
      ),
    );
  }
}
