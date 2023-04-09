import 'package:flutter/material.dart';

class DenemeSayfsi extends StatefulWidget {
  DenemeSayfsi({Key? key}) : super(key: key);

  @override
  State<DenemeSayfsi> createState() => _DenemeSayfsiState();
}

class _DenemeSayfsiState extends State<DenemeSayfsi> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: TabBarView(children: [
          Container(
            color: Colors.yellow,
          ),
          Container(),
        ]),
        bottomNavigationBar: const BottomAppBar(
            child: TabBar(
          tabs: [
            Text('data'),
            Text('data'),
          ],
        )),
      ),
    );
  }
}
