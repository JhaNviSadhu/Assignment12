import 'package:assignment_12/constant.dart';
import 'package:assignment_12/model/model_list.dart';
import 'package:flutter/material.dart';

import '../detailpage.dart';

class Tab2 extends StatefulWidget {
  const Tab2({Key? key}) : super(key: key);

  @override
  _Tab2State createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  List<ModelList> modellist = getlist();
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: modellist.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(
                index: "$index",
                img: modellist[index].image,
                aboutFood: modellist[index].subtitle ?? " ",
                food: modellist[index].title ?? " ",
                foodDesc: modellist[index].desc ?? " ",
                foodPrice: modellist[index].price ?? 0,
              ),
            ),
          ),
          child: Card(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: GridTile(
                footer: Container(
                  height: 45,
                  color: Colors.black.withOpacity(0.5),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(modellist[index].title ?? " ",
                            style: kFont1,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis),
                        Text(modellist[index].subtitle ?? " ",
                            style: kFont1.copyWith(
                              fontSize: 12,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis),
                      ],
                    ),
                  ),
                ),
                child: Hero(
                  tag: "$index",
                  child: Image.asset(
                    modellist[index].image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        );
      },
    );
  }
}
