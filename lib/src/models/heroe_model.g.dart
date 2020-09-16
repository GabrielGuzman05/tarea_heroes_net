// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heroe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HeroeModel _$HeroeModelFromJson(Map<String, dynamic> json) {
  return HeroeModel(
    nombre: json['nombre'] as String,
    poder: json['poder'] as String,
    icon: json['icon'] as String,
    color: json['color'] as String,
  );
}

Map<String, dynamic> _$HeroeModelToJson(HeroeModel instance) =>
    <String, dynamic>{
      'nombre': instance.nombre,
      'poder': instance.poder,
      'icon': instance.icon,
      'color': instance.color,
    };
