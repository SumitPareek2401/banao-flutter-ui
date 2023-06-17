class ProgramLists {
  String requestId;
  List<Item> items;
  int count;
  String anyKey;

  ProgramLists({
    required this.requestId,
    required this.items,
    required this.count,
    required this.anyKey,
  });

  factory ProgramLists.fromJson(Map<String, dynamic> json) {
    return ProgramLists(
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
  String category;
  int lesson;
  String id;
  String? userName;
  String? mobileNo;
  String? emailId;
  String? city;
  String? password;

  Item({
    required this.createdAt,
    required this.name,
    required this.category,
    required this.lesson,
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
      category: json['category'],
      lesson: json['lesson'],
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


// class ProgramModel {
//   final String id;
//   final String name;
//   final int lesson;
//   final String category;

//   ProgramModel({
//     required this.id,
//     required this.name,
//     required this.lesson,
//     required this.category,
//   });

//   factory ProgramModel.fromJson(Map<String, dynamic> json) {
//     return ProgramModel(
//       name: json['name'],
//       category: json['category'],
//       lesson: json['lesson'],
//       id: json['id'],
//     );
//   }
// }



// import 'dart:convert';

// // class ProgramList {
// //   late String requestId;
// //   late List<Items> items;
// //   late int count;
// //   late String anyKey;

// //   ProgramList({
// //     required this.requestId,
// //     required this.items,
// //     required this.count,
// //     required this.anyKey,
// //   });

// //   ProgramList.fromJson(Map<String, dynamic> json) {
// //     requestId = json['requestId'];
// //     if (json['items'] != null) {
// //       items = <Items>[];
// //       json['items'].forEach((v) {
// //         items.add(Items.fromJson(v));
// //       });
// //     }
// //     count = json['count'];
// //     anyKey = json['anyKey'];
// //   }

// //   Map<String, dynamic> toJson() {
// //     final Map<String, dynamic> data = <String, dynamic>{};
// //     data['requestId'] = requestId;
// //     data['items'] = items.map((v) => v.toJson()).toList();
// //     data['count'] = count;
// //     data['anyKey'] = anyKey;
// //     return data;
// //   }
// // }


// List<Items> userModelFromJson(String str) => List<Items>.from(json.decode(str).map((x) => Items.fromJson(x)));

// String userModelToJson(List<Items> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class Items {
//   late String createdAt;
//   late String name;
//   late String category;
//   late int lesson;
//   late String id;
//   late String userName;
//   late String mobileNo;
//   late String emailId;
//   late String city;
//   late String password;

//   Items({
//     required this.createdAt,
//     required this.name,
//     required this.category,
//     required this.lesson,
//     required this.id,
//     required this.userName,
//     required this.mobileNo,
//     required this.emailId,
//     required this.city,
//     required this.password,
//   });

//   Items.fromJson(Map<String, dynamic> json) {
//     createdAt = json['createdAt'];
//     name = json['name'];
//     category = json['category'];
//     lesson = json['lesson'];
//     id = json['id'];
//     userName = json['userName'];
//     mobileNo = json['mobileNo'];
//     emailId = json['emailId'];
//     city = json['city'];
//     password = json['password'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['createdAt'] = createdAt;
//     data['name'] = name;
//     data['category'] = category;
//     data['lesson'] = lesson;
//     data['id'] = id;
//     data['userName'] = userName;
//     data['mobileNo'] = mobileNo;
//     data['emailId'] = emailId;
//     data['city'] = city;
//     data['password'] = password;
//     return data;
//   }
// }



// // class Programs {
// //     String requestId;
// //     List<Item> items;
// //     int count;
// //     String anyKey;

// //     Programs({
// //         required this.requestId,
// //         required this.items,
// //         required this.count,
// //         required this.anyKey,
// //     });

// // }

// // class Item {
// //     DateTime createdAt;
// //     String name;
// //     String category;
// //     int lesson;
// //     String id;
// //     String? userName;
// //     String? mobileNo;
// //     String? emailId;
// //     String? city;
// //     String? password;

// //     Item({
// //         required this.createdAt,
// //         required this.name,
// //         required this.category,
// //         required this.lesson,
// //         required this.id,
// //         this.userName,
// //         this.mobileNo,
// //         this.emailId,
// //         this.city,
// //         this.password,
// //     });

// // }
