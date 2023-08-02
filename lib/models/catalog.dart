class catalogModel {
  static List<Item> item = [
    Item(
        id: 1,
        name: "iPhone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 999,
        color: "#33505a",
        image:
            "https://www.bakuelectronics.az/assets/images/products/92176/apple-iphone-12-pro-max-1.jpg")
  ];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  toMap() => {
        "id": id,
        "name" : name,
        "desc" : desc,
        "price" : price,
        "color" : color,
        "image" : image       
      };
}
