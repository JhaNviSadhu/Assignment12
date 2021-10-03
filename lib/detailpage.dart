import 'package:assignment_12/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailPage extends StatefulWidget {
  final String index;
  final String img;
  final String food;
  final String aboutFood;
  final String foodDesc;
  final int foodPrice;
  const DetailPage(
      {Key? key,
      required this.index,
      required this.img,
      required this.food,
      required this.aboutFood,
      required this.foodDesc,
      required this.foodPrice})
      : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: Hero(
                  tag: widget.index,
                  child: Image.asset(
                    widget.img,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.food,
                      style: kFont,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      widget.aboutFood,
                      style: kFont.copyWith(
                          fontWeight: FontWeight.normal, fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    Text(widget.foodDesc),
                    const SizedBox(height: 10),
                    Text("Price : ${widget.foodPrice.toString()}"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
