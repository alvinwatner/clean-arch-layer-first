// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part '{{model.snakeCase()}}_response.g.dart';

@JsonSerializable(
  explicitToJson: true,
)
class {{model.pascalCase()}}Response extends Equatable {
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final dynamic data;

  const {{model.pascalCase()}}Response({
    this.message,
    this.data,
  });

  static {{model.pascalCase()}}Response fromJson(Map<String, dynamic> json) =>
      _${{model.pascalCase()}}ResponseFromJson(json);

  Map<String?, dynamic> toJson() => _${{model.pascalCase()}}ResponseToJson(this);

  @override
  List<Object?> get props => [
        message,
        data,
      ];

  @override
  String toString() {
    return '{{model.pascalCase()}}Response{message: $message, data: $data}';
  }
}