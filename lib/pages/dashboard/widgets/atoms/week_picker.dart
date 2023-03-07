import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WeekPicker extends StatelessWidget {
  const WeekPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime nowFiveDaysAgo = DateTime.now().add(const Duration(days: -5));
    DateTime now = DateTime.now();
    return Row(
      children: [
        for (int i = 0; i < 7; i++)
          Expanded(
            child: Column(
              children: [
                //week day text (mon - sun)
                Text(
                  '${DateFormat('E').format(nowFiveDaysAgo.add(Duration(days: i)))}',
                ),
                const SizedBox(height: 5),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: nowFiveDaysAgo.add(Duration(days: i)).isBefore(now)
                        ? Colors.grey.withOpacity(.35)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      !nowFiveDaysAgo.add(Duration(days: i)).isBefore(now)
                          ? BoxShadow(
                              color: Colors.grey.withOpacity(.35),
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            )
                          : const BoxShadow(
                              color: Colors.transparent,
                              blurRadius: 0,
                              offset: Offset(0, 0),
                            ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      nowFiveDaysAgo.add(Duration(days: i)).day.toString(),
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: i == DateTime.now().weekday
                                ? Theme.of(context).colorScheme.secondary
                                : Theme.of(context).colorScheme.onSurface,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
