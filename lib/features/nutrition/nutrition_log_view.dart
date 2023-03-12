import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nutrinote/core/state/nutrition/nutrition_bloc.dart';

class NutritionLogsView extends StatelessWidget {
  const NutritionLogsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Container(
              height: 40,
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onSurface.withOpacity(.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TabBar(
                labelColor: Theme.of(context).primaryColor,
                unselectedLabelColor: Theme.of(context).colorScheme.onSurface.withOpacity(.5),
                labelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(),
                indicatorColor: Theme.of(context).primaryColor,
                splashBorderRadius: BorderRadius.circular(20),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.background,
                ),
                tabs: const [
                  Tab(text: 'Breakfast'),
                  Tab(text: 'Lunch'),
                  Tab(text: 'Dinner'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Column(
                    children: [
                      Expanded(
                        child: BlocBuilder<NutritionBloc, NutritionState>(
                          builder: (context, state) {
                            return ListView.builder(
                              itemCount: state.breakfast.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  height: 100,
                                  margin: const EdgeInsets.only(top: 20),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.onBackground.withOpacity(.1),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        state.breakfast[index].product.description ?? "No name",
                                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.primary),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  const Center(child: Text('Lunch')),
                  const Center(child: Text('Dinner')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
