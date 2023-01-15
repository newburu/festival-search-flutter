import 'dart:convert';

class Content {
  final int id;
  final String name;
  final String kind;
  final String path;
  final String key;
  final String detail;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String url;

  Content({
    required this.id,
    required this.name,
    required this.kind,
    required this.path,
    required this.key,
    required this.detail,
    required this.createdAt,
    required this.updatedAt,
    required this.url,
  });

  factory Content.fromJson(Map<String, dynamic> json) => Content(
        id: json["id"],
        name: json["name"],
        kind: json["kind"],
        path: json["path"],
        key: json["key"],
        detail: json["detail"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "kind": kind,
        "path": path,
        "key": key,
        "detail": detail,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "url": url,
      };
}

Content contentModelFromJson(String str) => Content.fromJson(json.decode(str));

String contentModelToJson(Content content) => json.encode(content.toJson());
