class ObjectEntity {
  String? id;

  ObjectEntity({this.id});

  ObjectEntity.fromJson(Map<String, dynamic> json) {
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    return data;
  }

  List<ObjectEntity> fromJsonList(List<Map<String, dynamic>> list) {
    return list.map((item) => ObjectEntity.fromJson(item)).toList();
  }
}
