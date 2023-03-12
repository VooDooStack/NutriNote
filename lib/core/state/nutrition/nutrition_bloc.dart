import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:nutrinote/core/models/nutrition_log_model.dart';
import 'package:nutrinote/core/repository/nutrition_repository.dart';

part 'nutrition_event.dart';
part 'nutrition_state.dart';

class NutritionBloc extends Bloc<NutritionEvent, NutritionState> {
  final NutritionRepository nutritionRepository;
  NutritionBloc({required this.nutritionRepository})
      : super(
          const NutritionState(
            nutritionLogs: [],
            breakfast: [],
            lunch: [],
            dinner: [],
          ),
        ) {
    on<LoadNutritionLogs>(onLoadNutrition);
    on<SortNutritionLogs>(onSortNutrition);
  }

  onLoadNutrition(LoadNutritionLogs event, Emitter<NutritionState> emit) async {
    final nutrition = await nutritionRepository.getNutritionLog();
    emit(state.copyWith(nutritionLogs: nutrition));
    add(const SortNutritionLogs());
  }

  onSortNutrition(SortNutritionLogs event, Emitter<NutritionState> emit) {
    final nutrition = state.nutritionLogs;

    final breakfast = nutrition.where((element) => (element.createdAt ?? DateTime.now()).hour < 12).toList();
    final lunch =
        nutrition.where((element) => (element.createdAt ?? DateTime.now()).hour >= 12 && (element.createdAt ?? DateTime.now()).hour < 17).toList();
    final dinner = nutrition.where((element) => (element.createdAt ?? DateTime.now()).hour >= 17).toList();

    emit(state.copyWith(breakfast: breakfast, lunch: lunch, dinner: dinner));
  }
}
