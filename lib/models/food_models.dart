class Userlist {
  String? idMeal;
  String? strMeal;
  String? strCategory;
  String? strMealThumb;

  Userlist({
    this.idMeal,
    this.strMeal,
    this.strCategory,
    this.strMealThumb,
  });

  Userlist.fromJson(Map<String, dynamic> json) {
    idMeal = json['idMeal'];
    strMeal = json['strMeal'];
    strCategory = json['strCategory'];
    strMealThumb = json['strMealThumb'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idMeal'] = this.idMeal;
    data['strMeal'] = this.strMeal;
    data['strCategory'] = this.strCategory;
    data['strMealThumb'] = this.strMealThumb;

    return data;
  }
}
