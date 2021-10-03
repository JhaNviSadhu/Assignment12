import 'package:assignment_12/model/model_list.dart';
import 'package:flutter/material.dart';

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
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: modellist.length),
      itemBuilder: (context, index) {
        return Container();
      },
    );
  }
}
