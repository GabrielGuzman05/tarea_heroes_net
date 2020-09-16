import 'package:json_annotation/json_annotation.dart';

part 'heroe_model.g.dart';

@JsonSerializable()
class HeroeModel {
  final String nombre;
  final String poder;
  final String icon;
  final String color;

  HeroeModel({
    this.nombre,
    this.poder,
    this.icon,
    this.color
  });

  factory HeroeModel.fromJson(Map<String, dynamic> json) =>
    _$HeroeModelFromJson(json);

  Map<String, dynamic> toJson() => _$HeroeModelToJson(this);
}