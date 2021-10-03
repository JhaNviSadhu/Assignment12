import 'package:assignment_12/constant.dart';
import 'package:assignment_12/detailpage.dart';
import 'package:assignment_12/model/model_list.dart';
import 'package:flutter/material.dart';

class Tab1 extends StatelessWidget {
  const Tab1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ModelList> listofgrid = getlist();
    return ListView.builder(
      itemCount: listofgrid.length,
      itemBuilder: (BuildContext context, int index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Card(
            elevation: 0,
            child: ListTile(
              trailing: SizedBox(
                  child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: themecolor,
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      index: "$index",
                      img: listofgrid[index].image,
                      aboutFood: listofgrid[index].subtitle ?? " ",
                      food: listofgrid[index].title ?? " ",
                      foodDesc: listofgrid[index].desc ?? " ",
                      foodPrice: listofgrid[index].price ?? 0,
                    ),
                  ),
                ),
                child: const Text("cheackout"),
              )),
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Hero(
                      tag: "$index",
                      child: Image.asset(listofgrid[index].image))),
              title: Text("${listofgrid[index].title}",
                  maxLines: 1, overflow: TextOverflow.ellipsis),
              subtitle: Text("${listofgrid[index].subtitle}",maxLines: 1, overflow: TextOverflow.ellipsis),
            ),
          ),
        );
      },
    );
  }
}
