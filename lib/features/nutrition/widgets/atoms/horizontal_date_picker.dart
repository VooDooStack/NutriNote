import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HorizontalDatePicker extends StatelessWidget {
  const HorizontalDatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 60,
        itemBuilder: (BuildContext context, int index) {
          final DateTime currentDate = DateTime.now().subtract(Duration(days: index));
          return Container(
            margin: const EdgeInsets.only(right: 20),
            width: MediaQuery.of(context).size.width * 0.2,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(DateFormat('LLL').format(currentDate), style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
                const Spacer(),
                Text('${currentDate.day}',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Theme.of(context).colorScheme.onSurface.withOpacity(.5))),
              ],
            ),
          );
        },
      ),
    );
  }
}
