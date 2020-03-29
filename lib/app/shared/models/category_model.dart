class CategoryModel {
  int id;
  String title;
  CategoryModel({this.id, this.title});

  factory CategoryModel.fromMap(Map map) =>
      CategoryModel(id: map["id"], title: map["title"]);

  toMap() => {
        "id": id,
        "title": title,
      };
}
