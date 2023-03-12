import 'package:flutter/material.dart';

class WeeklyNutritionChallenge extends StatelessWidget {
  const WeeklyNutritionChallenge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const Divider(),
        const SizedBox(height: 20),
        Text.rich(
          TextSpan(
            text: 'Weekly Nutrition Challenge\n',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                ),
            children: [
              TextSpan(
                text: 'Complete your daily nutrition goals to earn points',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface.withOpacity(.5),
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ],
          ),
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            IntakeGoalCard(
              title: 'Fats',
              value: '',
              goalAmount: 10,
            ),
            IntakeGoalCard(
              title: 'Pro',
              value: '20',
              goalAmount: 150,
              completed: true,
            ),
            IntakeGoalCard(
              title: 'Fats',
              value: '',
              goalAmount: 10,
            ),
            IntakeGoalCard(
              title: 'Fats',
              value: '',
              goalAmount: 10,
            ),
            IntakeGoalCard(
              title: 'Fats',
              value: '',
              goalAmount: 10,
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Divider(),
        const SizedBox(height: 20),
      ],
    );
  }
}

class IntakeGoalCard extends StatelessWidget {
  final bool? completed;
  final String title;
  final String value;
  final double goalAmount;
  const IntakeGoalCard({
    super.key,
    this.completed,
    required this.title,
    required this.value,
    required this.goalAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Fats',
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: Theme.of(context).colorScheme.onSurface.withOpacity(.5),
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 8),
        completed == true
            ? CircleAvatar(
                radius: 18,
                backgroundColor: Theme.of(context).colorScheme.secondary,
                child: Icon(
                  Icons.check,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              )
            : CircularProgressIndicator(
                value: .5,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
                backgroundColor: Colors.grey.withOpacity(.35),
              ),
        const SizedBox(height: 8),
        Text(
          '50%',
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: completed == true ? Theme.of(context).colorScheme.secondary : Theme.of(context).colorScheme.onSurface.withOpacity(.5),
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
