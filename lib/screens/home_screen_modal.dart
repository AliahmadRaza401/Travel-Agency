import 'dart:convert';

List<Cities> citiesFromMap(String str) =>
    List<Cities>.from(json.decode(str).map((x) => Cities.fromMap(x)));

String citiesToMap(List<Cities> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class Cities {
  int travelId;
  List<Category> categories;
  String title;
  String city;
  String address;
  String lat;
  String long;
  String image;
  List<String> gallery;
  String description;
  // DateTime createdAt;
  bool isFavorite;

  Cities(
      {required this.travelId,
      required this.categories,
      required this.title,
      required this.city,
      required this.address,
      required this.lat,
      required this.long,
      required this.image,
      required this.gallery,
      required this.description,
      // required this.createdAt,
      this.isFavorite = false});

  factory Cities.fromMap(Map<String, dynamic> json) => Cities(
        travelId: json["travel_id"],
        categories: List<Category>.from(
            json["categories"].map((x) => Category.fromMap(x))),
        title: json["title"],
        city: json["city"],
        address: json["address"],
        lat: json["lat"],
        long: json["long"],
        image: json["image"],
        gallery: List<String>.from(json["gallery"].map((x) => x)),
        description: json["description"],
        // createdAt: DateTime.parse(json["created_at"]),
        isFavorite: false,
      );

  Map<String, dynamic> toMap() => {
        "travel_id": travelId,
        "categories": List<dynamic>.from(categories.map((x) => x.toMap())),
        "title": title,
        "city": city,
        "address": address,
        "lat": lat,
        "long": long,
        "image": image,
        "gallery": List<dynamic>.from(gallery.map((x) => x)),
        "description": description,
        // "created_at": createdAt.toIso8601String(),
        'isFavorite': isFavorite,
      };
}

class Category {
  int categoryId;
  String title;
  String image;
  DateTime createdAt;

  Category({
    required this.categoryId,
    required this.title,
    required this.image,
    required this.createdAt,
  });

  factory Category.fromMap(Map<String, dynamic> json) => Category(
        categoryId: json["category_id"],
        title: json["title"],
        image: json["image"],
        createdAt: DateTime.parse(json["created_at"]),
      );

  Map<String, dynamic> toMap() => {
        "category_id": categoryId,
        "title": title,
        "image": image,
        "created_at": createdAt.toIso8601String(),
      };
}
