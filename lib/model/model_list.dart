class ModelList {
  final String image;
  final String? title;
  final String? subtitle;
  final String? desc;
  final int? price;
  
  ModelList(
      {this.title, this.subtitle, this.desc, this.price, required this.image});
}

List component = [
  {
    "image": "assets/mag2.png",
    "title": "Smoothie",
    "subtitle": "Cold and delicious",
    "desc":
        "Smoothies are thick, creamy beverages usually blended from puréed fruits, vegetables, juices, yogurt, nuts, seeds, and/or dairy or nondairy milk.The most basic smoothie starts with two essential ingredients — a base and a liquid. From there, you can combine ingredients to your liking.Many smoothies include frozen produce or ice cubes to give the final product the cool, icy consistency of a milkshake. However, their flavor profiles vary tremendously depending on the ingredients.",
    "price": 125,
  },
  {
    "image": "assets/mag3.png",
    "title": "Carrot",
    "subtitle": "Fresh and sweet",
    "desc":
        "The carrot (Daucus carota) is a root vegetable often claimed to be the perfect health food.It is crunchy, tasty, and highly nutritious. Carrots are a particularly good source of beta carotene, fiber, vitamin K1, potassium, and antioxidants (1Trusted Source).They also have a number of health benefits. They’re a weight-loss-friendly food and have been linked to lower cholesterol levels and improved eye health.What’s more, their carotene antioxidants have been linked to a reduced risk of cancer.Carrots are found in many colors, including yellow, white, orange, red, and purple.",
    "price": 125,
  },
  {
    "image": "assets/mag4.png",
    "title": "Cappuccino",
    "subtitle": "Cold and delicious",
    "desc":
        "A cappuccino is an espresso-based coffee drink that originated in Italy, and is prepared with steamed milk foam. Variations of the drink involve the use of cream instead of milk, using non-dairy milk substitutes and flavoring with cinnamon or chocolate powder.",
    "price": 125,
  },
  {
    "image": "assets/mag5.png",
    "title": "Salad",
    "subtitle": "Fresh and delicious",
    "desc":
        "Salad, any of a wide variety of dishes that fall into the following principal categories: green salads; vegetable salads; salads of pasta, legumes, or grains; mixed salads incorporating meat, poultry, or seafood; and fruit salads.",
    "price": 125,
  },
];

List<ModelList> getlist() {
  return component
      .map(
        (item) => ModelList(
          image: item["image"],
          title: item["title"],
          subtitle: item["subtitle"],
          desc: item["desc"],
          price: item["price"],
        ),
      )
      .toList();
}
