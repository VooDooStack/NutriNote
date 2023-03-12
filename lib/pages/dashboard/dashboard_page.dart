import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nutrinote/features/nutrition/widgets/organisms/nutrition_snapshot.dart';
import 'package:nutrinote/pages/dashboard/widgets/atoms/week_picker.dart';
import 'package:nutrinote/pages/dashboard/widgets/molecules/weekly_nutrition_challange.dart';
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
          NutritionSnapshot(),
          const WeeklyNutritionChallenge(),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.tertiaryContainer,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                FaIcon(FontAwesomeIcons.trophy, color: Theme.of(context).colorScheme.onTertiary),
                const SizedBox(width: 10),
                Text(
                  'You have passed 88% of users',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Theme.of(context).colorScheme.onTertiary,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
