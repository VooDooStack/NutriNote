import 'package:flutter/material.dart';
import 'package:nutrinote/pages/dashboard/widgets/atoms/week_picker.dart';
import 'package:nutrinote/pages/dashboard/widgets/organisms/dashboard_header.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SafeArea(
            child: DashboardHeader(),
          ),
          const SizedBox(height: 20),
          const WeekPicker(),
          const SizedBox(height: 20),
          const Text.rich(
            TextSpan(
              text: 'calories left\n',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
              children: [
                TextSpan(
                  text: '1,099',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: 'cal',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              minHeight: 30,
              value: .5,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
              backgroundColor: Colors.grey.withOpacity(.35),
            ),
          ),
          const SizedBox(height: 20),
          Column(
            children: const [
              MacroNutrientListTile(
                selectionColor: Colors.green,
                title: 'Protein',
                value: '10g',
              ),
              MacroNutrientListTile(
                selectionColor: Colors.blue,
                title: 'Fats',
                value: '30g',
              ),
              MacroNutrientListTile(
                selectionColor: Colors.greenAccent,
                title: 'Carbs',
                value: '15g',
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MacroNutrientListTile extends StatelessWidget {
  final Color selectionColor;
  final String title;
  final String value;
  const MacroNutrientListTile({
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
      contentPadding: EdgeInsets.symmetric(horizontal: 10),
      minLeadingWidth: 15,
      horizontalTitleGap: 10,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey, width: .5),
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
