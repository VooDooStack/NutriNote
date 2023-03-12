import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'nutrition_model.g.dart';

@CopyWith()
@JsonSerializable()
class Nutrition extends Equatable {
  final String? id;
  final double? carbohydrates;
  final double? carbohydrates100G;
  final double? carbohydratesServing;
  final String? carbohydratesUnit;
  final double? carbohydratesValue;
  final double? carbonFootprintFromKnownIngredients100G;
  final double? carbonFootprintFromKnownIngredientsProduct;
  final double? carbonFootprintFromKnownIngredientsServing;
  final double? energy;
  final double? energyKcal;
  final double? energyKcal100G;
  final double? energyKcalServing;
  final String? energyKcalUnit;
  final double? energyKcalValue;
  final double? energyKcalValueComputed;
  final double? energyKj;
  final double? energyKj100G;
  final double? energyKjServing;
  final String? energyKjUnit;
  final double? energyKjValue;
  final double? energyKjValueComputed;
  final double? energy100G;
  final double? energyServing;
  final String? energyUnit;
  final double? energyValue;
  final double? fat;
  final double? fat100G;
  final double? fatServing;
  final String? fatUnit;
  final double? fatValue;
  final double? fiber;
  final double? fiber100G;
  final double? fiberServing;
  final double? fiberUnit;
  final double? fiberValue;
  final double? fruitsVegetablesNutsEstimateFromIngredients100G;
  final double? fruitsVegetablesNutsEstimateFromIngredientsServing;
  final double? novaGroup;
  final double? novaGroup100G;
  final double? novaGroupServing;
  final double? nutritionScoreFr;
  final double? nutritionScoreFr100G;
  final double? proteins;
  final double? proteins100G;
  final double? proteinsServing;
  final double? proteinsUnit;
  final double? proteinsValue;
  final double? salt;
  final double? salt100G;
  final double? saltServing;
  final double? saltUnit;
  final double? saltValue;
  final double? saturatedFat;
  final double? saturatedFat100G;
  final double? saturatedFatServing;
  final double? saturatedFatUnit;
  final double? saturatedFatValue;
  final double? sodium;
  final double? sodium100G;
  final double? sodiumServing;
  final double? sodiumUnit;
  final double? sodiumValue;
  final double? sugars;
  final double? sugars100G;
  final double? sugarsServing;
  final double? sugarsUnit;
  final double? sugarsValue;

  Nutrition({
    this.id,
    this.carbohydrates,
    this.carbohydrates100G,
    this.carbohydratesServing,
    this.carbohydratesUnit,
    this.carbohydratesValue,
    this.carbonFootprintFromKnownIngredients100G,
    this.carbonFootprintFromKnownIngredientsProduct,
    this.carbonFootprintFromKnownIngredientsServing,
    this.energy,
    this.energyKcal,
    this.energyKcal100G,
    this.energyKcalServing,
    this.energyKcalUnit,
    this.energyKcalValue,
    this.energyKcalValueComputed,
    this.energyKj,
    this.energyKj100G,
    this.energyKjServing,
    this.energyKjUnit,
    this.energyKjValue,
    this.energyKjValueComputed,
    this.energy100G,
    this.energyServing,
    this.energyUnit,
    this.energyValue,
    this.fat,
    this.fat100G,
    this.fatServing,
    this.fatUnit,
    this.fatValue,
    this.fiber,
    this.fiber100G,
    this.fiberServing,
    this.fiberUnit,
    this.fiberValue,
    this.fruitsVegetablesNutsEstimateFromIngredients100G,
    this.fruitsVegetablesNutsEstimateFromIngredientsServing,
    this.novaGroup,
    this.novaGroup100G,
    this.novaGroupServing,
    this.nutritionScoreFr,
    this.nutritionScoreFr100G,
    this.proteins,
    this.proteins100G,
    this.proteinsServing,
    this.proteinsUnit,
    this.proteinsValue,
    this.salt,
    this.salt100G,
    this.saltServing,
    this.saltUnit,
    this.saltValue,
    this.saturatedFat,
    this.saturatedFat100G,
    this.saturatedFatServing,
    this.saturatedFatUnit,
    this.saturatedFatValue,
    this.sodium,
    this.sodium100G,
    this.sodiumServing,
    this.sodiumUnit,
    this.sodiumValue,
    this.sugars,
    this.sugars100G,
    this.sugarsServing,
    this.sugarsUnit,
    this.sugarsValue,
  });

  @override
  List<Object?> get props => [
        id,
        carbohydrates,
        carbohydrates100G,
        carbohydratesServing,
        carbohydratesUnit,
        carbohydratesValue,
        carbonFootprintFromKnownIngredients100G,
        carbonFootprintFromKnownIngredientsProduct,
        carbonFootprintFromKnownIngredientsServing,
        energy,
        energyKcal,
        energyKcal100G,
        energyKcalServing,
        energyKcalUnit,
        energyKcalValue,
        energyKcalValueComputed,
        energyKj,
        energyKj100G,
        energyKjServing,
        energyKjUnit,
        energyKjValue,
        energyKjValueComputed,
        energy100G,
        energyServing,
        energyUnit,
        energyValue,
        fat,
        fat100G,
        fatServing,
        fatUnit,
        fatValue,
        fiber,
        fiber100G,
        fiberServing,
        fiberUnit,
        fiberValue,
        fruitsVegetablesNutsEstimateFromIngredients100G,
        fruitsVegetablesNutsEstimateFromIngredientsServing,
        novaGroup,
        novaGroup100G,
        novaGroupServing,
        nutritionScoreFr,
        nutritionScoreFr100G,
        proteins,
        proteins100G,
        proteinsServing,
        proteinsUnit,
        proteinsValue,
        salt,
        salt100G,
        saltServing,
        saltUnit,
        saltValue,
        saturatedFat,
        saturatedFat100G,
        saturatedFatServing,
        saturatedFatUnit,
        saturatedFatValue,
        sodium,
        sodium100G,
        sodiumServing,
        sodiumUnit,
        sodiumValue,
        sugars,
        sugars100G,
        sugarsServing,
        sugarsUnit,
        sugarsValue,
      ];

  factory Nutrition.fromJson(Map<String, dynamic> json) => _$NutritionFromJson(json);
  Map<String, dynamic> toJson() => _$NutritionToJson(this);
}
