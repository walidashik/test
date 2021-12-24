// To parse this JSON data, do
//
//     final restaurants = restaurantsFromJson(jsonString);

import 'dart:convert';

Restaurants restaurantsFromJson(String str) => Restaurants.fromJson(json.decode(str));

class Restaurants {
  Restaurants({
    required this.restaurants,
    required this.tags,
    required this.pagination,
  });

  List<Restaurant>? restaurants;
  List<Tag>? tags;
  Pagination? pagination;

  factory Restaurants.fromJson(Map<String, dynamic> json) => Restaurants(
    restaurants: json["restaurants"] == null ? null : List<Restaurant>.from(json["restaurants"].map((x) => Restaurant.fromJson(x))),
    tags: json["tags"] == null ? null : List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))),
    pagination: json["pagination"] == null ? null : Pagination.fromJson(json["pagination"]),
  );
}

class Pagination {
  Pagination({
    required this.total,
    required this.count,
    required this.perPage,
    required this.currentPage,
    required this.totalPages,
    required this.prev,
    required this.next,
    required this.first,
    required this.last,
    required this.morePage,
  });

  int total;
  int count;
  int perPage;
  int currentPage;
  int totalPages;
  int prev;
  int next;
  int first;
  int last;
  bool morePage;

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
    total: json["total"],
    count: json["count"],
    perPage: json["per_page"],
    currentPage: json["current_page"],
    totalPages: json["total_pages"],
    prev: json["prev"],
    next: json["next"],
    first: json["first"],
    last: json["last"],
    morePage: json["more_page"],
  );

  Map<String, dynamic> toJson() => {
    "total": total,
    "count": count,
    "per_page": perPage,
    "current_page": currentPage,
    "total_pages": totalPages,
    "prev": prev,
    "next": next,
    "first": first,
    "last": last,
    "more_page": morePage,
  };
}

class Restaurant {
  Restaurant({
    required this.id,
    required this.name,
    required this.slug,
    required this.logo,
    required this.pickup,
    required this.delivery,
    required this.details,
    required this.description,
    required this.managerName,
    required this.managerGender,
    required this.managerTelefon,
    required this.telefon,
    required this.email,
    required this.formattedAddress,
    required this.street,
    required this.streetNumber,
    required this.lat,
    required this.lng,
    required this.city,
    required this.addressId,
    required this.postalCode,
    required this.isAvailable,
    required this.isTest,
    required this.distance,
    required this.isDelivered,
    required this.deliveryArea,
    required this.formattedOpeningHours,
    required this.tags,
    required this.categories,
  });

  int id;
  String name;
  String slug;
  String logo;
  int pickup;
  int delivery;
  String details;
  String description;
  String managerName;
  String managerGender;
  int managerTelefon;
  int telefon;
  String email;
  String formattedAddress;
  String street;
  String streetNumber;
  String lat;
  String lng;
  String city;
  String addressId;
  int postalCode;
  int isAvailable;
  int isTest;
  double distance;
  bool isDelivered;
  DeliveryArea? deliveryArea;
  FormattedOpeningHours? formattedOpeningHours;
  String tags;
  List<Category>? categories;

  factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
    id: json["id"],
    name: json["name"],
    slug: json["slug"],
    logo: json["logo"],
    pickup: json["pickup"],
    delivery: json["delivery"],
    details: json["details"],
    description: json["description"],
    managerName: json["manager_name"],
    managerGender: json["manager_gender"],
    managerTelefon: json["manager_telefon"],
    telefon: json["telefon"],
    email: json["email"],
    formattedAddress: json["formatted_address"],
    street: json["street"],
    streetNumber: json["street_number"],
    lat: json["lat"],
    lng: json["lng"],
    city: json["city"],
    addressId: json["address_id"],
    postalCode: json["postal_code"],
    isAvailable: json["is_available"],
    isTest: json["is_test"],
    distance: json["distance"] == null ? 0.0 : json["distance"].toDouble(),
    isDelivered: json["is_delivered"],
    deliveryArea: json["delivery_area"] == null ? null : DeliveryArea.fromJson(json["delivery_area"]),
    formattedOpeningHours: json["formatted_opening_hours"] == null ? null : FormattedOpeningHours.fromJson(json["formatted_opening_hours"]),
    tags: json["tags"],
    categories: json["categories"] == null ? null : List<Category>.from(json["categories"].map((x) => Category.fromJson(x))),
  );
}

