class ListOfGrid {
  final String? image;
  ListOfGrid({this.image});
}

List component = [
  {
    "assets/mag1.png",
  },
  {
    "assets/mag2.png",
  },
  {
    "assets/mag3.png",
  },
  {
    "assets/mag4.png",
  },
  {
    "assets/mag5.png",
  },
];

List<ListOfGrid> getlistofgrid() {
  return component
      .map(
        (item) => ListOfGrid(
          image: item["image"],
        ),
      )
      .toList();
}
