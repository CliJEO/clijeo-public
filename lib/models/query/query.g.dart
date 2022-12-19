// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Query _$$_QueryFromJson(Map<String, dynamic> json) => _$_Query(
      id: json['id'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
      closed: json['closed'] as bool,
      timestamp: json['timestamp'] as String,
    );

Map<String, dynamic> _$$_QueryToJson(_$_Query instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'closed': instance.closed,
      'timestamp': instance.timestamp,
    };
