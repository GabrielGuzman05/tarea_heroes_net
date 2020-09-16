// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mis_heroes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MisHeroesModel _$MisHeroesModelFromJson(Map<String, dynamic> json) {
  return MisHeroesModel(
    nombre: json['nombre'] as String,
    heroes: (json['heroes'] as List)
        ?.map((e) =>
            e == null ? null : HeroeModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MisHeroesModelToJson(MisHeroesModel instance) =>
    <String, dynamic>{
      'nombre': instance.nombre,
      'heroes': instance.heroes,
    };
