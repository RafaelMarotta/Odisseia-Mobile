// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'QuestaoPaginationDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestaoPaginationDTO _$QuestaoPaginationDTOFromJson(Map<String, dynamic> json) {
  return QuestaoPaginationDTO(
    items: (json['items'] as List)
        ?.map((e) =>
            e == null ? null : QuestaoDTO.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    hasNextPage: json['hasNextPage'] as bool,
    hasPreviousPage: json['hasPreviousPage'] as bool,
  );
}

Map<String, dynamic> _$QuestaoPaginationDTOToJson(
        QuestaoPaginationDTO instance) =>
    <String, dynamic>{
      'hasNextPage': instance.hasNextPage,
      'hasPreviousPage': instance.hasPreviousPage,
      'items': instance.items,
    };
