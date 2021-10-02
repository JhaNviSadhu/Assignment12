import 'package:flutter/material.dart';

class MybottomNavigationBar extends StatefulWidget {
  const MybottomNavigationBar({Key? key}) : super(key: key);

  @override
  _MybottomNavigationBarState createState() => _MybottomNavigationBarState();
}

class _MybottomNavigationBarState extends State<MybottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text("Bottamnavigation"),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) { 
          return 
         },
       
      ),
    );
  }
}
