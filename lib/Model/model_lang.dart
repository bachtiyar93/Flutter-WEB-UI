
class ModelLangData {

  String? key;
  String? message;

  ModelLangData({
    this.key,
    this.message,
  });
  ModelLangData.fromJson(Map<String, dynamic> json) {
    key = json['key']?.toString();
    message = json['message']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['key'] = key;
    data['message'] = message;
    return data;
  }
}

class ModelLang {

  List<ModelLangData?>? data;

  ModelLang({
    this.data,
  });
  ModelLang.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      final v = json['data'];
      final arr0 = <ModelLangData>[];
      v.forEach((v) {
        arr0.add(ModelLangData.fromJson(v));
      });
      this.data = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (this.data != null) {
      final v = this.data;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['data'] = arr0;
    }
    return data;
  }
}
