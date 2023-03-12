import 'package:flutter/material.dart';

class MacroNutrientProgressListTile extends StatelessWidget {
  final Color selectionColor;
  final String title;
  final String value;
  const MacroNutrientProgressListTile({
    super.key,
    required this.selectionColor,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      visualDensity: VisualDensity.compact,
      contentPadding: const EdgeInsets.symmetric(horizontal: 10),
      minLeadingWidth: 15,
      horizontalTitleGap: 10,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.grey, width: .5),
        borderRadius: BorderRadius.circular(5),
      ),
      leading: Container(
        height: 30,
        width: 10,
        decoration: BoxDecoration(
          color: selectionColor,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
      trailing: Text(
        value,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
    );
  }
}