class Category {
  Category({
    required this.id,
    required this.parentId,
    required this.restId,
    required this.code,
    required this.name,
    required this.slug,
    required this.description,
    required this.details,
    required this.metaTitle,
    required this.metaDescription,
    required this.googleProductCategoryId,
    required this.sortOrder,
    required this.createdAt,
    required this.updatedAt,
    required this.foods,
  });

  int id;
  int parentId;
  int restId;
  String code;
  String name;
  String slug;
  String description;
  String details;
  String metaTitle;
  String metaDescription;
  dynamic googleProductCategoryId;
  int sortOrder;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<Food>? foods;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: json["id"],
    parentId: json["parent_id"],
    restId: json["rest_id"],
    code: json["code"],
    name: json["name"],
    slug: json["slug"],
    description: json["description"],
    details: json["details"],
    metaTitle: json["meta_title"],
    metaDescription: json["meta_description"],
    googleProductCategoryId: json["google_product_category_id"],
    sortOrder: json["sort_order"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    foods: json["foods"] == null ? null : List<Food>.from(json["foods"].map((x) => Food.fromJson(x))),
  );
}

class Food {
  Food({
    required this.id,
    required this.sortOrder,
    required this.restId,
    required this.categoryId,
    required this.name,
    required this.descripton,
    required this.details,
    required this.price,
    required this.isEnabled,
    required this.isSpecial,
    required this.foodNumber,
    required this.minOrder,
    required this.createdAt,
    required this.updatedAt,
    required this.priceFull,
  });

  int id;
  int sortOrder;
  int restId;
  int categoryId;
  String name;
  String descripton;
  String details;
  List<Price>? price;
  int isEnabled;
  int isSpecial;
  String foodNumber;
  int minOrder;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<Price>? priceFull;

  factory Food.fromJson(Map<String, dynamic> json) => Food(
    id: json["id"],
    sortOrder: json["sort_order"],
    restId: json["rest_id"],
    categoryId: json["category_id"],
    name: json["name"],
    descripton: json["descripton"],
    details: json["details"],
    price: json["price"] == null ? null : List<Price>.from(json["price"].map((x) => Price.fromJson(x))),
    isEnabled: json["is_enabled"],
    isSpecial: json["is_special"],
    foodNumber: json["food_number"],
    minOrder: json["min_order"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    priceFull: json["price_full"] == null ? null : List<Price>.from(json["price_full"].map((x) => Price.fromJson(x))),
  );
}

class Price {
  Price({
    required this.name,
    required this.price,
    required this.isExtra,
    required this.extras,
    required this.id,
  });

  String name;
  int price;
  String isExtra;
  List<Extra>? extras;
  String id;

  factory Price.fromJson(Map<String, dynamic> json) => Price(
    name: json["name"],
    price: json["price"],
    isExtra: json["is_extra"],
    extras: json["extras"] == null ? null : List<Extra>.from(json["extras"].map((x) => Extra.fromJson(x))),
    id: json["id"],
  );
}

class Extra {
  Extra({
    required this.name,
    required this.type,
    required this.required,
    required this.minSelect,
    required this.maxSelect,
    required this.items,
    required this.id,
  });

  String name;
  String type;
  String required;
  int minSelect;
  int maxSelect;
  List<Item>? items;
  String id;

