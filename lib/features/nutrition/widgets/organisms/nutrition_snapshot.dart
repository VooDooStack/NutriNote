import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:nutrinote/core/models/app_user_model.dart';
import 'package:nutrinote/core/models/nutrition_log_model.dart';
import 'package:nutrinote/core/state/app/app_bloc.dart';
import 'package:nutrinote/core/state/nutrition/nutrition_bloc.dart';
import 'package:nutrinote/pages/dashboard/widgets/atoms/MacroNutrietsProgressListTile.dart';

class NutritionSnapshot extends StatelessWidget {
  const NutritionSnapshot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppUser user = context.read<AppBloc>().state.user!;
    return BlocBuilder<NutritionBloc, NutritionState>(
      builder: (context, state) {
        double totalCalories = 0;
        double totalProtein = 0;
        double totalCarbs = 0;
        double totalFat = 0;
        final caloriesLeft = user.bmr - totalCalories;
        var formatter = NumberFormat('#,##,000');

        for (final NutritionLog nutritionLog in state.nutritionLogs) {
          totalCalories += nutritionLog.product.nutrients?.energyKcal ?? 0;
          totalProtein += nutritionLog.product.nutrients?.proteins ?? 0;
          totalCarbs += nutritionLog.product.nutrients?.carbohydrates ?? 0;
          totalFat += nutritionLog.product.nutrients?.fat ?? 0;
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                text: 'calories left\n',
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
                children: [
                  TextSpan(
                    text: formatter.format(caloriesLeft),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const TextSpan(
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
                value: totalCalories / user.bmr,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
                backgroundColor: Colors.grey.withOpacity(.35),
              ),
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                MacroNutrientProgressListTile(
                  selectionColor: Colors.green,
                  title: 'Protein',
                  value: '${totalProtein.round()}g',
                ),
                MacroNutrientProgressListTile(
                  selectionColor: Colors.blue,
                  title: 'Fats',
                  value: '${totalFat.round()}g',
                ),
                MacroNutrientProgressListTile(
                  selectionColor: Colors.greenAccent,
                  title: 'Carbs',
                  value: '${totalCarbs.round()}g',
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
