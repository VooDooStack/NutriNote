part of 'nutrition_bloc.dart';

abstract class NutritionEvent extends Equatable {
  const NutritionEvent();
}

class LoadNutritionLogs extends NutritionEvent {
  const LoadNutritionLogs();
  @override
  List<Object> get props => [];
}

class SortNutritionLogs extends NutritionEvent {
  const SortNutritionLogs();
  @override
  List<Object> get props => [];
}
