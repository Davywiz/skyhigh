import 'dart:convert';

class SentRequest {
  final String angularDeveloper;
  const SentRequest() : angularDeveloper = 'angular-developer';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'angular_test': angularDeveloper,
    };
  }

  factory SentRequest.fromMap(Map<String, dynamic> map) {
    return const SentRequest();
  }

  String toJson() => json.encode(toMap());

  factory SentRequest.fromJson(String source) =>
      SentRequest.fromMap(json.decode(source) as Map<String, dynamic>);
}
