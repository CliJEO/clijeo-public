import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'query.g.dart';
part 'query.freezed.dart';

@freezed
class Query with _$Query {
  const factory Query(
      {required int id,
      required String title,
      required String content,
      required bool closed,
      required String timestamp}) = _Query;

  factory Query.fromJson(Map<String, dynamic> json) => _Query.fromJson(json);
}
