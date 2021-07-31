class FakeList {
  final String image, title, condition;
  final int price;

  FakeList({
    required this.image,
    required this.title,
    required this.condition,
    required this.price,
  });
}

List<FakeList> wishList_fake = [
  FakeList(
    title:
        "Chanel Green Quilted Patent\nLeather Jumbo Classic Double Flaged Bag",
    image: "assets/images/bag_1.png",
    condition: "Like New",
    price: 1234,
  ),
  FakeList(
    title: "Chanel Green Quilted Patent\nLeather Jumbo Classic Double Flag Bag",
    image: "assets/images/bag_2.png",
    condition: "Gently Used",
    price: 1234,
  )
];
