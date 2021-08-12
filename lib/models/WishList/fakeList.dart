class FakeList {
  final String image, title, condition;
  final String name;
  final String type, size;
  final int price;

  FakeList({
    required this.image,
    required this.title,
    required this.condition,
    required this.price,
    required this.size,
    required this.name,
    required this.type,
  });
}

List<FakeList> wishListfake = [
  FakeList(
    title:
        "Chanel Green Quilted Patent\nLeather Jumbo Classic Double Flaged Bag",
    image: "assets/images/bag_1.png",
    condition: "Like New",
    price: 1234,
    name: "Fendi",
    size: "37",
    type: "Returnable item",
  ),
  FakeList(
    title:
        "Chanel Green Quilted Patent\nLeather Jumbo Classic Double Flaged Bag",
    image: "assets/images/bag_2.png",
    condition: "Like New",
    price: 1234,
    name: "Fendi",
    size: "",
    type: "Returnable item",
  ),
];

List<FakeList> fakeCart = [
  FakeList(
    title:
        "Chanel Green Quilted Patent\nLeather Jumbo Classic Double Flaged Bag",
    image: "assets/images/bag_1.png",
    condition: "Like New",
    price: 1234,
    name: "Fendi",
    size: "",
    type: "Returnable item",
  ),
  FakeList(
    title: "Chanel Green Quilted Patent\nLeather Jumbo Classic Double Flag Bag",
    image: "assets/images/bag_2.png",
    condition: "Gently Used",
    price: 1234,
    name: "Fendi",
    size: "40",
    type: "Returnable item",
  ),
];
