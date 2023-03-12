part of 'nutrition_bloc.dart';

class NutritionState extends Equatable {
  final List<NutritionLog> nutritionLogs;
  final List<NutritionLog> breakfast;
  final List<NutritionLog> lunch;
  final List<NutritionLog> dinner;

  const NutritionState({
    required this.breakfast,
    required this.lunch,
    required this.dinner,
    required this.nutritionLogs,
  });

  @override
  List<Object?> get props => [nutritionLogs, breakfast, lunch, dinner];

  NutritionState copyWith({
    List<NutritionLog>? nutritionLogs,
    List<NutritionLog>? breakfast,
    List<NutritionLog>? lunch,
    List<NutritionLog>? dinner,
  }) {
    return NutritionState(
      nutritionLogs: nutritionLogs ?? this.nutritionLogs,
      breakfast: breakfast ?? this.breakfast,
      lunch: lunch ?? this.lunch,
      dinner: dinner ?? this.dinner,
    );
  }
}
