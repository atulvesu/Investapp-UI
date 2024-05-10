class DataModel {
  final String image;
  final String time;
  final String text2;
  final String text;

  DataModel(
      {required this.image,
      required this.text,
      required this.time,
      required this.text2});

  static List<DataModel> DummyData = [
    DataModel(
        image: "images/Rectangle 57.png",
        text: "Apple stocks just increased",
        text2: "check it out now",
        time: "15min ago"),
    DataModel(
        image: "images/Rectangle 58.png",
        text: "Check out today's best inves-",
        text2: "tor it out now",
        time: "3min ago"),
    DataModel(
        image: "images/Rectangle 59.png",
        text: "Where do you see yourself ",
        text2: "in the next ages",
        time: "30secs ago"),
  ];
}
