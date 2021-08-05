class CatalogModel {
  static final products = [
    Item(
        id: 1,
        name: "OPPO",
        desc: "A1K",
        price: 18000,
        color: "#00ac51",
        image:
            "https://www.thesprucepets.com/thmb/UCGjJ5v6HgPJJ7OOtS5J3ijUBZ8=/1080x1350/filters:fill(auto,1)/35493166_2113126082300521_5592447779063463936_n-5b69b61946e0fb002562c234.jpg")
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
}
