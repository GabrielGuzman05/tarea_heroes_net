import 'package:json_annotation/json_annotation.dart';

import 'package:tarea_heroes_net/src/models/heroe_model.dart';

part 'mis_heroes_model.g.dart';

@JsonSerializable()
class MisHeroesModel {
  final String nombre;
  final List<HeroeModel> heroes;

  MisHeroesModel({
    this.nombre,
    this.heroes
  });

  factory MisHeroesModel.fromJson(Map<String, dynamic> json) =>
    _$MisHeroesModelFromJson(json);

  Map<String, dynamic> toJson() => _$MisHeroesModelToJson(this);
}