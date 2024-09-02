import 'package:flutter/material.dart';
import 'package:them_by_bloc_flutter/stteng_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: IconButton(
            color: Colors.grey,
            iconSize: 70,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SttengPage(),
              ));
            },
            icon: Icon(Icons.color_lens)),
      ),
    );
  }
}