  factory Extra.fromJson(Map<String, dynamic> json) => Extra(
    name: json["name"],
    type: json["type"],
    required: json["required"],
    minSelect: json["min_select"],
    maxSelect: json["max_select"],
    items: json["items"] == null ? null : List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
    id: json["id"],
  );
}

class Item {
  Item({
    required this.extraName,
    required this.price,
    required this.id,
    required this.name,
  });

  String extraName;
  int price;
  String id;
  String name;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    extraName: json["extra_name"],
    price: json["price"],
    id: json["id"],
    name: json["name"],
  );

}

class DeliveryArea {
  DeliveryArea({
    required this.id,
    required this.restId,
    required this.type,
    required this.postalCode,
    required this.radius,
    required this.postalId,
    required this.minOrder,
    required this.deliveryPrice,
    required this.deliveryTime,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  int restId;
  String type;
  String postalCode;
  dynamic radius;
  String postalId;
  int minOrder;
  double deliveryPrice;
  int deliveryTime;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory DeliveryArea.fromJson(Map<String, dynamic> json) => DeliveryArea(
    id: json["id"],
    restId: json["rest_id"],
    type: json["type"],
    postalCode: json["postal_code"],
    radius: json["radius"],
    postalId: json["postal_id"],
    minOrder: json["min_order"],
    deliveryPrice: json["delivery_price"] == null ? 0.0 : json["delivery_price"].toDouble(),
    deliveryTime: json["delivery_time"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "rest_id": restId,
    "type": type,
    "postal_code": postalCode,
    "radius": radius,
    "postal_id": postalId,
    "min_order": minOrder,
    "delivery_price": deliveryPrice,
    "delivery_time": deliveryTime,
    "created_at": createdAt == null ? DateTime.now() : createdAt?.toIso8601String(),
    "updated_at": updatedAt == null ? DateTime.now()  : updatedAt?.toIso8601String(),
  };
}

class FormattedOpeningHours {
  FormattedOpeningHours({
    required this.forWeek,
    required this.isOpen,
    required this.isOpenString,
    required this.nextOpen,
    required this.nextClose,
    required this.openFrom,
    required this.formattedOpeningHoursClass,
  });

  List<ForWeek>? forWeek;
  bool isOpen;
  String isOpenString;
  String nextOpen;
  String nextClose;
  String openFrom;
  String formattedOpeningHoursClass;

  factory FormattedOpeningHours.fromJson(Map<String, dynamic> json) => FormattedOpeningHours(
    forWeek: json["forWeek"] == null ? null : List<ForWeek>.from(json["forWeek"].map((x) => ForWeek.fromJson(x))),
    isOpen: json["isOpen"],
    isOpenString: json["isOpenString"],
    nextOpen: json["nextOpen"],
    nextClose: json["nextClose"],
    openFrom: json["open_from"],
    formattedOpeningHoursClass: json["class"],
  );

}

class ForWeek {
  ForWeek({
    required this.day,
    required this.isOpen,
    required this.timings,
  });

  String day;
  int isOpen;
  List<Timing>? timings;

  factory ForWeek.fromJson(Map<String, dynamic> json) => ForWeek(
    day: json["day"],
    isOpen: json["is_open"],
    timings: json["timings"] == null ? null : List<Timing>.from(json["timings"].map((x) => Timing.fromJson(x))),
  );
}

class Timing {
  Timing({
    required this.start,
    required this.end,
    required this.startDateTime,
    required this.endDateTime,
  });

  String start;
  String end;
  String startDateTime;
  String endDateTime;

  factory Timing.fromJson(Map<String, dynamic> json) => Timing(
    start: json["start"],
    end: json["end"],
    startDateTime: json["start_date_time"],
    endDateTime: json["end_date_time"],
  );

  Map<String, dynamic> toJson() => {
    "start": start,
    "end": end,
    "start_date_time": startDateTime,
    "end_date_time": endDateTime,
  };
}

class Tag {
  Tag({
    required this.name,
    required this.id,
  });

  String name;
  int id;

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
    name: json["name"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "id": id,
  };
}
