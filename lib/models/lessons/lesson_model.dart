class LessonLists {
  String requestId;
  List<Item> items;
  int count;
  String anyKey;

  LessonLists({
    required this.requestId,
    required this.items,
    required this.count,
    required this.anyKey,
  });

  factory LessonLists.fromJson(Map<String, dynamic> json) {
    return LessonLists(
      requestId: json['requestId'],
      items: List<Item>.from(json['items'].map((item) => Item.fromJson(item))),
      count: json['count'],
      anyKey: json['anyKey'],
    );
  }
}

class Item {
  DateTime createdAt;
  String name;
  int duration;
  String category;
  
  String id;
  String? userName;
  String? mobileNo;
  String? emailId;
  String? city;
  String? password;

  Item({
    required this.createdAt,
    required this.name,
    required this.duration,
    required this.category,
    
    required this.id,
    this.userName,
    this.mobileNo,
    this.emailId,
    this.city,
    this.password,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      createdAt: DateTime.parse(json['createdAt']),
      name: json['name'],
      duration: json['duration'],
      category: json['category'],
      
      id: json['id'],
      userName: json['userName'],
      mobileNo: json['mobileNo'],
      emailId: json['emailId'],
      city: json['city'],
      password: json['password'],
    );
  }
}

class DummyData {
  final String image;

  DummyData({
    required this.image,
  });
}