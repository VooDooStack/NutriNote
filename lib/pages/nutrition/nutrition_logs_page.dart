import 'package:flutter/material.dart';
import 'package:nutrinote/features/nutrition/nutrition_log_view.dart';
import 'package:nutrinote/features/nutrition/widgets/atoms/horizontal_date_picker.dart';

class LogsPage extends StatelessWidget {
  const LogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nutrition\nLogs',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const HorizontalDatePicker(),
            const SizedBox(height: 20),
            const NutritionLogsView(),
          ],
        ),
      ),
    );
  }
}
